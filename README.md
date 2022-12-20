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

### [Authentication?](https://firebase.google.com/products/auth)

![Authentication](https://user-images.githubusercontent.com/59411109/208683525-e1009906-5b83-4902-8c82-8c8503ee195a.png)

* Bir kullanıcıyı uygulamanızda oturum açmak için önce kullanıcıdan kimlik doğrulama bilgilerini alırsınız.
*  Bu kimlik bilgileri, kullanıcının e-posta adresi ve parolası veya birleşik bir kimlik sağlayıcısından alınan bir OAuth belirteci olabilir. 
* Ardından, bu kimlik bilgilerini Firebase Kimlik Doğrulama SDK'sına iletirsiniz
* Backend hizmetlerimiz daha sonra bu kimlik bilgilerini doğrulayacak ve müşteriye bir yanıt gönderecektir.
* Başarılı bir oturum açtıktan sonra kullanıcının temel profil bilgilerine erişebilir ve kullanıcının diğer Firebase ürünlerinde depolanan verilere erişimini kontrol edebilirsiniz.
* Sağlanan kimlik doğrulama belirtecini, kendi backend hizmetlerinizdeki kullanıcıların kimliğini doğrulamak için de kullanabilirsiniz.

:bangbang:

* Varsayılan olarak, kimliği doğrulanmış kullanıcılar Firebase **Realtime Database** ve **Cloud Storage'a** veri okuyabilir ve yazabilir

### [Realtime Database?](https://firebase.google.com/products/realtime-database/)

![Realtime Database](https://user-images.githubusercontent.com/59411109/208687619-059d08f6-3b74-4e8a-881a-5b48071d844a.gif)

* Firebase **realtime database** (gerçek zamanlı veri tabanı),**bulut tabanlı NoSql(Not Only Sql) bir veri tabanı** sistemidir.
* Hiç bir sql sorgusuna gerek duymadan json parametreleri ile yönetebilirler.
* Veri depolamanın yanı sıra asenkron çalışması ile veri değişimlerinin anlık olarak takip edilmesine olanak sağlar.
* Firebase **Realtime Database**,bütün verileri **JSON(JavaScript Object Notation) objesi** olarak tutar.
* Firebase Realtime yapısını genel olarak **bulut tabanlı bir json ağaç yapısı** olarak düşünebilirsiniz.
* Json ağacına veri eklediğinizde  veriniz **JSON formatında bir node(düğüm)** haline gelir. 
* Bu düğümler **anahtar-değer (key-value)** yapısına sahiptir.
* Kullanıcı ID veya semantik isimler gibi kendi anahtarlarınızı oluşturabilirsiniz.
* JSON yapısı içerisinde **anahtar değerler String tipinde ve eşsizdirler.**
* Anahtarın aldığı değerler **String,Integer,Boolean** gibi çeşitli tiplerde olabilirler. 



