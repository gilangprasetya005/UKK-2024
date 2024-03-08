<?php
session_start();
$userid = $_SESSION["userid"];
include '../config/koneksi.php';
if ($_SESSION['status'] != 'login') {
  echo "<script>
    alert('Anda Belum Login!');
    location.href='../index.php';
    </script>";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GPGALERY</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

</head>

<body>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container">
      <a class="navbar-brand" href="index.php">GPGALERY</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="home.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="album.php">Album</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="foto.php">Foto</a>
          </li>
        </ul>
      </div>
      <a href="../config/aksi_logout.php" class="btn btn-outline-danger m-1">Keluar</a>
    </div>
  </nav>

  <div class="container mt-3 mb-5">
    <div class="row">
      <?php
      $query = mysqli_query($koneksi, "SELECT * FROM foto INNER JOIN user ON foto.userid=user.userid INNER JOIN album ON foto.albumid=album.albumid");
      while ($data = mysqli_fetch_array($query)) {
        ?>
        <div class="col-md-3 mt-3">
          <a type="button" data-bs-toggle="modal"
            data-bs-target="#komentar<?php echo $data['fotoid'] ?>">

            <div class="card mb-2">
              <img style="height:12rem;" src="../assets/img/<?php echo $data['lokasifile'] ?>" class="card-img-top"
                title="<?php echo $data['judulfoto'] ?>">
              <div class="card-footer text-center">
                <?php
                $fotoid = $data['fotoid'];
                $ceksuka = mysqli_query($koneksi, "SELECT * FROM likefoto WHERE fotoid='$fotoid' AND userid='$userid'");
                if (mysqli_num_rows($ceksuka) == 1) { ?>
                  <a href="../config/proses_like.php?fotoid=<?php echo $data['fotoid'] ?>" type="submit" name="batalsuka"><i
                      class="fa fa-heart"></i></a>
                <?php } else { ?>
                  <a href="../config/proses_like.php?fotoid=<?php echo $data['fotoid'] ?>" type="submit" name="suka"><i
                      class="fa-regular fa-heart"></i></a>
                <?php }
                $like = mysqli_query($koneksi, "SELECT * FROM likefoto WHERE fotoid='$fotoid'");
                echo mysqli_num_rows($like) . " Suka";
                ?>
                <a href=""><i class="fa-regular fa-comment"></i></a>
                <?php 
                $jmlkomen = mysqli_query($koneksi,"SELECT * FROM komentarfoto WHERE fotoid='$fotoid'");
                echo mysqli_num_rows($jmlkomen).' Komentar';
                ?>
              </div>
            </div>
          </a>

          <div class="modal fade" id="komentar<?php echo $data['fotoid'] ?>" tabindex="-1"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="row">
                    <div class="col-md-8">
                      <img src="../assets/img/<?php echo $data['lokasifile'] ?>"
                        class="card-img-top" title="<?php echo $data['judulfoto'] ?>">
                    </div>
                    <div class="col-md-4">
                      <div class="m-2">
                        <div class="overflow-auto">
                          <div class="sticky-top">
                            <strong><?php echo $data['judulfoto'] ?> </strong><br>
                            <span class="badge bg-secondary"><?php echo $data['namalengkap'] ?></span>
                            <span class="badge bg-secondary"><?php echo $data['tanggalunggah'] ?></span>
                            <span class="badge bg-primary"><?php echo $data['namaalbum'] ?></span>  
                          </div>
                          <hr>
                          <p align="left">
                            <?php echo $data['deskripsifoto'] ?>
                          </p>
                          <hr>
                          <?php 
                          $fotoid = $data['fotoid'];
                          $komentar = mysqli_query($koneksi, "SELECT * FROM komentarfoto INNER JOIN user ON komentarfoto.userid=user.userid  WHERE komentarfoto.fotoid='$fotoid'");
                          while ($row = mysqli_fetch_array($komentar)) {
                          ?>
                          <p align="left">
                            <strong><?php echo $row['namalengkap'] ?></strong>
                            <?php echo $row['isikomentar'] ?>
                          </p>
                          <?php } ?>
                          <hr>
                          <div class="sticky-bottom">
                            <form action="../config/proses_komentar.php" method="POST">
                              <div class="input-grup">
                                <input type="hidden" name="fotoid" value="<?php echo $data['fotoid'] ?>">
                                <textarea name="isikomentar" class="form-control" placeholder="Tambah Komentar"></textarea>
                                <div class="input-grup-prepend">
                                  <button type="submit" name="kirimkomentar" class="btn btn-outline-primary mt-3">Kirim</button>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      <?php } ?>
    </div>
  </div>

  <footer class="d-flex justify-content-center border-top mt-3 bg-light fixed-bottom">
    <p>PROJECT UJIKOM</p>
  </footer>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>