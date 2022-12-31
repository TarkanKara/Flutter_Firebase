## **[FlutterFire](https://firebase.flutter.dev/)**
* **FlutterFire**, Flutter uygulamanızı **[Firebase](https://firebase.google.com/)**'e bağlayan bir dizi **Flutter eklentisidir.**
* **[FlutterFire View Source](https://github.com/firebase/flutterfire)**
* [Flutter için Firebase'i tanıyın](https://firebase.google.com/codelabs/firebase-get-to-know-flutter#0)
* [Flutter için Firebase'i tanıyın -VİDEO](https://www.youtube.com/watch?v=wUSkeTaBonA&t=3s)

## **[FlutterFire Plugins](https://firebase.flutter.dev/)**
| **Packages Name**  | **Documentation**  | **View Source**  |
| ------------ | ------------ | ------------ |
|  **[Core](https://pub.dev/packages/firebase_core)** | **[Core](https://firebase.flutter.dev/docs/core/usage/)**  | **[firebase_core](https://github.com/firebase/flutterfire/tree/master/packages/firebase_core)**  |
| **[Authentication](https://pub.dev/packages/firebase_auth)**  | **[Authentication](https://firebase.flutter.dev/docs/auth/overview/)**  | **[firebase_auth](https://github.com/firebase/flutterfire/tree/master/packages/firebase_auth)**  |
| **[Realtime Database](https://pub.dev/packages/firebase_database)**  | **[Realtime Database](https://firebase.flutter.dev/docs/database/overview/)**  | **[firebase_database](https://github.com/firebase/flutterfire/tree/master/packages/firebase_database)**  |
| **[Remote Config](https://pub.dev/packages/firebase_remote_config)**  | **[Remote Config](https://firebase.flutter.dev/docs/remote-config/overview/)**  | **[firebase_remote_config](https://github.com/firebase/flutterfire/tree/master/packages/firebase_remote_config)**  |
| **[Cloud Firestore](https://pub.dev/packages/cloud_firestore)**  | **[Cloud Firestore](https://firebase.flutter.dev/docs/firestore/overview/)**  | **[cloud_firestore](https://github.com/firebase/flutterfire/tree/master/packages/cloud_firestore)**  |
| **[Cloud Functions](https://pub.dev/packages/cloud_functions)**  | **[Cloud Functions](https://firebase.flutter.dev/docs/functions/overview/)**  | **[cloud_functions](https://github.com/firebase/flutterfire/tree/master/packages/cloud_functions)**  |
| **[Cloud Messaging](https://pub.dev/packages/firebase_messaging)**  | **[Cloud Messaging](https://firebase.flutter.dev/docs/messaging/overview/)**  | **[firebase_messaging](https://github.com/firebase/flutterfire/tree/master/packages/firebase_messaging)**  |
|  **[Cloud Storage](https://pub.dev/packages/firebase_storage)** | **[Cloud Storage](https://firebase.flutter.dev/docs/storage/overview/)**  | **[firebase_storage](https://github.com/firebase/flutterfire/tree/master/packages/firebase_storage)**  |

## **[FlutterFire Installation](https://firebase.flutter.dev/docs/overview/)**
* A - [Using the FlutterFire CLI](https://firebase.flutter.dev/docs/cli)
* B - [Manual Installation](https://firebase.flutter.dev/docs/manual-installation)

## A - **How to add Firebase to a Flutter app with FlutterFire CLI (FlutterFire CLI ile Flutter uygulamasına Firebase nasıl eklenir)**

![firebase cli](https://user-images.githubusercontent.com/59411109/208980928-c9cdd8c4-07b5-4774-bd4a-89a0e18ef949.png)

* **FlutterFire CLI**, desteklenen tüm platformlarda **FlutterFire** kurulum sürecini kolaylaştırmaya yardımcı olacak komutlar sağlayan kullanışlı bir komut satır arayüzüdür.
* **FlutterFire CLI**, temeldeki **[Firebase CLI](https://firebase.google.com/docs/cli)**'ye bağlıdır.

:bangbang:

* Node.js gerektiren kurulum adımlarıdır.

### Step 1 :
* **[Node.js](https://nodejs.org/en/download/)** yükle

### Step 2 :
* **Node.js** yüklendikten sonra,
* **Windows Komut Satırı(cmd)** Terminal Ekranını aç
* **Node.js**'yi yüklemek, **npm** komut araçlarını otomatik olarak yükler.
* **Firebase CLI**'yi **npm** aracılığıyla kuralım ve aşağıdaki kod satırını çalıştıralım.

```dart
npm install -g firebase-tools
```

* Yukarıdaki komut, global olarak kullanılabilen **firebase** komutunu etkinleştirir.
* Aşağıdaki görüntüyü alman gerekir.

![npm](https://user-images.githubusercontent.com/59411109/208956640-1f7af5a9-1c29-4cfe-8275-da2b5644413f.png)

* **npm komutu** ile **firebase komutunu** etkileştirdik.

### Step 3 :
* Aşağıdaki komutu çalıştırarak **FlutterFire CLI**'yi kurun:

```dart
dart pub global activate flutterfire_cli
```

* yukarıdaki kod satırını yazarak **flutterfire** komutunu kullanıyor olacağız.
* Şöyle bir uyarı alacaksın -----> **Warning:** Pub installs executables into **C:\Users\unnah\AppData\Local\Pub\Cache\bin**, which is not on your path.

![pub](https://user-images.githubusercontent.com/59411109/208961500-344dbebd-b2f7-4f06-875d-1b4fd0c56d3f.png)

### Step 4 :
* Windows arama moturuna sistem ortam değişkenlerini düzenleyeni tıkla (Bu Bilgisayar > Özellikler > Gelişmiş sistem ayarları > ortam değişkenleri > PATH > Duzenle > Yeni)
* bir önceki adımda verilen path i ortam değişkenlerine ekle 
* Mevcut Komut satırı(cmd) ekranını kapatıp tekrardan aç ve  **dart pub global activate flutterfire_cli** komut satırını tekrardan çalıştır. 
* Artık **flutterfire** komutunu kullanıyor olacağız.

### Step 5 :
* CLI'yi yükledikten sonra kimlik doğrulaması yapmalısınız
* Aşağıdaki komutu çalıştırarak Google hesabınızı kullanarak Firebase'e giriş yapın

```dart
C:\Users\unnah>firebase login

i  Firebase optionally collects CLI and Emulator Suite usage and error reporting information to help improve our products. Data is collected in accordance with Google's privacy policy (https://policies.google.com/privacy) and is not used to identify you.

? Allow Firebase to collect CLI and Emulator Suite usage and error reporting information? (Y/n)
```

* Y (Yes) deyip devam ediyoruz.
* Bizi firebase console hesabına giriş yapmamız için yönlendirme yapacaktır.

![firebase login](https://user-images.githubusercontent.com/59411109/208972066-3844c24d-15c1-4ff0-af29-3ddb8164c766.png)

* Artık gerekli adımlar ve izinler verildikten sonra firebase hesabına giriş yapmış oluyoruz.

### Step 6 :
* Artık **cmd terminali kapatıp** mevcut **projemizin Vs code terminaline** gidelim.
* Mevcut projenizin Terminal ekranına gitmeden önce projenize **dependencies** altına **[firebase_core](https://pub.dev/packages/firebase_core)** paketini yüklüyoruz.

```dart
dependencies:
  firebase_core: ^2.4.0
```
### Step 7 :
* **[Firebase Console](https://console.firebase.google.com/u/1/project/uskudarfirebase-13022/overview)** gidip yeni bir firebase projesi oluşturalım.
* **FlutterFire-Demo** adında bir proje oluşturdum.
* Mevcut projemizin terminal ekranına aşağıdaki komutu **(flutterfire configure)** yazalım

```dart
PS C:\FlutterProjects\firebase_flutter> flutterfire configure

i Found 2 Firebase projects.
? Select a Firebase project to configure your Flutter application with ›
❯ flutterfire-demo-57878 (FlutterFire-Demo)
  uskudarfirebase-13022 (UskudarFirebase)
  <create a new project>
```

* Yön tuşları ile oluşturduğum projeyi seçiyorum. **flutterfire-demo-57878 (FlutterFire-Demo)**
* Projemizi hangi platformlara uyarlamamız için bizlerden seçim yapmamız isteniyor.
* Space tuşu ile kaldırıp ekleyebiliriz. Şimdilik sadece android ve ios tek seçecem ve enter tuşuna basıyoruz.

```dart
PS C:\FlutterProjects\firebase_flutter> flutterfire configure
i Found 2 Firebase projects.
✔ Select a Firebase project to configure your Flutter application with · flutterfire-demo-57878 (FlutterFire-Demo)
? Which platforms should your configuration support (use arrow keys & space to select)? ›
✔ android
✔ ios
  macos
  web
```

* Artık lib klasörü altında **firebase_options.dart** dosyasının gelmiş olacak.

### Step 8 :
* main.dart dosyasının içeriisne gelip **runApp metodunu** düzenliyoruz.

```dart
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

```
### Step 9 :
* Firebase CLI entegrasyon işlemleri node.js kurulumuyla bukadar.



