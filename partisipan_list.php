<?php
//buat array scalar judul kolom
$ar_judul = ['NO', 'NAMA', 'GENDER', 'TEMPAT LAHIR', 'TANGGAL LAHIR', 'ALAMAT', 'HP', 'EMAIL', 'KAMPUS', 'INSTAGRAM', 'AGAMA', 'FOTO','ACTION'];
//ciptakan object dari class Partisipan
$obj_partisipan = new Partisipan();
//panggil fungsionalitas terkait
//----------proses pencarian dan filter-----------
//tangkap id di url dari link sidebar untuk filter produk berdasarkan jenis
$id = $_REQUEST['id'];
$keyword = $_GET['keyword']; // tangkap request pencarian berdasarkan keywordnya
if(!empty($keyword)){
	$rs = $obj_partisipan->cari($keyword); //jika ada pencarian
}
else if(!empty($id)){
	$rs = $obj_partisipan->filter($id); //jika ada filter dari sidebar
}
else{
	$rs = $obj_partisipan->index(); //jika tidak ada pencarian
}
//print_r($rs); die();
?>
<h3>Daftar Partisipan</h3>
<?php
if(isset($_SESSION['MEMBER'])){
?>
<a href="index.php/partisipan_form" class="btn btn-primary">Tambah</a>
<?php } ?>
<table class="table table-striped">
	<thead>
		<tr>
			<?php
				foreach($ar_judul as $jdl){
					echo '<th>'.$jdl.'</th>';
				}
			?>
		</tr>
	</thead>
	<tbody>
		<?php
		$no = 1;
		foreach($rs as $partisipan){
        ?>    
			<tr>
				<td><?= $no ?></td>
				<td><?= $partisipan['nama'] ?></td>
				<td><?= $partisipan['gender'] ?></td>
				<td><?= $partisipan['temp_lahir'] ?></td>
				<td><?= $partisipan['tgl_lahir'] ?></td>
				<td><?= $partisipan['alamat'] ?></td>
				<td><?= $partisipan['hp'] ?></td>
				<td><?= $partisipan['email'] ?></td>
				<td><?= $partisipan['kampus'] ?></td>
				<td><?= $partisipan['instagram'] ?></td>
				<td><?= $partisipan['idagama'] ?></td>
				<td width="15%">
					<?php
					if(!empty($partisipan['foto'])){
					?>
						<img src="image/<?= $partisipan['foto'] ?>" width="50%" />
					<?php
					}
					else{
					?>
						<img src="image/avatar" width="50%" />
					<?php } ?>	
				</td>
                <td>
					<form method="POST" action="partisipan_controller.php">
					<a href="index.php?hal=partisipan_detail&id=<?= $partisipan['id'] ?>" 
					   title="Detail Partisipan" class="btn btn-info btn-sm">
						<i class="bi bi-eye"></i>
					</a>
					<?php
					if(isset($_SESSION['MEMBER'])){
					?>
					<a href="index.php?hal=partisipan_form&id=<?= $partisipan['id'] ?>" 
					   title="Ubah Partisipan" class="btn btn-warning btn-sm">
						<i class="bi bi-pencil"></i>
					</a>
						<?php
						if($_SESSION['MEMBER']['role'] != 'staff'){
						?>
						<button type="submit" title="Hapus Partisipan" class="btn btn-danger btn-sm"
							name="proses" value="hapus" onclick="return confirm('Anda Yakin diHapus?')">
							<i class="bi bi-trash"></i>
						</button>
						<?php } ?>
					<input type="hidden" name="id" value="<?= $partisipan['id'] ?>" /> 
					<?php } ?>
					</form>
				</td>
			</tr>
        <?php    
		$no++;
		}	
		?>
	</tbody>
</table>