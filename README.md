# 📱 ePazarApp  
ePazarApp, **Flutter** ile geliştirilmiş bir mobil e-ticaret uygulamasıdır. Kullanıcılar uygulama üzerinden ürünleri görüntüleyebilir, sepete ekleyebilir ve alışveriş deneyimini gerçekleştirebilir.  

ePazarApp is a mobile e-commerce application developed with **Flutter**. Users can browse products, add them to the cart, and complete their shopping experience through the app.

---

## 🚀 Features - Özellikler

- 🔍 Product search and listing  
- 🛒 Add and remove items from the cart  
- 📦 User-friendly and modern design (Material 3)  
- 🌐 Dynamic data fetching via API (Dio integration)  
- 📦 State management with **Cubit**  
- 🌟 Easily customizable and extendable structure  
---

## 📂 Project Structure - Proje Yapısı

```plaintext
lib
├── core
│   ├── constants       # Constant values (e.g., colors, texts)
│   ├── utils           # Helper functions
├── data
│   ├── model           # Data models
│   ├── repo            # Data fetching and processing
├── product
│   └── widgets         # Custom widget components
├── ui
│   ├── cubit           # Cubit files for state management
│   ├── view            # Screen designs
├── main.dart           
```
---

### Folder Functions - Klasörlerin İşlevleri 
- core: Uygulamanın genel yapı taşları ve tekrar kullanılabilir kodlar içerir. Sabit değerler (constants) ve yardımcı araçlar (utils) bu klasördedir.
- data: Veri yönetimiyle ilgili işlemleri içerir. API'den veya yerel veritabanından veri almak için kullanılan repo ve veri modellerini tanımlayan model klasörlerinden oluşur.
- product: Uygulamaya özgü bileşenler, özel widget'lar bu klasörde yer alır.
- ui: Kullanıcı arayüzü (UI) ile ilgili ekran ve durum yönetimi dosyaları içerir. cubit, durum yönetimi için kullanılırken, view içinde farklı sayfa tasarımları bulunur.
- main.dart: Flutter uygulamasının başlangıç dosyasıdır.

---

## 🛠️ Technologies Used-  Kullanılan Teknolojiler
- Flutter: Mobil uygulama geliştirme
- Dio: API bağlantıları için HTTP istemcisi
- Flutter Bloc (Cubit): Durum yönetimi
- Material 3: Modern ve kullanıcı dostu tasarım

---

## 🛠️ Installation- Kurulum

- Clone the repository:
```plaintext
git clone https://github.com/kullanıcıAdı/ePazarApp.git
cd ePazarApp
```

- Install the dependencies:
```plaintext
flutter pub get
```

- Run the application:
```plaintext
flutter run
```
## 🎥 Screenshots - Uygulama Görüntüleri


https://github.com/user-attachments/assets/3a5bbdb3-7bcb-4dee-9760-2bec106da948


