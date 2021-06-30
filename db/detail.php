<?php
header('Content-Type: application/json');
include "../db/config.php";

$id_user = (int) $_POST['id_user'];

$tbus = $db->prepare("SELECT nama_user, notelp_user FROM entuser WHERE id_user = ?");
$tbus->execute([$id]);
$result = $tbus->fetch(PDO::FETCH_ASSOC);

echo json_encode([
'result' => $result
]);