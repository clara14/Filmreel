<?php
require_once 'header.php';
    

if (isset($_POST['Add'])) {
    unset($_POST['Add']);
    $db = get_connection();
    $fid = $_POST['fid'];
    $lid = $_POST['lid'];
    $url = $_POST['url'];
    $validation = $db->prepare("select li.film_id from List_Items li INNER JOIN List l ON li.list_id = l.list_id where l.list_id=? and li.film_id=?");
    if (!$validation) {
        echo "Error getting result: " . mysqli_error($db);
        header("Location: login.php");
        die();
    }
    $validation->bind_param('ii', $lid, $fid);
    if ($validation->execute()) {

        $result_count = 0;

        while ($validation->fetch()) {
            $result_count++;
        }
        if ($result_count == 0) {
            $add = $db->prepare("INSERT INTO List_Items(list_id,film_id) VALUES ($lid,$fid)");
            if ($add->execute()) {
                echo "Film added to list!";
                header("Location: $url");
            } else {
                echo "Error getting result: " . mysqli_error($db);
                header("Location: register.php");
                die();
            }

        } else {
            $_SESSION["error"] = "Error: Film already in this list";
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
