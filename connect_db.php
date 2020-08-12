<?php
$db_servername = "localhost";
$db_username = "root";
$db_password = "";

try {
    $conn = new PDO("mysql:host=$db_servername;dbname=zentao", $db_username, $db_password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
