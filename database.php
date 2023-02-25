<?php

$hostName = "localhost";
$dbUser = "root";
$dbPassword = "";
$dbName = "psb-akp";
$conn = mysqli_connect($hostName, $dbUser, $dbPassword, $dbName);
if (!$conn) {
    die("Something went wrong;");
}

?>