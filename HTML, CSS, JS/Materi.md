# Materi HTML, CSS, dan JavaScript

## **HTML**

### **Pemula**
#### HTML Dasar
HTML adalah bahasa markup yang digunakan untuk membuat struktur halaman web. Elemen HTML dibangun menggunakan tag, misalnya:
- `<h1>` untuk judul.
- `<p>` untuk paragraf.
- `<a>` untuk tautan (link).
- `<img>` untuk gambar.

Contoh dasar:
```html
<!DOCTYPE html>
<html>
<head>
    <title>Judul Halaman</title>
</head>
<body>
    <h1>Hello World!</h1>
    <p>Ini adalah paragraf pertama saya.</p>
    <img src="https://example.com/image.jpg" alt="Gambar Contoh">
    <a href="https://example.com">Kunjungi Website</a>
</body>
</html>
```

#### Tabel HTML
Gunakan elemen `<table>`, `<tr>` (baris), `<th>` (header kolom), dan `<td>` (data).
```html
<table border="1">
    <tr>
        <th>Nama</th>
        <th>Umur</th>
        <th>Kota</th>
    </tr>
    <tr>
        <td>Alice</td>
        <td>25</td>
        <td>Jakarta</td>
    </tr>
</table>
```

### **Menengah**
#### Form HTML
Form digunakan untuk menerima input pengguna.
```html
<form action="/submit" method="post">
    <label for="name">Nama:</label>
    <input type="text" id="name" name="name"><br>
    <label>Email:</label>
    <input type="email" name="email"><br>
    <label>Gender:</label>
    <input type="radio" name="gender" value="Male"> Pria
    <input type="radio" name="gender" value="Female"> Wanita<br>
    <button type="submit">Kirim</button>
</form>
```

### **Lanjutan**
#### Media HTML
Untuk menampilkan video dan audio:
```html
<iframe src="https://www.youtube.com/embed/ID_VIDEO" allow="autoplay" width="560" height="315"></iframe>
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
</audio>
<video controls width="500">
    <source src="video.mp4" type="video/mp4">
</video>
```

---

## **CSS**

### **Pemula**
#### CSS Dasar
CSS digunakan untuk mempercantik halaman web. Contoh penerapan:
```html
<style>
    p {
        color: blue; /* Mengubah warna teks menjadi biru */
    }
    h1 {
        margin: 20px; /* Menambah jarak di sekitar elemen */
    }
</style>
```

### **Menengah**
#### Button Styling
Membuat tombol menarik:
```css
button {
    background-color: lightblue;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
}
button:hover {
    background-color: blue; /* Efek hover */
}
```

#### Grid Layout
Gunakan grid untuk tata letak:
```css
.container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 10px; /* Jarak antar kolom */
}
.item {
    background: lightgray;
    padding: 20px;
    text-align: center;
}
```

### **Lanjutan**
#### Flexbox
Membuat navbar dengan flexbox:
```css
.navbar {
    display: flex;
    justify-content: center; /* Elemen rata di tengah */
    gap: 20px; /* Jarak antar elemen */
}
.navbar a {
    text-decoration: none;
    color: black;
}
```

#### Animasi
Buat animasi dengan `@keyframes`:
```css
@keyframes move {
    from { transform: translateX(0); }
    to { transform: translateX(100px); }
}
.box {
    width: 50px;
    height: 50px;
    background: red;
    animation: move 2s infinite alternate;
}
```

---

## **JavaScript**

### **Pemula**
#### JavaScript Dasar
Menampilkan alert dan mengambil input:
```javascript
alert("Selamat datang di situs saya!");
function ambilNilai() {
    const nilai = document.getElementById("input").value;
    console.log(nilai);
}
```

#### Fungsi Sederhana
```javascript
function tambah(a, b) {
    return a + b;
}
console.log(tambah(3, 5)); // Output: 8
```

### **Menengah**
#### To-Do List
Membuat daftar tugas:
```javascript
const tugas = [];
function tambahTugas(tugasBaru) {
    tugas.push(tugasBaru);
    console.log(tugas);
}
tambahTugas("Belajar JavaScript");
```

#### Bilangan Prima
```javascript
function cekPrima(angka) {
    if (angka < 2) return false;
    for (let i = 2; i < angka; i++) {
        if (angka % i === 0) return false;
    }
    return true;
}
console.log(cekPrima(7)); // Output: true
```

### **Lanjutan**
#### API Fetch
Mengambil data dari API:
```javascript
fetch('https://jsonplaceholder.typicode.com/users')
    .then(response => response.json())
    .then(data => {
        data.forEach(user => console.log(user.name));
    });
```

#### Animasi dengan JavaScript
```javascript
const box = document.getElementById('box');
let posisi = 0;

function gerak() {
    if (posisi < window.innerWidth) {
        posisi += 5;
        box.style.left = posisi + 'px';
        requestAnimationFrame(gerak);
    }
}
gerak();
