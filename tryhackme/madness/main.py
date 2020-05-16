import requests

url = "http://10.10.138.158/th1s_1s_h1dd3n/?secret="

r = requests.get(url + "1")

for i in range(100):
    r = requests.get(url + str(i))
    if not "That is wrong! Get outta here!" in r.text:
        print("oldu: ", i)
        break
    print("deneneiyor...", i)

