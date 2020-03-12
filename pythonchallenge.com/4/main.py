import requests


url = "http://www.pythonchallenge.com/pc/def/linkedlist.php"


next_nothing = 12345
next_nothing = 8022
next_nothing = 63579
while True:
    r = requests.post(url + "?nothing=" + str(next_nothing))
    next_nothing = str(r.text).split()[-1]
    print(r.text, ":", next_nothing)
