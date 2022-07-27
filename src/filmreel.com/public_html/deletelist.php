<?php
require_once 'header.php';

$conf = $_POST['delete'];
$con = get_connection();
if ($conf) {
    unset($_POST['delete']);
    $l_id = $_POST['lid'];
    $dList = $con->prepare("DELETE FROM List WHERE list_id =?");
    $dList->bind_param('i', $l_id);
    if ($dList->execute()) {
        header("Location: userpage.php");
    }
}
?>
