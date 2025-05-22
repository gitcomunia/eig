<?php
header('Content-Type: application/json');
$pdo = new PDO("mysql:host=localhost;dbname=comunia;charset=utf8mb4", "root", "");
$data = json_decode(file_get_contents("php://input"), true);
$stmt = $pdo->prepare("INSERT INTO evaluaciones (area, problemas, expectativas, personal_area, nivel_digitalizacion, nombre_contacto, cargo_contacto, email_contacto, telefono_contacto, reunion_interes, fecha) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())");
$stmt->execute([
  $data['area'] ?? '',
  json_encode($data['problemas'] ?? []),
  json_encode($data['expectativas'] ?? []),
  $data['personal_area'] ?? '',
  $data['nivel_digitalizacion'] ?? '',
  $data['nombre_contacto'] ?? '',
  $data['cargo_contacto'] ?? '',
  $data['email_contacto'] ?? '',
  $data['telefono_contacto'] ?? '',
  $data['reunion_interes'] ?? ''
]);
echo json_encode(['status' => 'ok']);
?>