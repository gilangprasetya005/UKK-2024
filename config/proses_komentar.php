<?php 
session_start();
include 'koneksi.php';

$fotoid = $_POST['fotoid'];
$userid = $_SESSION['userid'];
$isikomentar = $_POST['isikomentar'];
$tanggalkomentar = date('y-m-d');

$query = mysqli_query($koneksi, "INSERT INTO komentarfoto (fotoid, userid, isikomentar, tanggalkomentar) VALUES('$fotoid', '$userid', '$isikomentar', '$tanggalkomentar')");

echo "<script>
    location.href='../user/index.php';
    </script>";

?>