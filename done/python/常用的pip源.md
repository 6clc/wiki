常用的pip.conf在~/.pip 或 VirtualEnvName目录下

1. 清华 [https://mirrors.tuna.tsinghua.edu.cn/help/gitlab-ce/](https://mirrors.tuna.tsinghua.edu.cn/help/gitlab-ce/)

2. 北外

3. 阿里

```shell
 echo "[global]" >> pip.conf
          echo "index-url = https://mirrors.aliyun.com/pypi/simple/" >> pip.conf
          echo "trusted-host=mirrors.aliyun.com" >> pip.conf
```
