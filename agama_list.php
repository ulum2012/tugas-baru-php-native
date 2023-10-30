<?php
//buat array scalar judul kolom
$ar_judul = ['NO','NAMA'];
//ciptakan object dari class Jenis
$obj_agama = new Agama();
//panggil fungsionalitas terkait
$rs = $obj_agama->index();
//print_r($rs); die();
//-----------hak akses--------------
if(isset($_SESSION['MEMBER']) && $_SESSION['MEMBER']['role'] != 'staff'){
?>
<h3>Daftar Agama</h3>
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
		foreach($rs as $agama){
        ?>    
			<tr>
				<td><?= $no ?></td>
				<td><?= $agama['nama'] ?></td>
			</tr>
        <?php    
		$no++;
		}	
		?>
	</tbody>
</table>
<?php 
}
else {
	include_once 'access_denied.php';
}
?>