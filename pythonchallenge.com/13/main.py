import xmlrpclib

url = "http://www.pythonchallenge.com/pc/phonebook.php"

client = xmlrpclib.ServerProxy(url)
print client.system.listMethods()
print client.phone('Leopold')
