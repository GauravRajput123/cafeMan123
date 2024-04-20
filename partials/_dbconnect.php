<?php
$host = "localhost";
$port = "5432"; 
$dbname = "opd";
$user = "postgres"; 
$password = "tybcs"; 

$connection_string = "host={$host} port={$port} dbname={$dbname} user={$user} password={$password}";

$conn = pg_connect($connection_string);

if (!$conn) {
    die("Error: Could not connect to the database.");
}

?>

