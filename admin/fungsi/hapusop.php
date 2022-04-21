<?php
include"koneksi.php";
$ambil = $_GET['id'];
$sql = $pdo->query("DELETE FROM oprator WHERE id='$ambil'");
echo"<script>document.location.href='../oprator';</script>";
?>