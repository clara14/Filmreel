<?php
require_once 'header.php';
    

if (isset($_POST['Remove'])) {
    unset($_POST['Remove']);
    $db = get_connection();
    $rid = $_POST['rid'];
    $url = $_POST['url'];
    $validation = $db->prepare("select * from Review where review_id=?");
    if (!$validation) {
        echo "Error getting result: " . mysqli_error($db);
        header("Location: login.php");
        die();
    }
    $validation->bind_param('i', $rid);
    if ($validation->execute()) {

        $result_count = 0;

        while ($validation->fetch()) {
            $result_count++;
        }
        if ($result_count == 1) {
            $remove = $db->prepare("call remove_review(?)");
            $remove->bind_param('i', $rid);
            if ($remove->execute()) {
                echo "Review review removed!";
                header("Location: $url");
            } else {
                echo "Error getting result: " . mysqli_error($db);
                header("Location: register.php");
                die();
            }

        } else {
            $_SESSION["error"] = "Error: Review for this film does not exist";
            header("Location: $url");
        }
    } else {
        echo "Error getting result: " . mysqli_error($db);
        header("Location: register.php");
        die();
    }
} else {
    echo "Error executing query: " . mysqli_error($db);
    header("Location: index.php");
    die();
}


include_once 'footer.php';

?>
