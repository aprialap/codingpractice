-- Basic level

-- 1. Select dan Filter
-- Tampilkan semua data dari tabel employees.

-- Tampilkan nama (name) dan gaji (salary) dari tabel employees.

-- Tampilkan data karyawan yang gajinya lebih besar dari 5000.

-- 2. Sortir dan Batasan
-- Tampilkan data karyawan yang diurutkan berdasarkan name.

-- Tampilkan 5 karyawan dengan gaji tertinggi.

-- 3. Fungsi Agregasi
-- Hitung jumlah karyawan dalam tabel employees.

-- Hitung rata-rata gaji dari tabel employees.

-- 4. Kondisi dan Operasi
-- Tampilkan karyawan yang bekerja di departemen HR.

-- Tampilkan karyawan dengan gaji antara 3000 dan 8000.


-- Itermediate level

-- 1. Join
-- Gabungkan tabel employees dengan tabel departments menggunakan department_id dan tampilkan nama karyawan beserta nama departemennya.

-- Tampilkan semua karyawan, termasuk yang tidak memiliki departemen.

-- 2. Subquery
-- Tampilkan karyawan dengan gaji lebih besar dari rata-rata gaji semua karyawan.

-- Cari karyawan yang bekerja di departemen yang memiliki lebih dari 5 karyawan.

-- 3. Group By
-- Hitung jumlah karyawan di setiap departemen.

-- Tampilkan departemen dengan total gaji tertinggi.

-- 4. Update dan Delete
-- Update gaji semua karyawan di departemen IT dengan menambahkan 10%.

-- Hapus semua karyawan yang sudah resign (misalnya, status = 'resign').



-- Advanced level

-- 1. Case Statement
-- Tambahkan kolom baru yang menunjukkan level gaji karyawan (Low, Medium, High) berdasarkan rentang tertentu.

-- Tampilkan nama karyawan beserta bonus mereka (10% dari gaji jika gaji < 5000, 15% jika gaji >= 5000).

-- 2. Recursive Query
-- Buat query untuk menampilkan struktur hierarki manajer dan karyawan dari tabel employees (misalnya, kolom manager_id).

-- 3. Window Function
-- Tampilkan karyawan beserta gaji mereka dan peringkat gaji di dalam departemennya.

-- Hitung jumlah kumulatif karyawan berdasarkan urutan tanggal masuk (hire_date).

-- 4. CTE (Common Table Expression)
-- Buat CTE untuk menampilkan departemen dengan rata-rata gaji di atas 7000.

-- Gunakan CTE untuk menghitung total penjualan bulanan dari tabel sales.

-- 5. Dynamic SQL (Opsional)
-- Tulis prosedur untuk menampilkan data dari tabel apa pun berdasarkan parameter yang diberikan (misalnya, nama tabel sebagai parameter).

-- Buat query yang menghasilkan kolom pivot dari data penjualan bulanan.
