<?php
$server="localhost";
$user ="root";
$password=" ";
$nama_database= "psb-akp";

$db = mysqli_connect($server,$user,$password,$nama_database);

if(!$db){
    die("Gagal:".mysqli_connect_error());   
}
?>