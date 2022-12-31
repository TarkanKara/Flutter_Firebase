## [Authentication](https://firebase.flutter.dev/docs/auth/overview)
 
 * main() metodu içerisinde runnApp, MyApp metodunu çalıştırmadan önce bir komut çalıştırmak istediğimizde ve bu kod native tarafa müdahale edecek, native tarafta çalışacak bir kod ise mutlaka **WidgetsFlutterBinding.ensureInitialized();** komutunu vermemiz gerekiyor. Kısacası runApp ten önce native tarafa iletişime geçecek bir kod satırlarını yazıyoruz.

 ```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
```

* Bu proje örneğinde kullanıcı adı ve şifre kullanarak kullanıcı oluşturup, bu kulanıcılar ile projede login işlemlerin yapılması 
* Böyle bir login işlemlerin yani Authentication işlemleri yapılacaksa uygulama içerisindeki farklı sayfalarda veri alışverişi olacağı için bu verileri daha iyi yönetibilmek adına state managment yardımcı olacaktır. Bu proje provider kullanımı ile alakalı
* **[provider packages insatalled](https://pub.dev/packages/provider)**
* **[firebase_core packages installed](https://pub.dev/packages/firebase_core)**
* **[firebase_auth packages installed](https://pub.dev/packages/firebase_auth)**

 ```dart
dependencies:
  provider: ^6.0.5
  firebase_core: ^2.4.0
  firebase_auth: ^4.2.4
  
```
* firebase_core paketini kullanarak projeyi firebase ile ilişkilendirdik. Authentication işlemleri içinde firebase_auth paketini kullanıyot olacağız.
 

