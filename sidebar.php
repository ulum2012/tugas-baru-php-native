<?php
$model = new Agama();
$rs = $model->index();
?>
<ul class="list-group">
  <li class="list-group-item active" aria-current="true">Daftar Agama</li>
  <?php
  foreach($rs as $agama){
  ?>
    <a href="index.php?hal=partisipan_list&id=<?= $agama['id'] ?>">
      <li class="list-group-item"><?= $agama['nama'] ?></li>
    </a>
  <?php } ?>  
</ul>