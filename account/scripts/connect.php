<?php
// for live server
$servername = "localhost";
$username = "u379044712_omo";
$password = "Helltocity.1/seagone";
$dbname = "u379044712_omo";

// for test
// $servername = "localhost";
// $username = "u379044712_omo";
// $password = "&e0$p94:S";
// $dbname = "u379044712_omo";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {

  die("Connection failed: " . $conn->connect_error);

}


?>