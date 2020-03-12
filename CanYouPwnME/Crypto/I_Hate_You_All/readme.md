# Crypto - I hate you, ALL !!! (100 Puan)

## Açıklama:

	http://pastebin.com/f36XmBGw

>Pastebin'e Türkiyeden girilemediği için oradaki çıktıyı `data` dosyasına yükledim.

## Çözüm:
 
Bize verilen dosyaya bakarsak bunun base64 ile şifrelenmiş olduğunu sondaki `=` işaretlerinden anlayabiliriz. [Bu](https://cryptii.com/) siteyi kullanarak yada `base64` komutunu terminalden çalıştırarak deşifre edebiliriz.

> Deşifre edildiğinde çıkan metni `decryptedData` dosyasından inceleyebilirsiniz.

Deşifre edilen metne baktığımızda bunun bozulmuş bir javascript dosyası olduğunu anlayabiliriz. [Bu (https://lelinhtinh.github.io/de4js/) sitede `JSFuck` seçeneğini seçim `deobfuscate` yapıp normal hale getirdiğimizde ise bir Google Drive linki çıkıyor.

Bu linkteki dosyayı indirince çıkan resmin özelliklerine `exiftool` ile bakarsak resmin açıklamasının ve de başlığının bir tür hash gibi olduğunu görebiliriz. Bu hashi de `Hash Buster` sayesinde çözdüğümüzde bayrağı alabiliriz.

## Bayrak:

    cypwn_{flag_1}
