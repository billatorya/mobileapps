<?php
header('Content-Type: application/json');
include "../flutter_api/db.php";

$id_user = (int) $_POST['id_user'];
$tbus = $db->prepare("DELETE FROM entuser WHERE id_user = ?");
$result = $tbus->execute([$id]);

echo json_encode(['id_user' => $id_user, 'success' => $result]);
?>