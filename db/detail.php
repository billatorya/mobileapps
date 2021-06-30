<?php
header('Content-Type: application/json');
include "../db/config.php";

$id = (int) $_POST['id'];

$tbus = $db->prepare("SELECT nama_user, notelp_user FROM entuser WHERE ID = ?");
$tbus->execute([$id]);
$result = $tbus->fetch(PDO::FETCH_ASSOC);

echo json_encode([
'result' => $result
]);