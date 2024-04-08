# odev2_gokhan_sal

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Yönergeler
Bu ödevde 3 ekran ve bir üst widget'tan oluşan, kullanıcının girdiği verilere göre BMI (Body Mass Index / Vücut Kitle İndeksi) hesaplayan bir Flutter uygulaması yazmanız beklenir.

1. [X] lib/models klasöründe vki.dart dosyası oluşturun ve kullanıcının yaşını, boyunu (cm) ve kilosunu(kg) tutan, ayrıca vkiHesapla( ) isminde bir metodu olan VKI sınıfı yazın.
2. [X] lib/data klasöründe vki_data.dart dosyası oluşturun ve hangi yaş aralığı için hangi VKİ değer aralığının ideal olduğunu tutan vkiReferans isminde bir Map nesnesi oluşturun.
3. [X] Uygulama açıldığında ilk olarak ekrana gelecek olan, bir adet görsel (seçeceğiniz bir logo vb.), bir adet hoşgeldiniz metni ve bir adet başlat butonu olan bir widget yazın. Başlat butonu ekrana soruların yer aldığı widget'ı getirmeli.
4. [X] Kullanıcıya sırasıyla (seçim veya giriş yaptıkça ekranı güncelleyen) yaşını, boyunu ve kilosunu soran bir widget yazın.
      i. Derste gördüğümüz buton veya DropdownButton kullanabilirsiniz.
      ii. Kullanıcının metin olarak giriş yapabileceği TextField widget'ını kullanabilirsiniz.
      iii. Kullanıcının kaydırma çubuğu kullanarak seçim yapabileceği Slider widget'ını kullanabilirsiniz.
5. [X] Sorular bittiğinde özet ve sonuçları gösteren (Kullanıcı yaşı, boyu, kilosu, hesaplanan VKİ değeri ve bu değerin ideal aralıkta olup olmadığı) bir widget yazın.
      i. Ekran arkaplanı: hesaplanan VKİ ideal değerin altındaysa  sarı tonlarda, ideal aralıktaysa yeşil tonlarda, yüksek ise kırmızı tonlarında gradient olmalı.
      ii. Kullanıcıya metin olarak geribildirim vermeli. (Ör: VKİ değeriniz ideal aralığın altında. Kilonuza dikkat etmeniz önerilmektedir.)
      iii. Görünüm ve okunabilirlik açısından kullanıcı dostu olmalı.
6. [X] Bu 3 ekran widget'ını yönetmeyi ve aralarında veri aktarımını sağlamak için bir üst widget yazın.
7. [X] main.dart dosyasında üst sınıfı çalıştıran bir main metodu yazın.
8. [X] Bonus: Uygulama boyunca arayüz tutarlı olmalı. Buton tipleri ve şekilleri, yazıtipi boyutu ve renkleri vb. görsel açıdan kullanıcıya güzel bir izlenim bırakmalı.