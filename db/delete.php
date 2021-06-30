<?php
header('Content-Type: application/json');
include "../flutter_api/db.php";

$id = (int) $_POST['id'];
$tbus = $db->prepare("DELETE FROM entuser WHERE id = ?");
$result = $tbus->execute([$id]);

echo json_encode(['id' => $id, 'success' => $result]);
?>