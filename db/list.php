<?php
header('Content-Type: application/json');
include "../db/config.php";

$tbus = $db->prepare("SELECT id_user, name_user, notelp_user FROM entuser");
$tbus->execute();
$result = $tbus->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($result);
?>