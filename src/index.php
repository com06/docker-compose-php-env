<?php
$host = 'db:3306';
$user = 'your_user';
$pass = 'your_password';
 
$conn = new mysqli($host, $user, $pass);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected to MySQL server successfully!";
}
?>