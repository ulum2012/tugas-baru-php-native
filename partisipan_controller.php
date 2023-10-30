<?php
session_start();
include_once 'koneksi.php';
include_once 'models/Partisipan.php';
//1. tangkap request form (dari name2 element form)
$nama = $_POST['nama']; 
$gender = $_POST['kondisi']; 
$temp_lahir = $_POST['temp_lahir']; 
$tgl_lahir = $_POST['tgl_lahir']; 
$alamat = $_POST['alamat'];
$hp = $_POST['hp'];
$email = $_POST['email'];
$kampus = $_POST['kampus'];
$instagram = $_POST['instagram'];
$idagama = $_POST['idagama']; 
$foto = $_POST['foto'];
$moto = $_POST['moto']; 
$tombol = $_POST['proses']; // untuk keperluan eksekusi sebuah tombol di form
//2. simpan ke sebuah array
$data = [
    $nama,
    $gender, 
    $temp_lahir,
    $tgl_lahir,
    $alamat,
    $hp,
    $email,
    $kampus,
    $instagram,
    $idagama,  
    $foto, 
    $moto, 
];
//3. eksekusi tombol
$obj_partisipan = new Partisipan();
switch ($tombol) {
    case 'simpan': $obj_partisipan->simpan($data); break;
    case 'ubah': 
        $data[] = $_POST['idx']; ; // tambah array ? ke-8 dari hidden field idx
        $obj_partisipan->ubah($data); break;
    case 'hapus': $obj_partisipan->hapus($_POST['id']); break; //$_POST['id'] dari hidden field di tombol hapus

    default: header('location:index.php?hal=partisipan_list'); break;
}
//4. setelah selasai arahkan ke hal produk
header('location:index.php?hal=produk_list');

//----------proses pencarian data---------------
$tombol_cari = $_GET['proses_cari']; // untuk keperluan eksekusi sebuah tombol di form

if(isset($tombol_cari)){
    //print_r('###########################'.$_GET['keyword']); 
    $obj_partisipan->cari($_GET['keyword']); 
    header('location:index.php?hal=produk_cari');
}
