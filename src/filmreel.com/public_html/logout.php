<?php
include_once 'header.php';
session_unset();
session_destroy();
$loggedin = false;
header("Location: login.php");

?>
