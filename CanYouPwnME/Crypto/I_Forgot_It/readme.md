# Kripto - I forgot it! (500 Puan)

## Açıklama:
Benim için çok önemli bir dosya vardı ama bulamıyorum nerde acaba?
https://drive.google.com/open?id=0B5i8WVYofXg6ZjdwdmNWSkxEMWM

## Çözüm:
Drive linkindeki dosyayı ilk indirdiğimizde 7z uzantılı bir dosya olmasına rağmen
adından da anlaşılabileceği üzere bir truecrypt dosyası. Ancak şifrelenmiş.
Şifreyi de ```truecrack``` kullanarak kırabiliriz:

```truecrack -t dogrusifreleme.7z -w ~/CTFs/rockyou.txt```

Bulduğumuz şifreyle (```789456```) truecrypt dosyasını açtığımzda ise yazarın bizlere
güzel bir sürpriz hazırladığını ve de asıl bilginin gizli truecrack kısmında
olduğunu anlayabiliriz. Bunu da yine ```truecrack``` kullanarak kırabiliriz:

```truecrack -t dogrusifreleme.7z -w ~/CTFs/rockyou.txt -H```

Buradan çıkan şifreyi(```123123123```) kullanarak truecrypt dosyasını açtıktan
sonra önümüze çıkan ```flag.rar``` şifresini ilk önce hash'ini alıp daha sonra
da brute force ile kırabiliriz.

```
rar2john flag.rar > hash.txt
john hash.txt --wordlist ~/CTFs/rockyou.txt
```

Rar dosyasını açtıktan sonra çıkan flag dosyasının içindeki md5 hash'ini herhangi
bir online md5 decrypter ile çözdüğümüzde yine yazarın bir başka sürprizi çıkıyor
ve bayrağımızı bulmuş oluyoruz.

## Bayrak

cypwn_{zaaaa}


