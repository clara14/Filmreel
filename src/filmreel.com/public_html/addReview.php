<?php
require_once 'header.php';
    

if (isset($_POST['Submit'])) {
    unset($_POST['Submit']);
    $db = get_connection();
    $fid = $_POST['fid'];
    $rtitle = $_POST['title'];
    $rscore = $_POST['score'];
    $rdesc = $_POST['description'];
    $validation = $db->prepare("select * from Review where account_id=? and film_id=?");
    if (!$validation) {
        echo "Error getting result: " . mysqli_error($db);
        header("Location: login.php");
        die();
    }
    $validation->bind_param('ii', $userid, $fid);
    if ($validation->execute()) {

        $result_count = 0;

        while ($validation->fetch()) {
            $result_count++;
        }
        if ($result_count > 0) {
            $_SESSION["error"] = "Error: User has already submitted a review for this film";
            header("Location: film.php?id=$fid");
        } else {
            $insert = $db->prepare("call insert_review(?,?,?,?,?)");
            $insert->bind_param('iisis', $userid, $fid, $rtitle, $rscore, $rdesc);
            if ($insert->execute()) {
                echo "Review added!";
                header("Location: film.php?id=$fid");
            } else {
                echo "Error getting result: " . mysqli_error($db);
                header("Location: register.php");
                die();
            }
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
