# BakeryShop - Fresh Baked Goods Everyday!

# Tugas 7 
## Perbedaan Stateless dan Stateful Widget dalam Pengembangan Aplikasi Flutter 
   - Stateless Widget 
     Stateless Widget merupakan widget yang bersifat statis. Properti dan penampilan stateless widget tidak bisa diubah ketika aplikasi sedang dijalankan. Stateless widget di-build hanya dengan konsigurasi yang telah diinisiasi sejak awal. 
   - Stateful Widget 
     Stateful Widget merupakan widget yang bersifat dinamis. Stateful widget dapat mengubah properti yang dimiliki ketika aplikasi dijalankan. Penampilan pada stateful widget dapat diubah sebagai bentuk respon dari interaksi pengguna atau saat widget tersebut menerima data. 

## Widget yang digunakan dalam menyelesaikan tugas 7 beserta fungsinya
   - ```MyHomePage```
     - Digunakan sebagai widget utama untuk mengatur tata letak struktur tampilan home page. 
   - ```AppBar```
     - Widget untuk membuat bar yang terletak pada bagian atas layar. 
   - ```Scaffold```
     - Widget utama untuk membuat sebuah halaman pada flutter dengan layout design dasar.
   - ```Padding```
     - Widget yang digunakan untuk mengatur jarak pada disekitar widget atau kumpulan widget lain. 
   - ```Column```
     - Widget yang digunakan untuk mengatur tata letak widget lain secara vertikal.
   - ```Text```
     - Widget untuk menampilkan serangkaian teks dalam aplikasi.
   - ```GridView```
     - Widget yang digunakan untuk menampilan elemen - elemen dalam bentuk grid. 
   - ```ShopCard```
     - Digunakan untuk menampilkan item dalam bentuk card dan dapat mengatur properti card secara unik (berbeda dengan widget lain) seperti warna, text, dan icon. 
   - ```Material```
     - Digunakan untuk mengatur tampilan dan action pada card.
   - ```InkWell```
     - Digunakan untuk menambahkan action pada widget.
   - ```Container```
     - Digunakan sebagai wadah untuk memuat widget lainnya. 
   - ```Icon```
     - Widget ini untuk membuat ikon di aplikasi.
   - ```SingleChildScrollView```
     - Widget yang digunakan untuk mengatur konten pada aplikasi agar bisa di-scroll secara vertikal. 

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
   - ```Align```
     - Widget yang digunakan untuk menyusun widget anak sesuai dengan alignment tertentu, dan dapat mengatur ulang ukurannya berdasarkan ukuran widget anak. 
   - ```Container```
     - Widget yang menggabungkan widget-widget umum untuk menggambar, mengatur penempatan, dan penentuan ukuran.
   - ```ConstrainedBox```
     - Widget yang memberlakukan batasan tambahan pada widget anaknya. ConstrainedBox sigunakan untuk mengatur batasan minimal dan maksimal untuk lebar, tinggi, dan kedalaman widget anak.
   - ```GridView```
     - Widget yang digunakan untuk menampilkan data dalam bentuk grid atau tabel. Widget ini dapat menyusun widget anak dalam susunan baris dan kolom, mirip dengan tata letak tabel.
   - ```LayoutBuilder```
     - Widget yang digunakan untuk membangun widget sesuai dengan batas atau ukuran yang diberikan.
   - ```ListView```
     - Widget yang digunakan untuk menampilkan widget anak dalam list yang dapat di-scroll. 
   -```Padding```
     - Widget yang digunakan untuk mengatur padding atau ruang kosong yang ada di sekeliling widget anak.
   - ```Stack```
     - Widget yang digunakan untuk menumpuk widget anak di atas widget anak yang lain.
   - ```Table```
     - Menampilkan widget - widget anak dalam bentuk baris dan kolom.
   -```Wrap```
     - Widget yang digunakan untuk menyusun widget anak dalam bentuk baris dan kolom, dan secara otomatis membungkus widget ke baris baru jika melebihi lebar yang ditentukan.
     
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

   Setiap lapisan bergantung pada lapisan lainnya. Lapisan luar kan bergantung pada lapisan bagian dalam dan seterusnya. Lapisan yang tidak bergantung pada lapisan lain di sini hanya lapisan   
   domain, sehingga aplikasi bisa beradpatasi dan dinamis. Sebagai contoh, ketika ingin beralih dari state management menggunakan provider ke BLoC, migrasi tersebut tidak akan mengganggu
   business-logic yang sudah ada.

## Implementasi Tugas 8 
   1. Membuat halaman formulir untuk tambah item baru.
      - Membuat berkas baru dengan nama ```shoplist_form.dart``` pada folder baru ```screens``` di dalam folder ```lib```. ```TextFormField``` yang digunakan akan dibuat untuk menerima tiga elemen input.
      - Tiga elemen input berupa ```name```, ```amount```, ```description``` yang dilengkapi dengan validasi elemen input. 
        ```
        children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nama Produk",
                      labelText: "Nama Produk",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _name = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Jumlah",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
  
                    onChanged: (String? value) {
                      setState(() {
                        _amount = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Jumlah tidak boleh kosong!";
                      }
                      if (int.tryParse(value) == null) {
                        return "Jumlah harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Deskripsi",
                      labelText: "Deskripsi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _description = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Deskripsi tidak boleh kosong!";
                      }
                      return null;
                    },
                  ),
                ),
        ```
      - Tombol ```Save```
        ```
        child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.lightBlue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Item addItem = Item(_name,_amount,_description);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Produk berhasil tersimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Nama: $_name'),
                                      // TODO: Munculkan value-value lainnya
                                      Text('Jumlah: $_amount'),
                                      Text('Deskripsi: $_description'),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        _formKey.currentState!.reset();
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
   2. Mengarahkan pengguna ke halaman Form ketika menekan tombol ```Tambah Item```
      - Menambahkan kode berikut pada fungsi ```onTap()``` yang terdapat pada berkas ```shopcard.dart``` yang terletak di folder ```lib/widgets```
         ```
         if (item.name == "Tambah Produk") {
             Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => ShopFormPage(),
         ```
   3. Memunculkan data sesuai isi formulir dalam bentuk ```pop-up```
      - Menambahkan kode berikut pada berkas ```shoplist_form.dart``` yang terletak di folder ```lib/screens```
        ```
        onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Item addItem = Item(_name,_amount,_description);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Produk berhasil tersimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Nama: $_name'),
                                      Text('Jumlah: $_amount'),
                                      Text('Deskripsi: $_description'),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        _formKey.currentState!.reset();
                        }
                      },
        ``` 
   4. Menambahkan drawer
      - Membuat berkas baru dengan nama ```left_drawer.dart``` pada folder ```lib/widgets```.Isi dari berkas tersebut :
         ```
         import 'package:bakery_shop/screens/list_item.dart';
         import 'package:flutter/material.dart';
         import '../screens/menu.dart';
         import '../screens/shoplist_form.dart';
         
         class LeftDrawer extends StatelessWidget {
           const LeftDrawer({super.key});
         
           @override
           Widget build(BuildContext context) {
             return Drawer(
               child: ListView(
                 children: [
                   const DrawerHeader(
                     decoration: BoxDecoration(
                       color: Colors.lightBlue,
                     ),
                     child: Column(
                       children: [
                         Text(
                           'BakeryShop',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                         Padding(padding: EdgeInsets.all(10)),
                         Text(
                           "Catat seluruh keperluan belanjamu di sini!",
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 15,
                             fontWeight: FontWeight.normal,
                           )
                         ),
                       ],
                     ),
                   ),
                   ListTile(
                     leading: const Icon(Icons.home_outlined),
                     title: const Text('Halaman Utama'),
                     // Bagian redirection ke MyHomePage
                     onTap: () {
                       Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                           builder: (context) => MyHomePage(),
                         )
                       );
                     },
                   ),
                   ListTile(
                     leading: const Icon(Icons.add_shopping_cart),
                     title: const Text('Tambah Produk'),
                     // Bagian redirection ke ShopFormPage
                     onTap: () {
                       Navigator.push(
                         context, 
                         MaterialPageRoute(
                           builder: (context) => ShopFormPage(),
                         )
                       );
                     },
                   ),
                   ListTile(
                           leading: const Icon(Icons.list),
                           title: const Text('Lihat Produk'),
                           // Bagian redirection ke ShopFormPage
                           onTap: () {
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => ListItem()));
                           },
                         ),
                 ],
               ),
             );
           }
         }
         ```
# Tugas 9 
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
   Pengambilan data JSON tanpa membuat model terlebih dahulu tetap bisa dilakukan. Dalam flutter, data JSON dapat diambil dan dikelola langsung dengan menyimpan data JSON tersebut di dalam map.      Namun, pengambilan data dengan metode ini kurang baik jika dibandingkan pengambilan data menggunakan model. Mengelola data langsung dari JSON lebih rumit karena setiap field data membutuhkan      penanganan secara manual, tidak ada kemanan tipe data, dan sulit mengubah struktur data. Faktor - faktor ini membuat pengolahan data secara langsung dari JSON menjadi tidak efektif dan kode       menjadi sulit dibaca. 

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
   ```CookieRequest``` merupakan kelas untuk mengelola HTTP request serta cookie yang terkait. ```CookieRequest``` berperan penting untuk sistem autentikasi dan memiliki beberapa method seperti      ```get```, ```post```, ```login```, dan ```logout```.
   Beberapa fungsi dari CookieRequest adalah : 
   - Penanganan Cookie
     Dengan menggunakan CookieRequest, cookie yang dikirimkan dan diterima oleh aplikasi dalam HTTP Request dapat dikelola. CookieRequest memungkinkan aplikasi untuk menambah, menghapus, atau memperbarui cookie saat berkomunikasi dengan server.
   - Autentikasi
     Cookie dapat digunakan untuk menyimpan token autentikasi atau informasi sesi pengguna.
   - Menjaga konsitensi antara request
     CookieRequest memastikan bahwa cookie yang digunakan pada HTTP request tetap konsisten di seluruh aplikasi.
     Alasan untuk membagikan instance CookieRequest ke semua komponen di aplikasi Flutter adalah agar setiap komponen yang membutuhkan akses ke permintaan HTTP juga dapat mengelola cookie dengan       cara yang konsisten. Sehingga, ssemua komponen memiliki akses ke data pengguna yang sama.

##  Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
   1. Fetch Data
      Menggunakan HTTP request yang berupa ```http.get``` ke URL yang ditentukan.
   2. Menguraikan string JSON menjadi objek Dart yang dapat diakses dan digunakan dalam program
   3. Mengubah data JSON menjadi bentuk model berdasarkan model yang sudah dibuat sebelumnya. Hal ini dilakukan agar data lebih mudah diolah.
   4. Menampilkan data yang sudah didapat secara langsung atau melewati beberapa operasi logika di aplikasi flutter. Contoh, ```ListView.builder``` yang digunakan untuk menampilkan daftar data.

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
   1. Pengguna memasukkan data untuk autentikasi seperti username dan password (2 textfield).
   2. Aplikasi flutter mengirimkan data ke endpoint login Django menggunakan HTTP Request ```POST```.
   3. Django memproses permintaan login dengan melakukan autentikasi, lalu mengirimkan respons ke aplikasi flutter.
   4. Respons dari Django diterima oleh aplikasi flutter lalu aplikasi menampilkan hasil autentikasi.
      
## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing
   - ```ListView.builder```
     - Digunakan untuk membuat daftar item secara dinamis berdasarkan sumber data seperti List atau data yang diperoleh melalui fetch dari API.
   - ```AlertDialog```
     - Digunakan untuk menampilkan dialog yang berisi pesan atau peringatan kepada pengguna.
   - ```Provider```
     - Memungkinkan data untuk diakses dan diperbarui dari berbagai bagian dalam aplikasi dengan cara yang mudah dan efisien.
   - ```FutureBuilder```
     - Digunakan di Flutter untuk membangun UI berdasarkan nilai dari suatu ```Future```.
   - ```Navigator```
     - Memungkinkan navigasi antara berbagai layar atau halaman dalam aplikasi Flutter.
   - ```ElevatedButton```
     - Digunakan untuk membuat tombol dengan latar belakang yang terangkat (elevated).
   - ```FloatingActionButton```
     - Digunakan untuk mwmbuat tombol yang melayang di atas antarmuka pengguna.
   - ```MaterialPageRoute```
     - Menangani navigasi antar layar di dalam aplikasi yang menggunakan desain Material.

## Implementasi Tugas 9
   1. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
      - Menjalankan command ```python manage.py startapp authentication``` pada project Django untuk membuat ```django-app``` bernama ```authentication```. Setelah itu, menambahkan                        ```authentication``` di ```INSTALLED_APPS``` yang ada di berkas ```settings.py``` di dalam proyek utama.
      - Menjalankan command ```pip install django-cors-headers``` untuk menginstal library yang dibutuhkan. Setealh itu, menambahkan ```corsheaders``` ke ```INSTALLED_APPS``` dan                          ```corsheaders.middleware.CorsMiddleware``` ke ```MIDDLEWARE``` yang terdapat di berkas ```settings.py``` di proyek utama.
      - Menambahkan variabel berikut ini pada berkas ```setings.py``` di aplikasi django.
        ```
        CORS_ALLOW_ALL_ORIGINS = True
        CORS_ALLOW_CREDENTIALS = True
        CSRF_COOKIE_SECURE = True
        SESSION_COOKIE_SECURE = True
        CSRF_COOKIE_SAMESITE = 'None'
        SESSION_COOKIE_SAMESITE = 'None'
        ```
      - Membuat fungsi untuk login pada direktori ```authentication/views.py```
        ```
         from django.shortcuts import render
         from django.contrib.auth import authenticate, login as auth_login
         from django.http import JsonResponse
         from django.views.decorators.csrf import csrf_exempt
         
         @csrf_exempt
         def login(request):
             username = request.POST['username']
             password = request.POST['password']
             user = authenticate(username=username, password=password)
             if user is not None:
                 if user.is_active:
                     auth_login(request, user)
                     # Status login sukses.
                     return JsonResponse({
                         "username": user.username,
                         "status": True,
                         "message": "Login sukses!"
                         # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
                     }, status=200)
                 else:
                     return JsonResponse({
                         "status": False,
                         "message": "Login gagal, akun dinonaktifkan."
                     }, status=401)
         
             else:
                 return JsonResponse({
                     "status": False,
                     "message": "Login gagal, periksa kembali email atau kata sandi."
                 }, status=401)
        ```
        Lalu membuat berkas ```ursl.py``` pada ```authentication``` dan menambahkan routing url yang sudah dibuat tersebut.
        - Menambahkan URL routing ``` path('auth/', include('authentication.urls'))``` pada berkas ```urls.py``` yang ada di proyek utama django.
     2. Membuat halaman login pada proyek flutter
        - Menjalankan command ```flutter pub add provider``` dan ```flutter pub add pbp_django_auth``` untuk meng-install package flutter.
        - Menggunakan provider untuk modifikasi root widget untuk menyediakan ```CookieRequest``` library ke semua child widgets. 
          ```
          class MyApp extends StatelessWidget {
             const MyApp({Key? key}) : super(key: key);
         
             @override
             Widget build(BuildContext context) {
                 return Provider(
                     create: (_) {
                         CookieRequest request = CookieRequest();
                         return request;
                     },
                     child: MaterialApp(
                         title: 'BakeryShop',
                         theme: ThemeData(
                             colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                             useMaterial3: true,
                         ),
                         home: MyHomePage()),
                     ),
                 );
             }
          }

          ```
        - Membuat file baru dengan nama ```login.dart``` pada direktori ```screens```.           Isi file ```login.dart``` :
          ```
            import 'package:bakery_shop/screens/menu.dart';
            import 'package:flutter/material.dart';
            import 'package:pbp_django_auth/pbp_django_auth.dart';
            import 'package:provider/provider.dart';
            
            void main() {
                runApp(const LoginApp());
            }
            
            class LoginApp extends StatelessWidget {
            const LoginApp({super.key});
            
            @override
            Widget build(BuildContext context) {
                return MaterialApp(
                    title: 'Login',
                    theme: ThemeData(
                        primarySwatch: Colors.blue,
                ),
                home: const LoginPage(),
                );
                }
            }
            
            class LoginPage extends StatefulWidget {
                const LoginPage({super.key});
            
                @override
                _LoginPageState createState() => _LoginPageState();
            }
            
            class _LoginPageState extends State<LoginPage> {
                final TextEditingController _usernameController = TextEditingController();
                final TextEditingController _passwordController = TextEditingController();
            
                @override
                Widget build(BuildContext context) {
                    final request = context.watch<CookieRequest>();
                    return Scaffold(
                        appBar: AppBar(
                            title: const Text('Login'),
                        ),
                        body: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    TextField(
                                        controller: _usernameController,
                                        decoration: const InputDecoration(
                                            labelText: 'Username',
                                        ),
                                    ),
                                    const SizedBox(height: 12.0),
                                    TextField(
                                        controller: _passwordController,
                                        decoration: const InputDecoration(
                                            labelText: 'Password',
                                        ),
                                        obscureText: true,
                                    ),
                                    const SizedBox(height: 24.0),
                                    ElevatedButton(
                                        onPressed: () async {
                                            String username = _usernameController.text;
                                            String password = _passwordController.text;
            
                                            // Cek kredensial
                                            // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                            // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                            // gunakan URL http://10.0.2.2/
                                            final response = await request.login("http://<APP_URL_KAMU>/auth/login/", {
                                            'username': username,
                                            'password': password,
                                            });
                                
                                            if (request.loggedIn) {
                                                String message = response['message'];
                                                String uname = response['username'];
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => MyHomePage()),
                                                );
                                                ScaffoldMessenger.of(context)
                                                    ..hideCurrentSnackBar()
                                                    ..showSnackBar(
                                                        SnackBar(content: Text("$message Selamat datang, $uname.")));
                                                } else {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) => AlertDialog(
                                                        title: const Text('Login Gagal'),
                                                        content:
                                                            Text(response['message']),
                                                        actions: [
                                                            TextButton(
                                                                child: const Text('OK'),
                                                                onPressed: () {
                                                                    Navigator.pop(context);
                                                                },
                                                            ),
                                                        ],
                                                    ),
                                                );
                                            }
                                        },
                                        child: const Text('Login'),
                                    ),
                                ],
                            ),
                        ),
                    );
                }
            }
          
          ```
        - Mengubah kode ```home:MyHomePage()``` menjadi ```home: LoginPage()``` pada file ```main.dart``` di widget ```MatrialApp()```

      3. Membuat model kustom
         - Membuka endpoint ```JSON``` pada proyek django dan menyalin data ```JSON```.
         - Membuka situs web ```Quicktype``` dan menyetel nama model menjadi ```Item```, source type ```JSON```, dan language menjadi ```Dart```.
         - Menempelkan data ```JSON``` yang tadi sudah disalin.
         - Menyalin kode yang sudah di generate oleh web ```Quicktype``` dan menempelkannya pada file baru dengan nama ```product.dart``` yang ada direktori ```lib/models```.
      4. Penerapan Fetch Data dari Django untuk Ditampilkan ke Flutter
         - Menjalankan command ```flutter pub add http``` untuk menambahkan package http.
         - Menambahkan kode berikut di direktori ```android/app/src/main/AndroidManifest.xml```
           ```
           <application>
           ...
           </application>
           <!-- Required to fetch data from the Internet. -->
           <uses-permission android:name="android.permission.INTERNET" />
           ```
         - Mengubah berkas ```list_item.dart``` yang sudah dibuat sebelumnya saat implementasi bonus tugas 8 di direktori ```lib/screens``` dengan isi kode:
           ```
            import 'package:flutter/material.dart';
            import 'package:http/http.dart' as http;
            import 'dart:convert';
            import 'package:bakery_shop/models/product.dart';
            import 'package:bakery_shop/widgets/left_drawer.dart';
            
            
            class ListItem extends StatefulWidget {
                const ListItem({Key? key}) : super(key: key);
            
                @override
                _ListItem createState() => _ListItem();
            }
            
            class _ListItem extends State<ListItem> {
            Future<List<Item>> fetchProduct() async {
                
                var url = Uri.parse(
                    'http://127.0.0.1:800/json/');
                var response = await http.get(
                    url,
                    headers: {"Content-Type": "application/json"},
                );
            
                // melakukan decode response menjadi bentuk json
                var data = jsonDecode(utf8.decode(response.bodyBytes));
            
                // melakukan konversi data json menjadi object Product
                List<Item> list_product = [];
                for (var d in data) {
                    if (d != null) {
                        list_product.add(Item.fromJson(d));
                    }
                }
                return list_product;
            }
            
            @override
            Widget build(BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                    title: const Text('Product'),
                    ),
                    drawer: const LeftDrawer(),
                    body: FutureBuilder(
                        future: fetchProduct(),
                        builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.data == null) {
                                return const Center(child: CircularProgressIndicator());
                            } else {
                                if (!snapshot.hasData) {
                                return const Column(
                                    children: [
                                    Text(
                                        "Tidak ada data produk.",
                                        style:
                                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                                    ),
                                    SizedBox(height: 8),
                                    ],
                                );
                            } else {
                                return ListView.builder(
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (_, index) => Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 12),
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                "${snapshot.data![index].fields.name}",
                                                style: const TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text("${snapshot.data![index].fields.price}"),
                                                const SizedBox(height: 10),
                                                Text(
                                                    "${snapshot.data![index].fields.description}")
                                            ],
                                            ),
                                        ));
                                }
                            }
                        }));
                }
            }

           ```
      5. Integrasi Form Flutter Dengan Layanan Django.
         - Menambahkan fungsi baru di direktori ```main/views.py``` pada proyek django.
           ```
            @csrf_exempt
            def create_product_flutter(request):
                if request.method == 'POST':
                    
                    data = json.loads(request.body)
            
                    new_product = Product.objects.create(
                        user = request.user,
                        name = data["name"],
                        price = int(data["price"]),
                        description = data["description"]
                    )
            
                    new_product.save()
            
                    return JsonResponse({"status": "success"}, status=200)
                else:
                    return JsonResponse({"status": "error"}, status=401)

           ```
         - Menambahkan URL routing pada ```main/urls.py```
           ```
           path('create-flutter/', create_product_flutter, name='create_product_flutter'),
           ```
         - Menghubungkan halaman ```shoplist_form.dart dengan``` ```CookieRequest``` pada proyek flutter.
           ```
           @override
           Widget build(BuildContext context) {
              final request = context.watch<CookieRequest>();
            
              return Scaffold(
           
           ```
         - Mengubah perintah pada ```onPressed: ()``` button.
           ```
           onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                          // Kirim ke Django dan tunggu respons
                          // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                          final response = await request.postJson(
                          "http://127.0.0.1:8000/create-flutter/",
                          jsonEncode(<String, String>{
                              'name': _name,
                              'amount': _amount.toString(),
                              'price': _price.toString(),
                              'description': _description,

                              // TODO: Sesuaikan field data sesuai dengan aplikasimu
                          }));
                          if (response['status'] == 'success') {
                              ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Produk baru berhasil disimpan!"),
                              ));
                               showDialog(
                                context: context,
                                builder: (context) {
                                return AlertDialog(
                                title: const Text('Produk berhasil tersimpan'),
                                content: SingleChildScrollView(
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: $_name'),
                                    Text('Harga: $_price'),
                                    Text('Jumlah: $_amount'),
                                    Text('Deskripsi: $_description'),
                                    ],
                                    ),
                                  ),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              },
                         );
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyHomePage()),
                              );
                          } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                  content:
                                      Text("Terdapat kesalahan, silakan coba lagi."),
                              ));
                          }
                      }
                  },

           ```
      6. Implementasi Fitur Logout
         - Menambahkan fungsi logout pada direktori ```authentication/views.py``` pada proyek django
           ```
            from django.contrib.auth import logout as auth_logout
            ...
            @csrf_exempt
            def logout(request):
                username = request.user.username
            
                try:
                    auth_logout(request)
                    return JsonResponse({
                        "username": username,
                        "status": True,
                        "message": "Logout berhasil!"
                    }, status=200)
                except:
                    return JsonResponse({
                    "status": False,
                    "message": "Logout gagal."
                    }, status=401)
              ```
            - Menambahkan URL routing di ```authentication/urls.py```
              ```
              path('logout/', logout, name='logout'),
              ```
            - Pada proyek flutter di direktori ```lib/eidgets/shop_card.dart```, menambahkan kode berikut :
              ```
               @override
               Widget build(BuildContext context) {
                   final request = context.watch<CookieRequest>();
                   return Material(
              ```
            - Mengubah perintah ```onTap: () {...}``` pada widget ```Inkwell``` menjadi ```onTap: () async {...}``` agar logout dapat dilakukan secara asinkronus dan menambahkan kode pada perintah ```onTap :() async {...}``` tersebut.
              ```
              ...
              else if (item.name == "Logout") {
                 final response = await request.logout(
                     // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                     "http://<APP_URL_KAMU>/auth/logout/");
                 String message = response["message"];
                 if (response['status']) {
                   String uname = response["username"];
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                     content: Text("$message Sampai jumpa, $uname."),
                   ));
                   Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(builder: (context) => const LoginPage()),
                   );
                 } else {
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                     content: Text("$message"),
                   ));
                 }
               }
              ...
              ```
              
           
            
           
           
          
      

   
      
      
