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
- core: Contains the building blocks and reusable code of the application. Constant values (constants) and helper utilities (utils) are stored here.
- data: Handles data management operations. This includes the repo for fetching data from APIs or local databases, and the model folder that defines data models.
- product: Contains application-specific components, such as custom widgets.
- ui: Includes screen and state management files related to the user interface (UI). The cubit folder is for state management, and the view folder contains different page designs.
- main.dart: The entry point of the Flutter application.
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
git clone https://github.com/hsefakcay/ePazarApp.git
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


