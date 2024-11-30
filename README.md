# stream_tyase

Nama: Tyase Nisa'an Jamilaa

Absen: 26

Kelas: 3H

---

## Praktikum 1: Dart Streams

### Langkah 1: Buat Project Baru

### Langkah 2: Buka file main.dart

<img src = "assets/gambar_1.jpg">

**Soal 1**

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

<img src = "assets\W12 Jawaban Soal 1.jpg">

### Buat file baru stream.dart

<img src = "assets/gambar_2.jpg">

### Langkah 4: Tambah variabel colors

<img src = "assets/gambar_3.jpg">

**Soal 2**

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

<img src = "assets\W12 Jawaban Soal 2.jpg">

### Langkah 5: Tambah method getColors()

<img src = "assets/gambar_4.jpg">

### Langkah 6: Tambah perintah yield\*

<img src = "assets/gambar_5.jpg">

**Soal 3**

- Jelaskan fungsi keyword yield\* pada kode tersebut!

  yield* digunakan untuk meneruskan elemen-elemen dari stream atau iterable lain ke dalam stream utama. Dalam kode tersebut, yield* mengalirkan data dari Stream.periodic ke dalam stream getColors.

- Apa maksud isi perintah kode tersebut?

  Kode menghasilkan stream warna setiap detik dengan menggunakan Stream.periodic. Indeks warna dihitung menggunakan t % colors.length agar warna terus berulang jika sudah mencapai akhir daftar.

- Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

<img src = "assets\W12 Jawaban Soal 3.jpg">

### Langkah 7: Buka main.dart

<img src = "assets/gambar_6.jpg">

### Langkah 8: Tambah variabel

<img src = "assets/gambar_7.jpg">

### Langkah 9: Tambah method changeColor()

<img src = "assets/gambar_8.jpg">

### Langkah 10: Lakukan override initState()

<img src = "assets/gambar_9.jpg">

### Langkah 11: Ubah isi Scaffold()

<img src = "assets/gambar_10.jpg">

### Run

**Soal 4**

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

<img src = "assets\W12 Jawaban Soal 4.jpg">

### Langkah 13: Ganti isi method changeColor()

<img src = "assets/gambar_11.jpg">

**Soal 5**

- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

  await for digunakan dalam fungsi async untuk menangani stream dengan cara yang lebih sederhana dan mudah dibaca. Ia secara otomatis menunggu dan mengambil event stream satu per satu tanpa memerlukan callback tambahan.

  Sedangkan listen() memberikan kontrol lebih besar terhadap stream, memungkinkan Anda untuk menangani event, error, dan menyelesaikan stream dengan menggunakan parameter tambahan seperti onError dan onDone. listen() lebih fleksibel dan bisa digunakan di luar fungsi async, namun membutuhkan callback untuk setiap event yang diterima.

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"

<img src = "assets\W12 Jawaban Soal 4.gif">

---

## Praktikum 2: Stream Controllers dan Sinks

### Langkah 1: Buka file stream.dart

<img src = "assets/gambar_12.jpg">

### Langkah 2: Tambah class NumberStream

<img src = "assets/gambar_13.jpg">

### Langkah 3: Tambah StreamController

<img src = "assets/gambar_14.jpg">

### Langkah 4: Tambah method addNumberToSink

<img src = "assets/gambar_15.jpg">

### Langkah 5: Tambah method close()

<img src = "assets/gambar_16.jpg">

### Langkah 6: Buka main.dart

<img src = "assets/gambar_17.jpg">

### Langkah 7: Tambah variabel

<img src = "assets/gambar_18.jpg">

### Langkah 8: Edit initState()

<img src = "assets/gambar_19.jpg">

### Langkah 9: Edit dispose()

<img src = "assets/gambar_20.jpg">

### Langkah 10: Tambah method addRandomNumber()

<img src = "assets/gambar_21.jpg">

### Langkah 11: Edit method build()

<img src = "assets/gambar_22.jpg">

### Langkah 12: Run

**Soal 6**

- Jelaskan maksud kode langkah 8 dan 10 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".

  Langkah 8: Edit initState()
  initState() digunakan untuk inisialisasi. Di sini, objek ColorStream dan NumberStream dibuat, serta stream dari NumberStream dipantau menggunakan listen(), yang akan memperbarui lastNumber setiap kali ada angka baru.

  Langkah 10: Tambah Method addRandomNumber()
  addRandomNumber() menghasilkan angka acak menggunakan Random dan menambahkannya ke stream dengan addNumberToSink(). Angka ini akan dikirimkan ke stream dan diproses di initState() untuk memperbarui tampilan.

<img src = "assets\W12 Jawaban Soal 6.gif">

### Langkah 13: Buka stream.dart

<img src = "assets/gambar_23.jpg">

### Langkah 14: Buka main.dart

<img src = "assets/gambar_24.jpg">

### Langkah 15: Buka main.dart

<img src = "assets/gambar_25.jpg">

**Soal 7**

- Jelaskan maksud kode langkah 13 sampai 15 tersebut!

  Langkah 13: Menyediakan fungsi untuk menambahkan error ke stream.

  Langkah 14: Menambahkan logika di aplikasi untuk menangkap dan menangani error yang dikirimkan ke stream.

  Langkah 15: Mengubah fungsi agar memanfaatkan simulasi error (melalui langkah 13) sebagai pengganti logika normal untuk menghasilkan angka.

- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

<img src = "assets/gambar_29.jpg">

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 7".

---

## Praktikum 3: Injeksi Data ke Streams

###