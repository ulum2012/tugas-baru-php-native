<div class="row">
    <div class="col-md-12">
        <!----------- awal menu ----------------->
        <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Webku</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php?hal=home">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Daftar Data
          </a>
          <ul class="dropdown-menu">
            <?php
            if(isset($_SESSION['MEMBER']) && $_SESSION['MEMBER']['role'] != 'staff'){
            ?>
            <li><a class="dropdown-item" href="index.php?hal=agama_list">Agama</a></li>
            <?php }?>
            <li><a class="dropdown-item" href="index.php?hal=partisipan_list">Partisipan</a></li>
          </ul>
        </li>
        <?php
        if(!isset($_SESSION['MEMBER'])){ //----belum login------
        ?>
        <li class="nav-item">
          <a class="nav-link" href="login.php">Login</a>
        </li>
        <?php
        }
        else{ //---------user sudah login dan terotentikasi---------------
        ?>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <?= $_SESSION['MEMBER']['username'].' - '.$_SESSION['MEMBER']['role'] ?>
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Profile</a></li>
            <?php
            if($_SESSION['MEMBER']['role'] == 'admin'){
            ?>
            <li><a class="dropdown-item" href="#">Kelola User</a></li>
            <?php } ?>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="logout.php">Logout</a></li>
          </ul>
        </li>
        <?php } ?>
      </ul>
      <form class="d-flex" role="search" method="GET">
        <input class="form-control me-2" type="text" name="keyword" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>           
        <input type="hidden" name="hal" value="produk_list" />   
      </form>  
    </div>
  </div>
</nav>
        <!----------- akhir menu ---------------->
    </div>
</div>