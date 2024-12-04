<?php
include('db.php');

// Ha az űrlap be van küldve
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nev = $_POST['nev'];
    $szulido = $_POST['szulido'];

    // Prepared statement
    $stmt = $conn->prepare("INSERT INTO diak (nev, szulido) VALUES (?, ?)");
    $stmt->bind_param("ss", $nev, $szulido);

    if ($stmt->execute()) {
        echo "Új diák hozzáadva!";
    } else {
        echo "Hiba: " . $stmt->error;
    }

    $stmt->close();
}
?>
