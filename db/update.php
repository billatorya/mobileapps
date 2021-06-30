<?php
header('Content-Type: application/json');
include "../db/config.php";

$id = $_POST['id'];
$nama_user = $_POST['nama_user'];
$notelp_user = $_POST['notelp_user'];

$stmt = $db->prepare("UPDATE student SET name = ?, age = ? WHERE id = ?");
$result =  $stmt->execute([$name, $age, $id]);

echo json_encode([
'success' => $result
]);