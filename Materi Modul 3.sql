-- Praktek 10
SELECT datediff(NOW(),tgl_transaksi) FROM tr_penjualan;
SELECT datediff(tgl_transaksi, NOW()) FROM tr_penjualan;

-- Filtering with where
-- untuk mefirtel ataau menyaring data
SELECT nama_produk, qty FROM tr_penjualan WHERE qty>2;

-- Praktek 11
-- ambil semua data pada kolom nama produk dan qty, yang qty > 3
SELECT nama_produk, qty 
FROM tr_penjualan 
WHERE qty>3;

-- ambil semua data pada kolom nama produk dan hargan, dengan max 10000
SELECT nama_produk, harga
FROM tr_penjualan 
WHERE harga <=10000;

-- praktek 12
-- multi kriteria dalam WHERE
SELECT nama_produk, qty, tgl_transaksi FROM tr_penjualan;
-- ambil semua produk dan qty yang qty > 3 DAN tgl transasksi pada bulan 7
SELECT nama_produk, qty
FROM tr_penjualan WHERE qty>3 AND
MONTH(tgl_transaksi) =6;

-- praktek 13
-- WHERE dengan Kriteria teks
-- ambil semua nama_produk yang bernama 'Flashdisk DQLab 32 GB'
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk  = 'Flashdisk DQLab 32 GB';

-- Operator perbandingan LIKE
-- Praktek 14
-- WHERE dengan operator LIKE
-- ambil semua nama_produk yang namanya berawala huruf 'f'
SELECT nama_produk FROM  tr_penjualan
WHERE nama_produk LIKE 'F%';

-- latihan mandiri
-- 1. nama_produk yang memiliki karakter kedua 'a' pada tabel tr_penjualan_dqlab
SELECT *
FROM tr_penjualan
WHERE nama_produk LIKE '_a%';

-- 2. kategori_produk yang mengandung huruf 'f' pada tabel ms_produk_dqlab
SELECT *
FROM produk
WHERE kategori_produk LIKE '%f%';

-- 3. kategori_produk yang mengandung karakter 'un' pada tabel ms_produk_dqlab
SELECT *
FROM produk
WHERE kategori_produk LIKE '%un%';


-- Praktek 15
-- WHERE dengan operator perbandingan (AND, OR, NOT, XOR)
-- Ambil semua produk yang berawalan huruf 'F' AND/dan qty > 2
SELECT nama_produk, qty FROM tr_penjualan
WHERE nama_produk LIKE 'F%' AND qty > 2;

-- Praktek 16
-- Ambil semua produk 
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk LIKE 'F%' OR qty > 2;