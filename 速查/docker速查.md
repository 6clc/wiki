## 同步host时间

```shell
 -v /etc/localtime:/etc/localtime
```

## 查看image sha256

```shell
docker images --digets
```

## 推送镜像

三个步骤
1. docker login
2. docker tag/commit
3. docker push