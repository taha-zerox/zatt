from zatt.client import DistributedDict
d = DistributedDict('127.0.0.1', 5254)
d['key1'] = 12
d['key2'] = 13
d['key3'] = 14

del d['key2']
