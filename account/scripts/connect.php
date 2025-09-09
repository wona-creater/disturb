<?php
// for live server ommit then save


// for test
// $servername = "localhost";
// $username = "root";
// $password = "";
// $dbname = "news";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {

  die("Connection failed: " . $conn->connect_error);

}


?>