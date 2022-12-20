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