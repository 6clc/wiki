## 同步host时间

```shell
 -v /etc/localtime:/etc/localtime
```

## commit保存容器

```shell
docker commit -a "runoob.com" -m "my apache" a404c6c174a2  mymysql:v1 
```

## 暂停容器

Ctrl + P + Q