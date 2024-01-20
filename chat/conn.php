<?php
$servername = "localhost";
$dbName = "chat";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbName);

// Check connection
if ($conn->connect_error) {
echo "Dont Connected";
}
ob_start();
session_start();

?>