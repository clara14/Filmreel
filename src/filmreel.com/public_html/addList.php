<?php
require_once 'header.php';
    

if (isset($_POST['Submit'])) {
    unset($_POST['Submit']);
    $db = get_connection();
    $ltitle = $_POST['listname'];
    $validation = $db->prepare("select * from List where account_id=? and list_title=?");
    if (!$validation) {
        echo "Error getting result: " . mysqli_error($db);
        header("Location: login.php");
        die();
    }
    $validation->bind_param('is', $userid, $ltitle);
    if ($validation->execute()) {

        $result_count = 0;

        while ($validation->fetch()) {
            $result_count++;
        }
        if ($result_count > 0) {
            $_SESSION["error"] = "Error: User has already created a list with this title";
            header("Location: myaccount.php");
        } else {
            $insert = $db->prepare("INSERT INTO List(account_id, list_title) VALUES (?, ?)");
            $insert->bind_param('is', $userid, $ltitle);
            if ($insert->execute()) {
                echo "List added!";
                header("Location: myaccount.php");
            } else {
                echo "Error getting result: " . mysqli_error($db);
                die();
            }
        }
    } else {
        echo "Error getting result: " . mysqli_error($db);
        die();
    }
} else {
    echo "Error executing query: " . mysqli_error($db);
    die();
}


include_once 'footer.php';

?>
