ftp 172.16.130.47
uploader
Cambricon123

cd /daily/cnmix/wheel/tensorflow/python3.7/release-0.2.0/0.2.0-20210204_180504-v0.2.0/
lcd /cnmix/docker/tf_wheel
mput cnmix-tensorflow*.whl

cd /daily/cnmix/wheel/pytorch/python3.6/release-0.2.0/0.2.0-20210204_181421-v0.2.0/
lcd /cnmix/docker/pytorch_wheel
mput cnmix-pytorch*.whl

bye