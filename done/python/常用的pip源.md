## 写配置文件方式

```shell
 echo "[global]" >> pip.conf
          echo "index-url = https://mirrors.aliyun.com/pypi/simple/" >> pip.conf
          echo "trusted-host=mirrors.aliyun.com" >> pip.conf
```

## 命令方式配源

```shell
# https url
pip config set global.index-url  https://xxx.com.cn
# http url
pip config set global.index-url  http://xxx.com.cn
pip config set global.trusted-host xxx.com.cn

# 添加额外源的方式
pip config set global.extra-index-url http.....
```

## 常用源汇总

```shell
https://pypi.doubanio.com/simple
https://mirrors.aliyun.com/pypi/simple/
https://pypi.tuna.tsinghua.edu.cn/simple
```