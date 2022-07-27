<?php
$dbhost = 'localhost';
$dbname = 'filmreel';
$dbuser = 'root';
$dbpass = 'JeLoCe2713!';

function get_connection() {

    static $connection;

    if (!isset($connection)) { 
        $connection = mysqli_connect('localhost','root','JeLoCe2713!','filmreel') or die(mysqli_connect_error());
    }
    if ($connection === false) {
        echo "Unable to connect to database<br>";
        echo mysqli_connect_error();
    }

    return $connection;
}



?>
