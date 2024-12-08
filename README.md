# ePazarApp 🛍️
ePazarApp, Flutter kullanılarak geliştirilen bir e-ticaret uygulamasıdır. Kullanıcıların ürünleri görüntüleyebileceği, sepetlerine ekleyebileceği ve işlemlerini kolayca yönetebileceği modern bir mobil uygulamadır.

## 📱 Özellikler
Ürün Listesi: Kategorilere ayrılmış ürünleri listeleme.
Detay Sayfası: Ürün detaylarını görüntüleme ve sepete ekleme seçeneği.
Sepet Yönetimi: Sepete ekleme, çıkarma ve toplam tutarı görüntüleme.
Arama Fonksiyonu: Ürünler arasında kolayca arama yapma.
Kullanıcı Dostu Arayüz: Responsive ve modern bir arayüz tasarımı.
Favoriler: Ürünleri favorilere ekleme ve favori listesini yönetme.
Çoklu Platform Desteği: Android, iOS ve Web uyumluluğu.


## 📂 Proje Yapısı
lib
├── core
│   ├── constants       # Sabit değerler (örn. renkler, metinler)
│   ├── utils           # Yardımcı fonksiyonlar ve genel araçlar
├── data
│   ├── model           # Veri modelleri
│   ├── repo            # Veri depolama ve API işlemleri
├── product
│   └── widgets         # Uygulamaya özgü özel widget'lar
├── ui
│   ├── cubit           # Durum yönetimi için Cubit sınıfları
│   ├── view            # Ekran ve sayfa tasarımları
├── main.dart           # Uygulamanın giriş noktası

Klasörlerin İşlevleri
core: Uygulamanın genel yapı taşları ve tekrar kullanılabilir kodlar içerir. Sabit değerler (constants) ve yardımcı araçlar (utils) bu klasördedir.
data: Veri yönetimiyle ilgili işlemleri içerir. API'den veya yerel veritabanından veri almak için kullanılan repo ve veri modellerini tanımlayan model klasörlerinden oluşur.
product: Uygulamaya özgü bileşenler, özel widget'lar bu klasörde yer alır.
ui: Kullanıcı arayüzü (UI) ile ilgili ekran ve durum yönetimi dosyaları içerir. cubit, durum yönetimi için kullanılırken, view içinde farklı sayfa tasarımları bulunur.
main.dart: Flutter uygulamasının başlangıç dosyasıdır.

## 🛠️ Kurulum
Bu projeyi klonlayın:

bash
Kodu kopyala
git clone https://github.com/kullanıcıAdı/ePazarApp.git
cd ePazarApp
Gerekli bağımlılıkları yükleyin:

bash
Kodu kopyala
flutter pub get
Uygulamayı çalıştırın:

bash
Kodu kopyala
flutter run

