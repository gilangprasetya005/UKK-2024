<?php
session_start();
include 'koneksi.php';
$fotoid = $_GET['fotoid'];
$userid = $_SESSION['userid'];

$ceksuka = mysqli_query($koneksi, "SELECT * FROM likefoto WHERE fotoid='$fotoid' AND userid='$userid'");

if (mysqli_num_rows($ceksuka) == 1) {
    while ($row = mysqli_fetch_array($ceksuka)) {
        $likeid = $row["likeid"];
        $query = mysqli_query($koneksi, "DELETE FROM likefoto WHERE likeid='$likeid'");
        echo "<script>
            location.href='../user/home.php';
            </script>";
    }
}else{
    $tanggallike = date('y-m-d');
    $query = mysqli_query($koneksi, "INSERT INTO likefoto (fotoid, userid, tanggallike) VALUES('$fotoid', '$userid', '$tanggallike')");

echo "<script>
    location.href='../user/home.php';
    </script>";
}

?>