# Crypto - I hate you, ALL !!! (100 Points)

## Description:

	http://pastebin.com/f36XmBGw

## Solution:

When we look at the file which is given us wih help of pastebin we can see it is a `base64`file (Because there is `=`s at the end of the file). We can decrypt it using [this](https://cryptii.com/) site or running `base64` command in terminal.

> You can view the decrypted data from `decryptedData` file

Then we can see the decrypted data is a Obfuscated JS file. We can deobfuscate data using  [this](https://lelinhtinh.github.io/de4js/) site (`JSFuck` should selected). When we deobfuscate data we should get a Google Drive link and download it.

Next we clearly see it is an image. So as a habbit we should use exiftool. Then we can clearly see the description of image and the title is image are same and looks a bit different from normal. So I suspected about them and run `Hash-Buster`. As I suspected that was a `MD5`. And the result was `flag_1`

## Flag:

    cypwn_{flag_1}
