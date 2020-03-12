# Forensics - Is Empty? (50 Puan)

## Açıklama:

Daha dün baktım burdaydı ama şimdi bulamıyorum?
https://drive.google.com/open?id=0B5i8WVYofXg6QWxVNUQyTkRfRW8

## Çözüm:

Verilen dosyayı indirdiğimizde her zamanki gibi şifreli çıkıyor. Şifresini
yine john kullanarak kırıyoruz.

```
zip2john demorepo.zip > hash.txt
john hash.txt --wordlist ~/CTFs/rockyou.txt
```

Daha sonra da demorepo projesine girip ```.git``` dosyasının içindeki ```config```
dosyasının içine girerek projenin github url'ini bulabiliriz.

```
[remote "origin"]
        url = https://github.com/stolera/demorepo.git
        fetch = +refs/heads/*:refs/remotes/origin/*
```

Bu url'e girdikten sonra da commit geçmişine bakarak bayrağı bulabiliriz.

## Bayrak:

cypwn_{easy_peasy_lemon_squeezy}
