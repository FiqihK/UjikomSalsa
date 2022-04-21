<?php
include"koneksi.php";
$id = $_POST['id'];
$Nama = $_POST['Nama'];
$Nip = $_POST['Nip'];


$sqlsimpan = $pdo->query("INSERT INTO oprator VALUES('$id', '$Nama', '$Nip')");

echo"<script>alert('Data Oprator Tersimpan');document,location.href='../oprator';</script>";
?>