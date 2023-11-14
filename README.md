# BakeryShop - Fresh Baked Goods Everyday!

# Tugas 7 
## Perbedaan Stateless dan Stateful Widget dalam Pengembangan Aplikasi Flutter 
   - Stateless Widget 
     Stateless Widget merupakan widget yang bersifat statis. Properti dan penampilan stateless widget tidak bisa diubah ketika aplikasi sedang dijalankan. Stateless widget di-build hanya dengan konsigurasi yang telah diinisiasi sejak awal. 
   - Stateful Widget 
     Stateful Widget merupakan widget yang bersifat dinamis. Stateful widget dapat mengubah properti yang dimiliki ketika aplikasi dijalankan. Penampilan pada stateful widget dapat diubah sebagai bentuk respon dari interaksi pengguna atau saat widget tersebut menerima data. 

## Widget yang digunakan dalam menyelesaikan tugas 7 beserta fungsinya
   - ```MyHomePage```
     Digunakan sebagai widget utama untuk mengatur tata letak struktur tampilan home page. 
   - ```AppBar```
     Widget untuk membuat bar yang terletak pada bagian atas layar. 
   - ```Scaffold```
     Widget utama untuk membuat sebuah halaman pada flutter dengan layout design dasar.
   - ```Padding```
     Widget yang digunakan untuk mengatur jarak pada disekitar widget atau kumpulan widget lain. 
   - ```Column```
     Widget yang digunakan untuk mengatur tata letak widget lain secara vertikal.
   - ```Text```
     Widget untuk menampilkan serangkaian teks dalam aplikasi.
   - ```GridView```
     Widget yang digunakan untuk menampilan elemen - elemen dalam bentuk grid. 
   - ```ShopCard```
     Digunakan untuk menampilkan item dalam bentuk card dan dapat mengatur properti card secara unik (berbeda dengan widget lain) seperti warna, text, dan icon. 
   - ```Material```
     Digunakan untuk mengatur tampilan dan action pada card.
   - ```InkWell```
     Digunakan untuk menambahkan action pada widget.
   - ```Container```
     Digunakan sebagai wadah untuk memuat widget lainnya. 
   - ```Icon```
     Widget ini untuk membuat ikon di aplikasi.
   - ```SingleChildScrollView```
     Widget yang digunakan untuk mengatur konten pada aplikasi agar bisa di-scroll secara vertikal. 

## Implementasi Tugas 7
   1. Membuka Command Prompt di direktori yang akan menyimpan proyek flutter.
   2. Menjalankan command untuk membuat proyek baru dengan nama bakery_shop.
      ```flutter create bakery_shop``` 
   3. Melakukan ```git init``` dan menghubungkan repositori lokal dengan repositori GitHub dengan command ```git remote add origin https://github.com/hotchlck/bakery-shop-mobile.git```.
   4. Membuat file baru dengan nama ```menu.dart``` pada direktori ```bakery_shop/lib```.
   5. Menambahkan import pada berkas ```menu.dart``` berupa ```import 'package:flutter/material.dart';```
   6. Memindahkan class ```MyHomePage``` dan ```_MyHomePageState``` dari berkas ```main.dart``` ke berkas ```menu.dart```. 
   7. Menambahkan  ```import 'package:bakery_shopt/menu.dart';``` ke berkas ```main.dart``` karena kode sudah dipindahkan ke berkas ```menu.dart``` .
   8. Mengubah widget halaman menu menjadi stateless widget. 
   9. Membuat class dengan nama ShopItem untuk menampilkan button pada homepage. 
      ```
      class ShopItem {
       final String name;
       final IconData icon;
       final Color color;
   
       ShopItem(this.name, this.icon, this.color);
      } 
      ```
   10. Menambahkan kode dibawah kode ```MyHomePage({Key? key}) : super(key: key);``` untuk menambahkan produk.
       ```
       final List<ShopItem> items = [
          ShopItem("Lihat Item", Icons.list,Colors.indigo),
          ShopItem("Tambah Item", Icons.add_shopping_cart,Colors.purple),
          ShopItem("Logout", Icons.logout,Colors.pink),
        ];
       ```
       
   12. Membuat class dengan nama ShopCard untuk menampilkan card. 
         ```
          class ShopCard extends StatelessWidget {
          final ShopItem item;
      
          const ShopCard(this.item, {super.key}); // 
          @override
          Widget build(BuildContext context) {
              return Material(
              color: item.color,
              child: InkWell(
                  // Area responsive terhadap sentuhan
                  onTap: () {
                  // Memunculkan SnackBar ketika diklik
                  ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(SnackBar(
                          content: Text("Kamu telah menekan tombol ${item.name}!")));
                  },
                  child: Container(
                  // Container untuk menyimpan Icon dan Text
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(
                          item.icon,
                          color: Colors.white,
                          size: 30.0,
                          ),
                          const Padding(padding: EdgeInsets.all(3)),
                          Text(
                          item.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white),
                          ),
                      ],
                      ),
                  ),
                  ),
              ),
              );
          }
          } 
         ```
   13. Menampilkan SnackBar dengan menambahkan ```onTap()``` di widget ```Inkwell``` pada class ```ShopCard```.
        ```
        child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        }),
        ```
# Tugas 8 
## Perbedaan antara ```Navigator.push()``` dan ```Navigator.pushReplacement()```
   - ```Navigator.push()```
     Berfungsi untuk menambahkan route untuk ditampilkan ke pengguna dengan menambahkan halaman baru pada stack navigation dan tidak menghapus route sebelumnya, hal ini memungkinkan pengguna           untuk kembali halaman sebelumnya.
     Contoh :
     ```
     Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => ShopFormPage(),
                )
     ```
   - ```Navigator.pushReplacement()```
     Berfungsi untuk menambahkan route untuk ditampilkan ke pengguna dengan menggantikan halaman yang sedang pengguna kunjungi dengan halaman baru pada stack navigation, sehingga pengguna tidak       bisa kembali ke halaman selanjutnya.
     Contoh :
     ```
     Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
     ```
## Layout Widget pada Flutter
   - Align
     Widget yang digunakan untuk menyusun widget anak sesuai dengan alignment tertentu, dan dapat mengatur ulang ukurannya berdasarkan ukuran widget anak. 
   - Container
     Widget yang menggabungkan widget-widget umum untuk menggambar, mengatur penempatan, dan penentuan ukuran.
   - ConstrainedBox
     Widget yang memberlakukan batasan tambahan pada widget anaknya. ConstrainedBox sigunakan untuk mengatur batasan minimal dan maksimal untuk lebar, tinggi, dan kedalaman widget anak.
   - GridView
     Widget yang digunakan untuk menampilkan data dalam bentuk grid atau tabel. Widget ini dapat menyusun widget anak dalam susunan baris dan kolom, mirip dengan tata letak tabel.
   - LayoutBuilder
     Widget yang digunakan untuk membangun widget sesuai dengan batas atau ukuran yang diberikan.
   - ListView
     Widget yang digunakan untuk menampilkan widget anak dalam list yang dapat di-scroll. 
   - Padding
     Widget yang digunakan untuk mengatur padding atau ruang kosong yang ada di sekeliling widget anak.
   - Stack
     Widget yang digunakan untuk menumpuk widget anak di atas widget anak yang lain.
   - Table
     Menampilkan widget - widget anak dalam bentuk baris dan kolom.
   - Wrap
     Widget yang digunakan untuk menyusun widget anak dalam bentuk baris dan kolom, dan secara otomatis membungkus widget ke baris baru jika melebihi lebar yang ditentukan.
     
## Elemen Input pada Form yang Digunakan pada Tugas 8 
   Pada Tugas 8 saya menggunakan elemen input yang berupa TextFormField. TextFormField adalah widget yang digunakan untuk membuat kolom input teks yang dapat diisi oleh pengguna. TextFormField       secara otomatis menangani berbagai tugas terkait input teks, seperti menangkap input, menampilkan pesan kesalahan, dan memberikan berbagai fitur validasi.

## Penerapan clean architecture pada aplikasi Flutter
   Clean Architecture membagi proyek menjadi tiga lapisan utama:
   - Lapisan Data & Platform:
     - Lapisan data berada di lapisan paling luar dan terdiri dari kode sumber yang terkait dengan data, seperti Rest API, database lokal, Firebase, atau sumber data lainnya.
     - Juga termasuk kode platform yang membangun tampilan aplikasi, seperti widget dalam Flutter.
   - Lapisan Presentation:
     - Lapisan presentasi bertindak sebagai penghubung antara lapisan data dan tampilan aplikasi, dan sering disebut sebagai repository.
     - Kode untuk manajemen keadaan aplikasi, seperti provider, controller, BLoC, dan sejenisnya, dapat ditempatkan di sini.
   - Lapisan Domain:
     - Lapisan domain adalah lapisan terdalam dalam Clean Architecture.
     - Kode di lapisan ini mencakup logika bisnis aplikasi, seperti entities dan use cases.
   Setiap lapisan bergantung pada lapisan lainnya. Lapisan luar kan bergantung pada lapisan bagian dalam dan seterusnya. Lapisan yang tidak bergantung pada lapisan lain di sini hanya lapisan         domain, sehingga aplikasi bisa beradpatasi dan dinamis. Sebagai contoh, ketika ingin beralih dari state management menggunakan provider ke BLoC, migrasi tersebut tidak akan mengganggu    
   business-logic yang sudah ada.

  
     
     

   




