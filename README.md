Araç Kiralama Projesi: Masaüstü Uygulaması Geliştirme Rehberi
Bu rehber, Java ve Swing teknolojilerini kullanarak gelişmiş bir araç kiralama sistemini oluşturmayı hedefleyen bir masaüstü uygulaması projesi üzerinde durmaktadır. Proje, kullanıcı arayüzü tasarımı, veritabanı yönetimi ve iş mantığı geliştirme konularını kapsar. Ayrıca, projenin genel yapısını, modüllerini ve veritabanı kurulumunu detaylandırır.

Projenin Amacı ve Özellikleri
Genel Amaç
Araç kiralama sistemi, firmaların araçlarını yönetmelerine, müşterilere hizmet vermelerine ve rezervasyon işlemlerini kolaylaştırmasına yardımcı olacak bir platformdur. Sistem, araçların detaylı bilgilerini saklar, kullanıcıların ihtiyaçlarına göre arama yapmalarına olanak tanır ve rezervasyon işlemlerini gerçekleştirebilir.

Özellikler
Araç Yönetimi
Araç ekleme, güncelleme ve silme işlemleri.
Araç bilgilerinin (marka, model, plaka, renk, kilometre, yakıt türü, vites türü vb.) yönetilmesi.
Model ve Marka Yönetimi
Araç modelleri ve markalarının eklenmesi, güncellenmesi ve silinmesi.
Modellerin detaylı bilgilerinin (tip, yakıt türü, vites türü, üretim yılı vb.) yönetilmesi.
Rezervasyon Yönetimi
Araç rezervasyonlarının yapılması, güncellenmesi ve iptali.
Araçların müsaitlik durumlarının kontrol edilmesi.
Kullanıcı bilgilerinin (isim, TC kimlik numarası, telefon numarası, e-posta) yönetilmesi.
Arama ve Filtreleme
Belirli kriterlere göre (marka, model, yakıt türü, vites türü, tip) araç arama ve filtreleme.
Plaka bilgisine göre araç arama.
Proje Yapısı
Proje, dört ana modülden oluşur: Entity, DAO, Business ve View modülleri.

Entity Modülü
Veritabanı tablolarını ve bu tablolara ait varlık nesnelerini tanımlar.
Kullanıcı, marka, model, araç, rezervasyon gibi temel entity nesnelerini içerir.
Nesneler arasındaki ilişkileri belirler.
DAO (Data Access Object) Modülü
Veritabanı erişimi ve işlemleri için bir arayüz sağlar.
Entity modülündeki nesnelerin veritabanına kaydedilmesi, güncellenmesi ve silinmesi süreçlerini yönetir.
Veritabanından veri alma işlemlerini gerçekleştirir.
Business Modülü
İş mantığını yönetir ve uygulama içindeki temel işlemleri gerçekleştirir.
Fiyatlandırma ve araç kiralama hesaplamaları gibi iş mantığı operasyonlarını yönetir.
DAO modülü ile etkileşime girer.
View Modülü
Kullanıcı arayüzünü (UI) yönetir ve kullanıcıyla etkileşimi sağlar.
Araç listesi ve kiralama ekranı gibi kullanıcı bilgilerini gösterir.
Kullanıcının girdiği bilgileri iş katmanına ileterek işlemleri başlatır.
Veritabanı Kurulumu
Gereksinimler
PostgreSQL'in yüklü olması
rentacarDatabase.sql dosyasının mevcut olması
Adımlar
PostgreSQL'i Başlatın: PostgreSQL sunucusunun çalıştığından emin olun.
Yeni Bir Veritabanı Oluşturun: PostgreSQL terminal veya pgAdmin gibi bir araç kullanarak yeni bir veritabanı oluşturun. 