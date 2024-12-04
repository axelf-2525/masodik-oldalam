<html>
<head>
    <style>
        /* Stílus a regisztrációs panelhez */
        #register {
            width: 300px; /* Form szélesség */
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            position: fixed;
            right: 20px; /* Jobb oldalra igazítva */
            top: 100px;  /* A felső margó */
        }

        #register header {
            text-align: center;
            font-size: 18px;
        }

        #register input[type="text"], #register input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
        }

        #register input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        #register input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
</html>

<?php
// DB kapcsolat
require_once 'db.php';

// A téma bemutatása
echo "<h1>Téma bemutatása</h1>";
echo "<p>Ez az oldal bemutatja a projekt témáját...</p>";
?>



<!-- HTML formához való hozzárendelés -->
<form action="index.php" method="POST">
    <label for="munkahely_nev">Munkahely neve:</label>
    <input type="text" id="munkahely_nev" name="munkahely_nev" value="<?php echo htmlspecialchars($munkahely_nev); ?>">

    <label for="helyszin">Helyszín:</label>
    <input type="text" id="helyszin" name="helyszin" value="<?php echo htmlspecialchars($helyszin); ?>">

    <label for="kapacitas">Kapacitás:</label>
    <input type="text" id="kapacitas" name="kapacitas" value="<?php echo htmlspecialchars($kapacitas); ?>">

    <input type="submit" value="Mentés">
</form>
<?php
include('db.php');  // Az adatbázis kapcsolat

// Diákok lekérdezése
$diak_sql = "SELECT * FROM diak";
$diak_result = $conn->query($diak_sql);

// Munkák lekérdezése
$munkak_sql = "SELECT * FROM munkak";
$munkak_result = $conn->query($munkak_sql);

// Munkahelyek lekérdezése
$munkahelyek_sql = "SELECT * FROM munkahelyek";
$munkahelyek_result = $conn->query($munkahelyek_sql);

include('header.php');  // Fejléc

// Diákok megjelenítése
echo "<h1>Diákok</h1>";
echo "<table>";
echo "<tr><th>Név</th><th>Születési dátum</th></tr>";
if ($diak_result->num_rows > 0) {
    while($row = $diak_result->fetch_assoc()) {
        echo "<tr><td>" . $row["nev"] . "</td><td>" . $row["szulido"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "Nincsenek diákok";
}

// Munkák megjelenítése
echo "<h1>Munkák</h1>";
echo "<table>";
echo "<tr><th>Munkakör</th><th>Oradij</th><th>Oraszam</th></tr>";
if ($munkak_result->num_rows > 0) {
    while($row = $munkak_result->fetch_assoc()) {
        echo "<tr><td>" . $row["allas"] . "</td><td>" . $row["oradij"] . "</td><td>" . $row["oraszam"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "Nincsenek munkák";
}

// Munkahelyek megjelenítése
echo "<h1>Munkahelyek</h1>";
echo "<table>";
echo "<tr><th>Munkahely</th><th>Helyszín</th><th>Kapacitás</th></tr>";
if ($munkahelyek_result->num_rows > 0) {
    while($row = $munkahelyek_result->fetch_assoc()) {
        echo "<tr><td>" . $row["munkahely_nev"] . "</td><td>" . $row["helyszin"] . "</td><td>" . $row["kapacitas"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "Nincsenek munkahelyek";
}

// Ellenőrizd, hogy a POST kulcsok léteznek-e, mielőtt hozzáférnél hozzájuk
$munkahely_nev = isset($_POST['munkahely_nev']) ? $_POST['munkahely_nev'] : '';
$helyszin = isset($_POST['helyszin']) ? $_POST['helyszin'] : '';
$kapacitas = isset($_POST['kapacitas']) ? $_POST['kapacitas'] : '';
include('footer.php');  // Lábléc
?>