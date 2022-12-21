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
* **FlutterFire CLI**, desteklenen tüm platformlarda **FlutterFire** kurulum sürecini kolaylaştırmaya yardımcı olacak komutlar sağlayan kullanışlı bir komut satır arayüzüdür.
* **FlutterFire CLI**, temeldeki **[Firebase CLI](https://firebase.google.com/docs/cli)**'ye bağlıdır.
* Step 1 :
    * [Node.js](https://nodejs.org/en/download/) yükle
* Step 2 :
    * Node.js yüklendikten sonra,
    * Windows PowerShell Terminal Ekranını aç
    * Node.js'yi yüklemek, npm komut araçlarını otomatik olarak yükler.
    * Firebase CLI'yi **npm** aracılığıyla kuralım

```dart
npm install -g firebase-tools
```

* Yukarıdaki komut, global olarak kullanılabilen **firebase** komutunu etkinleştirir.
* Aşağıdaki görüntüyü alman gerekir.

![npm](https://user-images.githubusercontent.com/59411109/208956640-1f7af5a9-1c29-4cfe-8275-da2b5644413f.png)

* node.js in npm komutu ile firebase komutunu etkileştirdik.
* Step 3 :
    * Aşağıdaki komutu çalıştırarak **FlutterFire CLI**'yi kurun:

```dart
dart pub global activate flutterfire_cli
```

* yukarıdaki kod satırını yazarak flutterfire komutunu kullanıyor olacağız.
* Şöyle bir uyarı alacaksın -----> **Warning:** Pub installs executables into **C:\Users\unnah\AppData\Local\Pub\Cache\bin**, which is not on your path.

![pub](https://user-images.githubusercontent.com/59411109/208961500-344dbebd-b2f7-4f06-875d-1b4fd0c56d3f.png)