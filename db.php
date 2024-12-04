<?php
$servername = "localhost";
$username = "root";  // Változtasd meg a megfelelő felhasználói névre
$password = "";  // Változtasd meg a megfelelő jelszóra
$dbname = "beadando";  // A te adatbázisod neve

// Kapcsolódás az adatbázishoz
$conn = new mysqli($servername, $username, $password, $dbname);

// Kapcsolódás ellenőrzése
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Az UTF-8 karakterkódolás beállítása
$conn->set_charset("utf8mb4");

?>
