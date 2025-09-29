<?php
$host = "localhost";
$user = "root";       // default ของ XAMPP
$pass = "";           // default ไม่มีรหัส
$dbname = "TOP_GAMES";

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}

header("Content-Type: application/json; charset=UTF-8");
?>
