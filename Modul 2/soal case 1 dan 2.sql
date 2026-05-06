-- Nama: nilam cahya 
-- Nim: 24241018
-- Kelas: A 
-- modul : tugas 2

-- menggunakan database 
USE pti_mart;

-- menampilkan database
SHOW DATABASES;

-- cek isi Tabel
SELECT * FROM pelanggan;
SELECT * FROM produk;


-- case 1 tim sales mencari nama customer dan alamatnya
SELECT p.nama_pelanggan AS nama_customer, p.alamat AS alamat_customer FROM pelanggan p;

-- case 2 tim sales ingin melihat nama produk dan harganya
SELECT pr.nama_produk , pr.harga AS harga_produk FROM produk pr;