<?php
session_start();
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Daftar Kontak Yang Dihubungi</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  </head>
  <body>
    <div class="container-fluid">
        <?php
        include_once 'koneksi.php';
        include_once 'models/Agama.php';
        include_once 'models/Member.php';
        include_once 'models/Partisipan.php';
        //potongan2 layout web
        include_once 'header.php';
        include_once 'menu.php';
        ?>
        <br/>
        <div class="row">
        <div class="col-md-3"><?php include_once 'sidebar.php' ?></div>
              <div class="col-md-9">
               <?php
               //tangkap request di URL
               $hal = $_REQUEST['hal'];
               //tempatkan halaman sesuai request di URL 
               if(!empty($hal)){
                    include_once $hal.'.php';
               }
               else{
                    include_once 'home.php';
               }
               ?>
            </div>
            

        </div>
        <br/>
        <?php include_once 'footer.php' ?>
        
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>
  </body>
</html>