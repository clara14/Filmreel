<?php
require_once 'header.php';
$con = get_connection();
$listInfo = $con->prepare("SELECT * FROM List WHERE account_id=?");
$listInfo->bind_param('i', $userid);
if (!$listInfo) {
    echo "Query error: query returns empty set" . mysqli_error($con);
    die();
}
if ($listInfo->execute()) {
    if (mysqli_stmt_bind_result($listInfo, $lid, $acid, $ltitle)) {
        $listInfo->store_result();
    } else {
        echo "Error binding results: " . mysqli_error($con);
    }
} else {
    echo "Query error: error executing query: ";
    die();
}
?>
