from socket import gethostname
import tensorflow as tf
from tensorflow.python.client import device_lib

print(gethostname())
print(device_lib.list_local_devices())
