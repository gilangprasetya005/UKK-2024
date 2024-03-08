<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GPGALERY</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

    <!-- Font Style -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
</head>

<body>
    <section class="login d-flex">
        <div class="login-left w-50 h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-6">
                    <div class="header">
                        <div class="text-center">
                            <h1>LOGIN</h1>
                        </div>
                    </div>
                    <div class="login-form">
                    <form action="config/aksi_login.php" method="POST">
                            <label for="username">USERNAME</label>
                            <input type="text" name="username">

                            <label for="password">PASSWORD</label>
                            <input type="password" name="password">

                        <button class="masuk">MASUK</button>

                        <span class="d-inline">Belum Punya Akun? <a href="register.php"
                                class="d-inline text-decoration-none">Registrasi Disini</a></span>
                    </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="login-right w-50 h-100">
            <div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/image6.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/image7.jpeg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/image8.jpeg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>

    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

</body>

</html>