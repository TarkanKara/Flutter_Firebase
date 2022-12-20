## [What is Firebase?](https://firebase.google.com/docs)

![Firebase](https://user-images.githubusercontent.com/59411109/208673197-1fb5d6eb-60c1-4634-bc14-8ddd6deb1fcc.png)

*  Günümüzde uygulamalar platform farketmeksizin aynı veriye her cihazdan erişmek istiyor. Anlık verilerin senkronuna örnek olarak multi oyunculu oyunlarda oyunlara ait verilerinin senkronize edilmesi gibi düşünülebilir. 
* Uygulaması, birçok kullanıcı tarafından yüklenen geliştiricilerin de **kayıt - oturum bilgilerini tutma,** **uygulamaların kullanım verilerini analiz etme,** **yeni duyurular yapmak** için aynı zamanda **kullanıcıya bildirim gönderme,** **uygulamayı test etme** gibi işlemleri rahatlıkla yönetebileceği bir **yönetim paneli** gerekiyor.
* İşte Google tarafından yeni özelliklerin eklenmesiyle sürekli kendini geliştiren Firebase, bütün bu ihtiyaçları karşılayabilmek için uygulama geliştiricilerine **[ücretsiz](https://firebase.google.com/pricing/)** kullanım da sunan bir platformdur.
* Uygulama yönetimi, kullanım takip, veri depolama, bildirim gönderme gibi işlemleri, extra bir sunucuya ve sunucu taraflı kod yazmaya gerek kalmadan halleden Firebase, yeni geliştirici dostu arayüzünde **Realtime Database,** **Notification,** **Remote Config** gibi özelliklerle donatılmış her uygulama için ayrı ayrı ulaşım imkanı veriyor.
* Öne çıkan birkaç özelliğe değinmek gerekirse;
    * **Uygulama yönetimi,**
    * **Kullanıcı etkinlikleri,**
    * **Veri depolama,**
    * **Bildirim gönderimi.**
* *Firebase bu işlemler çerçevesinde ekstra bir sunucuya ve sunucu tarafında herhangi bir kod yazımına gerek olmaksızın yönetim paneli üzerinden çözüm sağlamakta.*
* Bu amaçla kullanılabilecek özellikler; 
    * **Realtime Database,**
    * **Notification** ve 
    * **Remote Config.** 
* Diğer yandan Firebase **Cloud Messaging (FCM)** ile anlık bildirim gönderiminde kullanılan **Google Cloud Messaging (GCM)’e** de alternatif olan Firebase, veritabanı yapısı içerisinde yer alan tablolar ve SQL yerine **root-child** olarak verileri **JSON (JavaScript Object Notation)** formatında tutmakta. 
* *Bu yapı ve özellikler itibariyle veritabanında gerçekleşen her değişikliğin anında diğer kullanıcıya iletilmesi mümkün hale gelmektedir.* Firebase teknolojisi sayesinde ise sunucu taraflı kod yazmaya gerek yoktur. 

![Firebase](https://user-images.githubusercontent.com/59411109/208679894-460fb27e-dda5-4b70-ad1e-b8b5ce8f193a.png)

## [Build better apps?](https://console.firebase.google.com/u/0/)
* **Authentication :** kullanıcı girişi ve kimliği
* **Realtime Database :** gerçek zamanlı, bulutta barındırılan, NoSQL veritabanı
* **Cloud Firestore :** gerçek zamanlı, bulutta barındırılan, NoSQL veritabanı
* **Cloud Storage :** büyük ölçüde dosya depolama
* **Cloud Functions :** "sunucusuz", olay odaklı backend
* **Firebase Hosting :** global web hosting
* **ML Kit :** makine öğrenimi görevleri için SDK 

## 1 - [Authentication?](https://firebase.google.com/products/auth)

![Authentication](https://user-images.githubusercontent.com/59411109/208683525-e1009906-5b83-4902-8c82-8c8503ee195a.png)

* Bir kullanıcıyı uygulamanızda oturum açmak için önce kullanıcıdan kimlik doğrulama bilgilerini alırsınız.
*  Bu kimlik bilgileri, kullanıcının e-posta adresi ve parolası veya birleşik bir kimlik sağlayıcısından alınan bir OAuth belirteci olabilir. 
* Ardından, bu kimlik bilgilerini Firebase Kimlik Doğrulama SDK'sına iletirsiniz
* Backend hizmetlerimiz daha sonra bu kimlik bilgilerini doğrulayacak ve müşteriye bir yanıt gönderecektir.
* Başarılı bir oturum açtıktan sonra kullanıcının temel profil bilgilerine erişebilir ve kullanıcının diğer Firebase ürünlerinde depolanan verilere erişimini kontrol edebilirsiniz.
* Sağlanan kimlik doğrulama belirtecini, kendi backend hizmetlerinizdeki kullanıcıların kimliğini doğrulamak için de kullanabilirsiniz.

:bangbang:

* Varsayılan olarak, kimliği doğrulanmış kullanıcılar Firebase **Realtime Database** ve **Cloud Storage'a** veri okuyabilir ve yazabilir

## 2 - [Realtime Database?](https://firebase.google.com/products/realtime-database/)

![Realtime Database](https://user-images.githubusercontent.com/59411109/208687619-059d08f6-3b74-4e8a-881a-5b48071d844a.gif)

* Firebase **realtime database** (gerçek zamanlı veri tabanı),**bulut tabanlı NoSql(Not Only Sql) bir veri tabanı** sistemidir.
* Hiç bir sql sorgusuna gerek duymadan json parametreleri ile yönetebilirler.
* Veri depolamanın yanı sıra asenkron çalışması ile veri değişimlerinin anlık olarak takip edilmesine olanak sağlar.
* Firebase **Realtime Database**,bütün verileri **JSON(JavaScript Object Notation) objesi** olarak tutar.
* Firebase Realtime database yapısını genel olarak **bulut tabanlı bir json ağaç yapısı** olarak düşünebilirsiniz.
* Json ağacına veri eklediğinizde  veriniz **JSON formatında bir node(düğüm)** haline gelir. 
* Bu düğümler **anahtar-değer (key-value)** yapısına sahiptir.
* Kullanıcı ID veya semantik isimler gibi kendi anahtarlarınızı (key) oluşturabilirsiniz.
* JSON yapısı içerisinde **anahtar değerler (key) String tipinde ve eşsizdirler.**
* Anahtarın aldığı değerler (value) **String,Integer,Boolean** gibi çeşitli tiplerde olabilirler.

![json](https://user-images.githubusercontent.com/59411109/208705732-ecd0c262-09ca-4264-a8b9-341180ba5a91.png)

## 3 - [Cloud Firestore?](https://firebase.google.com/products/firestore/)

![Realtime Database](https://user-images.githubusercontent.com/59411109/208687619-059d08f6-3b74-4e8a-881a-5b48071d844a.gif)

* Cloud Firestore; verileri kolayca saklamak, sorgulamak amacıyla geliştirilen, **Google'ın döküman tabanlı NoSQL veritabanıdır.**

![Cloud Firestore](https://user-images.githubusercontent.com/59411109/208693276-a42d953e-99c1-49db-b833-50db51950523.png)

* Yani hiçbir SQL sorgusu yazmadan gerekli tabloları oluşturup **document formatı** ile kontrol etmemizi sağlamaktadır.
* Veriler **document** adı verilen yapılarda saklanır ve **document topluluğuna** ise **collection** adı verilir. 
* Firestore, her biri veri içeren **belge koleksiyonlarından** oluşan **NoSQL belge tabanlı bir veritabanıdır.**
* Bir NoSQL veritabanı olduğundan, ilişkisel bir veritabanında bulacağınız tabloları, satırları ve diğer öğeleri değil, bunun yerine belgelerin içinde bulacağınız **key/value** çifti kümelerini elde edersiniz.
* Verileri bir belgeye atayarak dolaylı olarak **belgeler** ve **koleksiyonlar** oluşturursunuz.
* Belge veya koleksiyon yoksa, koleksiyonun her zaman kök (ilk) düğüm olması gerektiğinden sizin için otomatik olarak oluşturulur. 
* Gerçek zamanlı güncelleme özelliği **(realtime listeners)** sayesinde veritabanın da değişiklik olduğunda, otomatik senkronizasyon yapılarak mobil uygulamada veya web sitesinde verilerin kendiliğinden güncellenmesini sağlar.
* Offline modu desteği ile internet olmadığında cihazın localinden veriler okunabilir, yazılabilir. İnternet geldiğinde otomatik olarak cloud veritabanına senkronizasyon yapılabilir.
* Firebase **Authentication** ile tam uyumlu çalışmaktadır. Böylece kullanıcının yetkisine göre verilere erişim veya kısıtlama sağlanabilmektedir.
* Karmaşık, hiyerarşik, iç içe verileri kolaylıkla saklayabilir, hızlı sorgular yapabilirsiniz. Verileri belli bir şemaya göre saklamak zorunda olmadığınız için her bir dokuman farklı sayıda ve isimde alanlar içerebilir.

## 4 - [Realtime Database vs Cloud Firestore?](https://firebase.google.com/docs/firestore/rtdb-vs-firestore)

| |  **Realtime Database** |**Cloud Firestore** 
| ------------ | ------------ | ------------ |
|**Data model** | Verileri tek bir büyük **JSON** ağacı olarak depolar.  | Verileri **belge koleksiyonları** olarak depolar.  |
| **Realtime and offline support**  | Apple ve Android istemcileri için çevrimdışı destek.  | Apple ve Android istemcileri için çevrimdışı destek.   |
|  **Querying** | Sınırlı [sıralama ve filtreleme](https://firebase.google.com/docs/database/web/lists-of-data#sorting_and_filtering_data) işlevine sahip derin sorgular.  | Bileşik [sıralama ve filtreleme](https://firebase.google.com/docs/firestore/query-data/queries) ile dizinlenmiş sorgular.   |
| **Reliability and performance**  | Realtime Database bölgesel bir çözümdür.  |Cloud Firestore, otomatik olarak ölçeklenen bölgesel ve çok bölgeli bir çözümdür.   |
| **Scalability**  | Ölçeklendirme parçalama gerektirir.  | Ölçeklendirme otomatiktir.  |


## 5 - [Cloud Storage?](https://firebase.google.com/products/storage/)

* Büyük ölçüde ölçeklenebilir dosya depolaması sağlar.
* Aynı zamanda teknik olarak bir *Firebase ürünü değil*, bir **[Google Cloud](https://cloud.google.com/storage/)** ürünüdür.
* Firebase Storage cloud tabanlı olup içerisinde fotoğraf ve video gibi birçok dosya türünü depolamaya olanak tanır. 
* Yüksek güvenlikli özelliği yanı sıra dosyaları aktarırken durakladığında kaldığı yerden devam edebilir.
* Firebase için Cloud Storage, dosyalarınızı bir **Google Cloud Storage** paketinde depolayarak hem Firebase hem de Google Cloud üzerinden erişilebilir hale getirir.
* Mobil istemcilerden dosya yükleme ve indirme esnekliği sağlar.
*  Ayrıca **[Google Cloud Storage API](https://cloud.google.com/storage/docs/reference/libraries)**'lerini kullanarak görüntü filtreleme veya video kod dönüştürme gibi sunucu tarafı işlemleri yapabilirsiniz. yani başka bir sağlayıcıya geçiş yapmanıza gerek kalmaz.

## 6 - [Cloud Functions?](https://firebase.google.com/products/functions/)
* Cloud Functions, diğer Firebase ve Cloud ürünleriyle iyi çalışan başka bir **[Google Cloud](https://cloud.google.com/functions/)** ürünüdür.
* Cloud Functions ile yapabileceğiniz şeylerin listesi çok büyük — [tüm bu örneklere bir göz atın!](https://github.com/firebase/functions-samples/)
* Şimdiye kadar, veritabanındaki değişiklikleri algılamak ve bildirim göndermek için Firebase Admin SDK kullanan özel bir NodeJS sunucusu kullandıysanız, temelde Firebase Cloud Functions yapısını anlamanız kolay olacaktır.
* Bir veritabanı işlemi gerçekleştiğinde kullanıcıya bildirim gönderebiliriz.
* Örneğin takipleşme yapısının olduğu bir uygulamamızda bir takip işlemi gerçekleştirildiğinde kişiye bildirim gönderilebiliriz.
* Anlık mesajlaşma uygulaması geliştirdiğimizi düşünelim. Burada yeni mesaj oluşturulduğunda mesajın gönderildiği kişiye bildirimi gönderilebiliriz.
* Veritabanının sanitizasyonunu ve bakımı gerçekleştirebilirsiniz.
* Örneğin Realtime Database üzerine kurulmuş bir sohbet odasında, yazma olaylarını izleyebilir ve kullanıcıların mesajlarından uygunsuz veya küfür içeren metinleri temizleyebilirsiniz.
* Bir diğer örnekte silinen bir kullanıcının içeriğini veritabanından silebilirsiniz.
* Yüklenen bir fotoğrafı işleyerek değişiklikler yapabilirsiniz.Yaptığınız değişiklikler, resimleri yeniden boyutlandırma, kırpma veya dönüştürme işlemlerini içerebilir. Örneğin yüklenen resmi thumbnail yapısına dönüştürebilirsiniz.
* Üçüncü parti hizmetler ve API’lerle entegrasyon yapabilirsiniz.
* Github üzerinden yapılan bir işlemi Slack sohbet odasına gönderebilirsiniz.
* Bir diğer örnekte Google Çeviri’yi kullanarak iletileri çevirebilirsiniz.

:bangbang:

* Firebase ürünleri (veritabanı, depolama, kimlik doğrulama vb.), ürün içindeki veriler değiştiğinde olaylar yayar ve Cloud Functions'a dağıtılan kodunuz bu olaylara yanıt olarak tetiklenir.

## 7 - [Firebase Hosting?](https://firebase.google.com/products/hosting/)
* Firebase Hosting, güvenli, küresel bir web barındırma CDN'sidir. **Content Delivery Network** (İçerik Dağıtım Ağı).
* Kullanıcılarınıza yakın sunucuları kullanarak statik içeriği (HTML, CSS, JS, resimler) hızlı bir şekilde iletme konusunda gerçekten iyidir.
* Hosting, projenize **‘firebaseapp.com’** alan adında bir subdomain verir.
* **[Firebase CLI(Command Line Interface)](https://github.com/firebase/firebase-tools)** kullanarak, bilgisayarınızdaki yerel dizinlerden dosyaları Hosting sunucusuna deploy edebilirsiniz.
* Dosyalar, global **CDN’deki(Content Delivery Network)** en yakın sunucudan bir SSL bağlantısı üzerinden sunulmaktadır.
* Statik içeriğin barındırılmasına ek olarak, **Firebase Hosting,** gelişmiş Progressive Web App ler oluşturabilmeniz için hafif yapılandırma seçenekleri sunar.
* İstemci tarafı yönlendirmesi için URL’leri kolayca yeniden yazabilir veya özel başlıklar oluşturabilirsiniz.
* Bir siteyi üretime hazır hale getirdikten sonra, kendi alan adınızı Firebase Hosting’e bağlayabilirsiniz. 
* Alanınız için otomatik olarak bir SSL sertifikası hazırlanır, böylece tüm içeriğiniz güvenli bir şekilde sunulur.

## 8 - [ML Kit for Firebase?](https://firebase.google.com/products/ml)
* Firebase için **ML Kiti,** **makine öğrenimi (machine learning)** hakkında hiçbir şey bilmenize gerek kalmadan Google'ın zengin makine öğrenimi (machine learning) uzmanlığından yararlanmanıza olanak tanır.
* **ML Kit:** Google tarafından üretilmiş, mobil geliştiricilerin uygulamalarına Makine Öğrenmesi yeteneklerini eklemelerini kolaylaştıran bir SDK’dir.
* ML Kit ile mobil uygulamanıza çeşitli özellikleri ekleyebilirsiniz;
    * [Metin tanıma (Text  Recognition)](https://firebase.google.com/docs/ml-kit/recognize-text)
    * [Yüz tanıma (Face Detection)](https://firebase.google.com/docs/ml-kit/detect-faces)
    * [Görüntü etiketleme (Image Labelling)](https://firebase.google.com/docs/ml-kit/label-images)
    * [Barkod okuma (Barcode scanning)](https://firebase.google.com/docs/ml-kit/read-barcodes)
    * [Dil tanıma (Language ID)](https://firebase.google.com/docs/ml-kit/identify-languages) 
    * [Dil çevirme (On-Device Translation)](https://firebase.google.com/docs/ml-kit/translation)
    * Görselleri yazıya çevirme
    * Yazıları görsellere çevirme gibi işlemler de kullanılmaktadır.
*  *ML Kit önemli bir SDK dir. Google Cloud Vision ve Cloud Auto ML gibi farklı Google Cloud platform hizmetleri tarafından desteklenmektedir.*





