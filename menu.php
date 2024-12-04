<?php
// Adatbázis kapcsolat (hozzá kell adni, hogy a db.php-ot betöltse)
require_once 'db.php';

// Menüpontok lekérdezése
$sql = "SELECT * FROM menu ORDER BY `order`";
$result = $db->query($sql);

// Menüpontok tárolása
$menu = [];

// Menüpontok bejárása és szülő-gyerek kapcsolatok kialakítása
while ($row = $result->fetch_assoc()) {
    // Ha szülő menüpont, akkor új elem hozzáadása a menühöz
    if ($row['parent_id'] == NULL) {
        $menu[$row['id']] = ['name' => $row['name'], 'children' => []];
    } else {
        // Ha gyerek menüpont, akkor a szülőhöz hozzárendelés
        $menu[$row['parent_id']]['children'][] = ['name' => $row['name'], 'page_id' => $row['page_id']];
    }
}

// Funkció a menü kiírásához (rekurzív hívás a gyerekekhez)
function printMenu($menu) {
    echo "<ul>";
    foreach ($menu as $key => $item) {
        // Szülő menüpont neve
        echo "<li><a href='page.php?id={$key}'>{$item['name']}</a>";

        // Ha van gyereke, akkor rekurzív módon hívjuk meg
        if (!empty($item['children'])) {
            printMenu($item['children']); // Rekurzív hívás
        }

        echo "</li>";
    }
    echo "</ul>";
}
?>
