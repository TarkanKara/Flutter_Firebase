## [Authentication](https://firebase.flutter.dev/docs/auth/overview)
 
 * main() metodu içerisinde runnApp, MyApp metodunu çalıştırmadan önce bir komut çalıştırmak istediğimizde ve bu kod **native(android veya ios)** tarafa müdahale edecek, native tarafta çalışacak bir kod ise mutlaka **WidgetsFlutterBinding.ensureInitialized();** komutunu vermemiz gerekiyor. Kısacası runApp ten önce native tarafa iletişime geçecek bir kod satırlarını yazıyoruz.

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
* Böyle bir login işlemlerin yani **Authentication** işlemleri yapılacaksa uygulama içerisindeki farklı sayfalarda veri alışverişi olacağı için bu verileri daha iyi yönetibilmek adına state managment yardımcı olacaktır. Bu proje **provider** kullanımı ile alakalı
  * **[provider packages insatalled](https://pub.dev/packages/provider)**
  * **[firebase_core packages installed](https://pub.dev/packages/firebase_core)**
  * **[firebase_auth packages installed](https://pub.dev/packages/firebase_auth)**

 ```dart
dependencies:
  provider: ^6.0.5
  firebase_core: ^2.4.0
  firebase_auth: ^4.2.4
```
* **firebase_core** paketini kullanarak projeyi firebase ile ilişkilendirdik. Authentication işlemleri içinde **firebase_auth** paketini kullanıyor olacağız.
* Temel mantık şu şekilde; firebase backend tarafından tanımladığım kullanıcı adı ve şifreyi uygulama tarafına taşıyabilmek adına bir model kullanmam gerekir. 
* Aynı zamanda firebase de kullanıcıları oluştururken veya var olan bir kullanıcıyla sign in işlemleri yaparken , uygulamaya giriş yaperken veya uygulamadan çıkış yaparken veya var olan bir kullanıcının halen authentication olup olmadığını, ne kadar sürede uygulamada online olduğunu kontrol etmemi sağlayacak bir servise ihtiyacım var.
* İlk olarak uygulama içerisinde kullanıcı bilgilerini taşıyacağım modeli oluşturalım.
* Firebase tarafında oluşturacağımız kullanıcının uniqe bir id si, mail hesabı varsa prfil fotoğrafı url si ve bir takım veriler mevcut. Biz user id ile user maili ile ilgili modeli oluşturalım.

 ```dart
class MyAppUser {
  final String userId;
  final String userMail;

  const MyAppUser({
    required this.userId,
    required this.userMail,
  });
}
```
* Service kısmına gelirsek, Servis kısımında şöyle bir mantık yürütebiliriz; Uygulama içerisinde kullanacağım gerçek bir backend im veya uygulama içerisinde backend daha tamamlanmamış ise çalışabileceğim fake bir service olabilir.Bunu isteyebilirim veya birden fazla service arasında geçiş yapmak isteyebilirim. Ve bu geçiş yapacağım service lerin hepsinin aynı prensiblere bağlı kalmasını isterim. Örnek verirsek firebase kullanırken 5 tane metodum var. Yeni kullanıcı oluştur, var olan kullanıcı ile giriş çıkış metotları ve bunları dinleyen metotlar gibi Fakat X bir service ile çalışırken 
bu metotlardan bazıları eksik veya daha fazla metot tanımlaması yapıyorum. Bu projenin daha sağlıklı geliştirme aşamasında yanlış bir tutum olurdu.
* Bunun önüne geçebilmek için soyut bir sınıf tanımlaması yapabiliriz. Bu projede bu service kullanan gerçek sınıflar mutlaka şu metotları icra etsin gibi.
* abstract bir sınıf olacak bu sadece bize projede kullanabileceğim metotlar ile ilgili yön gösterecek, rotamızı çizecek ve biz daha sonra somut yani gerçek sınıflar oluşturarak bu metotların içerisini dolduracağız.
* Çünkü hangi servisi kullanacak isem hangi backend di kullanacak isem kullanayım hepsinde aynı komutları kullanmıyoruz ilgili backend e bağlanabilmek için dolayısıyla soyut yani abstrack bir tanımlama yapıp içlerini ilgili servisleri somutlaştırırken yazmak daha doğru olacaktır.

 ```dart
abstract class IAuthService {
  //createUserWithEmailAndPassword
  Future<MyAppUser> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  //signInEmailAndPassword
  Future<MyAppUser> signInEmailAndPassword({
    required String email,
    required String password,
  });

  //signOut
  Future<void> signOut();

  //onAuthStateChanged
  Stream<MyAppUser?> get onAuthStateChanged;

}
```
* Uygulama içerisinde kullanacının logout yapıp yapmadığını veya halen uygulamada online olup olmadığını kontrol etmek adına **Stream** kullanacağız.

 ```dart
//onAuthStateChanged
  Stream<MyAppUser?> get onAuthStateChanged;
```

* Soyut sınıftan yararlanarak somut bir sınıf yaratalım.
* Firebase backend bağlanmamı sağlayacak bir nesneye ihtiyacım var.

 ```dart
final FirebaseAuth _authInstance = FirebaseAuth.instance;
```
 ```dart
 @override
  Future<MyAppUser> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    var tempUser = await _authInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
```
* **tempUser** geriye **UserCredential** döndürmekte oysa bizim abstract class ta oluşturduğumuz **createUserWithEmailAndPassword** metot ise geriye **MyAppUser** döndürmekte. 
* Bu gibi durumda **convert** işlemleri yapmamız gerekecektir.
* mixin classı oluşturalım
* Firebase servis classını with deyip mixin clasın ismini yazıyoruz.
* implements ise soyut yani abstrack classını bağladık.

 ```dart
class AuthService with ConvertUser implements IAuthService {}
```
 ```dart
MyAppUser convertUser(UserCredential userCredential) {
  return MyAppUser(
    userId: userCredential.user!.uid,
    userMail: userCredential.user!.email!,
  );
}
```