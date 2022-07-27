<?php

date_default_timezone_set('America/Los_Angeles');
error_reporting(E_ALL);
ini_set("log_errors", 1);
ini_set("display_error", 1);

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (isset($_SESSION["error"])) {
    echo $_SESSION["error"];
    unset($_SESSION["error"]);
    die();
}

echo <<<_INIT
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Filmreel: Movie Tracker</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
	<style>
		html { font-family: 'Roboto Slab', serif; }
		body { font-family: 'Roboto Slab', serif; }
	</style>
</head>
    
_INIT;

require_once 'functions.php';

$user = 'Guest';
$admin = false;

if (isset($_SESSION['user'])) {
    $user = $_SESSION['user'];
    $userid = $_SESSION['user_id'];
    $loggedin = true;
    if (isset($_SESSION['isAdmin']))
        $admin = true;
} else
    $loggedin = false;

echo <<<_NAV
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #000000">
    <div class="container">
        <a class="navbar-brand" href="index.php">Filmreel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto text-white">
                <li class="nav-item d-flex">
                <form method="get" action="search.php">
                  <div class="collapse fade" id="searchForm">
                    <input name="search" type="text" class="form-control border-0 bg-light" placeholder="search" />
                  </div>
                </form>
                  <a class="nav-link ml-auto" href="#searchForm" data-target="#searchForm" data-toggle="collapse">
                    <i class="mdi mdi-magnify"></i>
                  </a>
                </li>
_NAV;

if ($loggedin) {
    if (!$_SESSION['isAdmin']) {
        
echo <<<_USERIN
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Hi $user!</a>
    <div class="dropdown-menu">
      <a class="dropdown-header" href="#">$user</a>
      <a class="dropdown-item" href="myaccount.php">My Account</a>
      <a class="dropdown-item" href="#"></a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="logout.php">Log Out</a>
    </div>
</li>

_USERIN;
    } else {

echo <<<_ADMINN
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">ADMIN</a>
    <div class="dropdown-menu">
      <a class="dropdown-header" href="#">Account </a>
      <a class="dropdown-item" href="admin.php">Administrator Portal</a>
      <a class="dropdown-item" href="#"></a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="logout.php">Log Out</a>
    </div>
</li>

_ADMINN;
    
    }

} else {
echo <<<_GUEST
          <li class="nav-item">
            <a class="nav-link" href="login.php">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="register.php">Register</a>
          </li>
  
_GUEST;

}

?>

            </ul>
        </div>
    </div>
</nav>

