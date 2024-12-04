<?php
include('db.php');

// Ha az űrlap be van küldve
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $allas = $_POST['allas'];
    $oradij = $_POST['oradij'];
    $oraszam = $_POST['oraszam'];

    // Adat beszúrása a munkak táblába
    $sql = "INSERT INTO munkak (allas, oradij, oraszam) VALUES ('$allas', '$oradij', '$oraszam')";
    
    if ($conn->query($sql) === TRUE) {
        echo "Új munka hozzáadva!";
    } else {
        echo "Hiba: " . $conn->error;
    }
}
?>

<!-- HTML űrlap munka hozzáadásához -->
<form method="POST" action="munkak_add.php">
    <label for="allas">Munkakör:</label>
    <input type="text" id="allas" name="allas" required><br>
    
    <label for="oradij">Óradíj:</label>
    <input type="number" step="0.01" id="oradij" name="oradij" required><br>
    
    <label for="oraszam">Órák száma:</label>
    <input type="number" id="oraszam" name="oraszam" required><br>
    
    <button type="submit">Hozzáadás</button>
</form>
