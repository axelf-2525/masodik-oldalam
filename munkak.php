<?php
include('db.php');
include('header.php');

// Lekérdezzük a munkákat
$sql = "SELECT * FROM munkak";
$result = $conn->query($sql);

echo "<h1>Munkák</h1>";
echo "<table>";
echo "<tr><th>Munkakör</th><th>Oradij</th><th>Oraszam</th></tr>";
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["allas"] . "</td><td>" . $row["oradij"] . "</td><td>" . $row["oraszam"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "Nincsenek adatok";
}

include('footer.php');
?>
