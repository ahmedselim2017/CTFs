import requests

url = "http://www.pythonchallenge.com/pc/hex/unreal.jpg"

headers = {'User-Agent': 'python-requests/2.22.0', 'Accept-Encoding': 'gzip, deflate',
           'Accept': '*/*', 'Connection': 'keep-alive', 'Authorization': 'Basic YnV0dGVyOmZseQ=='}

end = 2123456789
next_piece = 30202
r = requests.get(url, auth=('butter', 'fly'), headers=headers)
#while True:
#next_piece = int(r.headers['Content-Range'].split()
                    #[-1].split('/')[0].split('-')[1]) + 1
headers['Range'] = 'bytes={0}-{1}'.format(1152983631, end)
r = requests.get(url, auth=('butter', 'fly'), headers=headers)

print(r.headers['Content-Range'])
open('a.out', 'w').write(r.content)
