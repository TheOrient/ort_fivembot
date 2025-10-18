# ort_fivembot
This is my old project. Fivem game-bot. I created it in 2019 using the esx-disc based fivem server infrastructure.


Discord üzerinden ESX altyapılı fivem sunucunuz için Server yönetimini sağlayan, Triggereventleri çalıştıran ve birçok  komutu yapabilmenizi sağlayan bir discord botu.

ESX Altyapısına göre 2019 yılında yapılmış bir bottur. Lua kullanılmıştır.
TriggerServerEventleri çalıştırmanızı sağlayan, Server side herşeyi yapabildiğiniz oyun dışından oyuncunun SS ini almaya kadar tüm komutları çalıştırabileceğiniz bir projedir. Bu proje ile offline olarak oyuna girmeden game staff ihtiyacı olmadan hemen hemen herşeyi discord komutları ile yapabilirsiniz.
Detaylı bir komut sistemi vardır.

ÖNEMLİ NOT: Bazı eventleri kendi admin panelinize ve paketinize göre yapmanız gerekiyor örn.
TriggerClientEvent('ort_admin_server:captureScreenshot', target, GetPlayerName(yazi[2]), yazi[2])  client event inde ki event ismini vs. değiştirin.

NOT: Bu projeyi Open-Source olarak, 18.10.2025 yılında PUBLIC olarak TheOrient github hesabımda yayınlıyorum. Bot esx-disc envantere göre 2019-2020 yılları arasında yapılmıştır. Dolayısı ile günümüzde kullanılan QBase QB altyapıya göre uyarlayabilirsiniz. Tek yapmanız gereken Triggerevent leri değiştirmek kodları güncellemek. 


KURULUM

resources klasörüne atın
sv.lua baştaki configleri yapın
server.cfg den ensure yada start verin


AYARLAMALAR-CONFIG

sv.lua baştaki configleri yapın
TOKEN, channel id vs güncelleyin


KOMUTLAR

!ort.durum --- Sunucu durumunu gösterir
!ort.kick id --- oyuncuyu kickler
!ort.itemver id itemkodu miktar --- oyuncuya item verir silah dahil örn: WEAPON_PISTOL 
!ort.meslekver id meslekkodu seviye --- oyuncuya meslek verir
!ort.paraver id miktar --- oyuncuya nakit verir 
!ort.öldür id --- oyuncuyu öldürür
!ort.rev id --- oyuncuyu revler
!ort.can id --- oyuncuyu healler
!ort.kelepçe id --- oyuncuyu kelepçeler
!ort.dondur id --- oyuncuyu dondurur
!ort.çöz id --- dondurulmuş bir oyuncuyu çözer
!ort.restartduyuru --- Sunucuya Restart Atılacaktır! Lütfen Sunucudan Çıkış Yapalım. duyurusu atar. 


CREATED BY Orient. Copying, distribution and commercial use are prohibited.
ORİENT Tarafından yapılmıştır. Kopyalanması, dağıtılması ve ticari amaçlı kullanılması yasaktır.

Beni takip etmeyi ve starlamayı unutmayın. Kullanımı ücretsizdir ancak pazarlanması yasaktır.

DC: byorient
