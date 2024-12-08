# 📱 ePazarApp  

ePazarApp, **Flutter** ile geliştirilmiş bir mobil e-ticaret uygulamasıdır. Kullanıcılar uygulama üzerinden ürünleri görüntüleyebilir, sepete ekleyebilir ve alışveriş deneyimini gerçekleştirebilir.  

---

## 🚀 Özellikler

- 🔍 Ürün arama ve listeleme  
- 🛒 Sepete ürün ekleme ve çıkarma  
- 📦 Kullanıcı dostu ve modern tasarım (Material 3)  
- 🌐 API kullanarak dinamik veri çekme (Dio entegrasyonu)  
- 📦 **Cubit** ile durum yönetimi  
- 🌟 Kolayca özelleştirilebilir yapısı ile genişletilebilir  

---

## 📂 Proje Yapısı

```plaintext
lib
├── core
│   ├── constants       # Sabit değerler (ör. renk, metin)
│   ├── utils           # Yardımcı fonksiyonlar
├── data
│   ├── model           # Veri modelleri
│   ├── repo            # Veri çekme ve işleme
├── product
│   └── widgets         # Özel widget bileşenleri
├── ui
│   ├── cubit           # Durum yönetimi için Cubit dosyaları
│   ├── view            # Ekran tasarımları
├── main.dart           # Uygulamanın başlangıç noktası
```
---

Klasörlerin İşlevleri
- core: Uygulamanın genel yapı taşları ve tekrar kullanılabilir kodlar içerir. Sabit değerler (constants) ve yardımcı araçlar (utils) bu klasördedir.
- data: Veri yönetimiyle ilgili işlemleri içerir. API'den veya yerel veritabanından veri almak için kullanılan repo ve veri modellerini tanımlayan model klasörlerinden oluşur.
- product: Uygulamaya özgü bileşenler, özel widget'lar bu klasörde yer alır.
- ui: Kullanıcı arayüzü (UI) ile ilgili ekran ve durum yönetimi dosyaları içerir. cubit, durum yönetimi için kullanılırken, view içinde farklı sayfa tasarımları bulunur.
- main.dart: Flutter uygulamasının başlangıç dosyasıdır.

---

## 🛠️ Kullanılan Teknolojiler
- Flutter: Mobil uygulama geliştirme
- Dio: API bağlantıları için HTTP istemcisi
- Flutter Bloc (Cubit): Durum yönetimi
- Material 3: Modern ve kullanıcı dostu tasarım

---

## 🛠️ Kurulum

- Depoyu klonlayın:
```plaintext
git clone https://github.com/kullanıcıAdı/ePazarApp.git
cd ePazarApp
```

- Gerekli bağımlılıkları yükleyin
```plaintext
flutter pub get
```

- Uygulamayı çalıştırın:
```plaintext
flutter run
```
## 🎥 Uygulama Görüntüleri


https://github.com/user-attachments/assets/3a5bbdb3-7bcb-4dee-9760-2bec106da948


