<?php
class Partisipan{
    //member1 variabel
	private $koneksi;
	//member2 konstruktor
	public function __construct(){
		global $dbh; //memanggil variabel di file lain
		$this->koneksi = $dbh;
	}
    //member3 fungsionalitas
    public function index(){
        $sql = "SELECT partisipan.*, agama.nama AS agama
                FROM partisipan INNER JOIN agama
                ON agama.id = partisipan.idagama ORDER BY partisipan.id DESC";
		$ps = $this->koneksi->prepare($sql);
		$ps->execute();
		$rs = $ps->fetchAll();
		return $rs;
    }

    public function simpan($data){
        $sql = "INSERT INTO partisipan (nama, gender, temp_lahir, tgl_lahir, alamat, hp, email, kampus, instagram, idagama, foto)
                VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        //PDO prepare statement
		$ps = $this->koneksi->prepare($sql);
		$ps->execute($data);
    }

    public function getPartisipan($id){
        $sql = "SELECT partisipan.*, agama.nama AS agama
                FROM partisipan INNER JOIN agama
                ON agama.id = partisipan.idagama WHERE partisipan.id = ?";
        //PDO prepare statement
		$ps = $this->koneksi->prepare($sql);
		$ps->execute([$id]);
		$rs = $ps->fetch();
		return $rs;
    }

    public function ubah($data){
        $sql = "UPDATE partisipan SET nama=?,gender=?,temp_lahir=?,tgl_lahir=?,alamat=?,hp=?,email=?,kampus=?,instagram=?,idagama=?,foto=?
                WHERE id = ?";
        //PDO prepare statement
		$ps = $this->koneksi->prepare($sql);
		$ps->execute($data);
    }

    public function hapus($id){
        $sql = "DELETE FROM partisipan WHERE id = ?";
        //PDO prepare statement
		$ps = $this->koneksi->prepare($sql);
		$ps->execute([$id]);
    }

    public function cari($keyword){
        $sql = "SELECT partisipan.*, agama.nama AS agama
                FROM partisipan INNER JOIN agama
                ON agama.id = partisipan.idagama 
                WHERE partisipan.nama LIKE '%$keyword%' OR 
                agama.nama LIKE '%$keyword%' OR 
                partisipan.hp LIKE '%$keyword%'";
        $rs = $this->koneksi->query($sql);
        return $rs;
    }

    public function filter($agama){
        $sql = "SELECT partisipan.*, agama.nama AS agama
                FROM partisipan INNER JOIN agama
                ON agama.id = partisipan.idagama
                WHERE agama.id = ?
                ORDER BY partisipan.id DESC";
        //$rs = $this->koneksi->query($sql);
        //PDO prepare statement
		$ps = $this->koneksi->prepare($sql);
		$ps->execute([$agama]);
		$rs = $ps->fetchAll();
		return $rs;
    }
}

