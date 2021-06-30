<?php
header('Content-Type: application/json');
include "../db/config.php";

$id_user = $_POST['id_user'];
$nama_user = $_POST['nama_user'];
$notelp_user = $_POST['notelp_user'];

$stmt = $db->prepare("UPDATE entuser SET nama_user = ?, notelp_user = ? WHERE id_user = ?");
$result =  $stmt->execute([$nama_user, $notelp_user, $id_user]);

echo json_encode([
'success' => $result
]);