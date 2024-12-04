<?php
include('db.php');

// Ha az űrlap be van küldve
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $munkahely_nev = $_POST['munkahely_nev'];
    $helyszin = $_POST['helyszin'];
    $kapacitas = $_POST['kapacitas'];

    // Adat beszúrása a munkahelyek táblába
    $sql = "INSERT INTO munkahelyek (munkahely_nev, helyszin, kapacitas) VALUES ('$munkahely_nev', '$helyszin', '$kapacitas')";
    
    if ($conn->query($sql) === TRUE) {
        echo "Új munkahely hozzáadva!";
    } else {
        echo "Hiba: " . $conn->error;
    }
}
?>

<!-- HTML űrlap munkahely hozzáadásához -->
<form method="POST" action="munkahelyek_add.php">
    <label for="munkahely_nev">Munkahely neve:</label>
    <input type="text" id="munkahely_nev" name="munkahely_nev" required><br>
    
    <label for="helyszin">Helyszín:</label>
    <input type="text" id="helyszin" name="helyszin" required><br>
    
    <label for="kapacitas">Kapacitás:</label>
    <input type="number" id="kapacitas" name="kapacitas" required><br>
    
    <button type="submit">Hozzáadás</button>
</form>
