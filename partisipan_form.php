<?php
$obj_agama = new Agama(); //ciptakan object dari class Jenis
$rs = $obj_agama->index(); //panggil fungsi index untuk mendapatkan data jenis produk
$ar_gender = ['Pria','Wanita']; //buat array kondisi produk
//------------proses edit data----------------
$id = $_REQUEST['id']; //tangkap request id di url
$obj_partisipan = new Partisipan(); //ciptakan object dari class Produk
if(!empty($id)){
    // panggil fungsi untuk menampilkan data lama yg ingin diubah di form
    $row = $obj_partisipan->getPartisipan($id); // mode edit data, form terisi data lama yg akan diedit
}
else {
    $row = []; // mode input data baru, form tetap dalam keadaan kosong
}
//----------hak akses----------
if(isset($_SESSION['MEMBER'])){
?>
<div class="container px-5 my-5">
    <h3>Form Partisipan</h3>
    <form id="contactForm" method="POST" action="partisipan_controller.php">
        <div class="form-floating mb-3">
            <input class="form-control" name="nama" value="<?= $row['nama'] ?>" id="namaPartisipan" type="text" placeholder="Nama Partisipan" data-sb-validations="required" />
            <label for="namaPartisipan">Nama Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="namaPartisipan:required">Nama Partisipan is required.</div>
        </div>
        <div class="mb-3">
            <label class="form-label d-block">Gender</label>
            <?php
            foreach($ar_gender as $gender){
            $cek = ($gender == $row['gender']) ? "checked" : "" ;
            ?>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" value="<?= $gender ?>" data-sb-validations="required" <?= $cek ?> />
                <label class="form-check-label"><?= $gender ?></label>
            </div>
            <?php } ?>
            <div class="invalid-feedback" data-sb-feedback="genderPartisipan:required">One option is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="temp_lahir" value="<?= $row['temp_lahir'] ?>" id="temp_lahirPartisipan" type="text" placeholder="Tempat Lahir Partisipan" data-sb-validations="required" />
            <label for="temp_lahirPartisipan">Tempat Lahir Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="temp_lahirPartisipan:required">Tempat Lahir Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="tgl_lahir" value="<?= $row['tgl_lahir'] ?>" id="tgl_lahirPartisipan" type="text" placeholder="Tanggal Lahir Partisipan" data-sb-validations="required" />
            <label for="tgl_lahirPartisipan">Tanggal Lahir Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="tgl_lahirPartisipan:required">Tanggal Lahir Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="alamat" value="<?= $row['alamat'] ?>" id="alamatPartisipan" type="text" placeholder="Alamat Partisipan" data-sb-validations="required" />
            <label for="alamatPartisipan">Alamat Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="alamatPartisipan:required">Alamat Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="hp" value="<?= $row['hp'] ?>" id="hpPartisipan" type="text" placeholder="HP Partisipan" data-sb-validations="required" />
            <label for="hpPartisipan">HP Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="hpPartisipan:required">HP Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="email" value="<?= $row['email'] ?>" id="emailPartisipan" type="text" placeholder="Email Partisipan" data-sb-validations="required" />
            <label for="emailPartisipan">Alamat Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="alamatPartisipan:required">Email Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="kampus" value="<?= $row['kampus'] ?>" id="kampusPartisipan" type="text" placeholder="Kampus Partisipan" data-sb-validations="required" />
            <label for="kampusPartisipan">Kampus Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="kampusPartisipan:required">Kampus Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="instagram" value="<?= $row['instagram'] ?>" id="instagramPartisipan" type="text" placeholder="Instagram Partisipan" data-sb-validations="required" />
            <label for="instagramPartisipan">Instagram Partisipan</label>
            <div class="invalid-feedback" data-sb-feedback="instagramPartisipan:required">Instagram Partisipan is required.</div>
        </div>
        <div class="form-floating mb-3">
            <select class="form-select" name="idagama" id="AgamaPartisipan" aria-label="Agama Partisipan">
                <option value="-- Pilih Agama --">-- Pilih Agama --</option>
                <?php
                foreach($rs as $agama){
                    $sel = ($agama['id'] == $row['idagama']) ? "selected" : "" ;
                ?>    
                    <option value="<?= $agama['id'] ?>" <?= $sel ?>><?= $agama['nama'] ?></option>
                <?php } ?>
            </select>
            <label for="agamaPartisipan">Agama Partisipan</label>
        </div>
        <div class="form-floating mb-3">
            <input class="form-control" name="foto" value="<?= $row['foto'] ?>" id="fotoPartisipan" type="text" placeholder="Foto Partisipan" data-sb-validations="" />
            <label for="fotoPartisipan">Foto Partisipan</label>
        </div>
        <div class="text-center">
        <?php
        if(empty($id)){ //-----mode input data baru form kosong & tombol simpan--------
        ?>
            <button class="btn btn-primary" name="proses" type="submit" value="simpan">Simpan</button>
        <?php
        }
        else{ //-----mode edit data lama form terisi data lama & tombol ubah--------
        ?>
            <button class="btn btn-success" name="proses" type="submit" value="ubah">Ubah</button>
            <input type="hidden" name="idx" value="<?= $id ?>" />
        <?php } ?>
            <a href="index.php?hal=partisipan_list" class="btn btn-info" name="unproses">Kembali</a>
        </div>
    </form>
</div>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<?php
}
else{
    include_once 'access_denied.php';
}
?>