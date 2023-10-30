<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tokoku</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>
<body>
    <div class="container-fluid">
        <section class="vh-100" style="background-color: blue;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block" style="margin-top:150px;">
                                    <center>
                                        <img src="images/kampus_merdeka.png" />
                                    </center>
                                </div>
                                <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form method="POST" action="auth_controller.php">
                                            <center>
                                                <img src="images/nfcomputer.png" class="img-fluid"
                                                    width="70%" /><br /><br />
                                            </center>
                                            <div class="form-outline mb-4">
                                                <input type="text" name="username"
                                                    class="form-control form-control-lg" />
                                                <label class="form-label">Username</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" name="password"
                                                    class="form-control form-control-lg" />
                                                <label class="form-label">Password</label>
                                            </div>

                                            <div class="pt-1 mb-4">
                                                <button class="btn btn-dark btn-lg btn-block"
                                                    type="submit">Login</button>
                                            </div>
                                            <hr />
                                            <label class="form-label">
                                                MSIB Full Stack Web Developer |
                                                NF Computer@2023
                                            </label>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>