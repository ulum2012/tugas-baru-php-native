<?php
$id = $_REQUEST['id']; // tangkap request produk id di URL
$model = new Partisipan(); // ciptakan obj dari class Produk
$rs  = $model->getPartisipan($id); // panggil fungsi u/ mendetailkan produk
?>
<div class="card" style="width: 18rem;">
  <?php
  if(!empty($rs['foto'])){
  ?>
	<img src="images/<?= $rs['foto'] ?>" class="card-img-top" />
  <?php
  }
  else{
  ?>
  <img src="images/nophoto.jpg" class="card-img-top" />
  <?php } ?>
  <div class="card-body">
    <h5 class="card-title"><?= $rs['nama'] ?></h5>
    <p class="card-text">
        Gender: <?= $rs['gender'] ?> <br/>
        Tempat Lahir: <?= $rs['temp_lahir'] ?> <br/>
        Tanggal Lahir: <?= $rs['tgl_lahir'] ?> <br/>
        Alamat: <?= $rs['alamat'] ?> <br/>
        HP: <?= $rs['hp'] ?> <br/>
        Email: <?= $rs['email'] ?> <br/>
        Kampus: <?= $rs['kampus'] ?> <br/>
        Instagram: <?= $rs['instagram'] ?> <br/>
        Agama: <?= $rs['idagama'] ?> <br/>
    </p>
    <a href="index.php?hal=partisipan_list" class="btn btn-primary">Kembali</a>
  </div>
</div>