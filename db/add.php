<?php
header('Content-Type: application/json');
include "../db/config.php";


$nama_user = $_POST['nama_user'];
$notelp_user = $_POST['notelp_user'];

$tbus = $db->prepare("INSERT INTO entuser (nama_user, notelp_user) VALUES (?, ?)");
$result = $tbus->execute([$nama_user, $notelp_user]);

echo json_encode([
'success' => $result
]);