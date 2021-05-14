from https://blog.csdn.net/jiang_huixin/article/details/106129799

### 简介

坚果云是国产的跨平台文件同步网盘应用, 个人可以免费使用, 但限制每个月上传量与下载量分别不超过 1GB 和 3GB, 每个月重置数据量

截止 2020.09, 基于 Linux 的最新版本为 5.0.2, 而基于 Windows 的版本已经到了 5.1.8

### 安装

#### 下载安装包

ubuntu18.04 默认采用 GNOME 桌面, 而坚果云正好提供了相应的[安装包](https://www.jianguoyun.com/s/downloads/linux)

直接安装

```shell
sudo dpkg --install nautilus_nutstore_amd64.deb
1
```

如果提示依赖问题, 则执行以下命令

```shell
sudo apt install -f
1
```

安装完成后点击图标, 无法启动坚果云

查看启动命令

```shell
$ grep Exec /usr/share/applications/nutstore-menu.desktop             
Exec=sh -c "nohup ~/.nutstore/dist/bin/nutstore-pydaemon.py >/dev/null 2>&1 &"
12
```

~/.nutstore/dist 目录不存在

#### 二进制组件

在安装的过程中会下载二进制组件, 二进制组件需要解压到 ~/.nutstore/dist, 但是在默认的安装过程中这一解压过程貌似会失败

#### 手动解压

下载二进制组件, 64位系统使用 [nutstore_linux_dist_x64.tar.gz](https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz), 32位系统使用 [nutstore_linux_dist_x86.tar.gz](https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x86.tar.gz)

```shell
mkdir -p ~/.nutstore/dist
tar -xzf nutstore_linux_dist_x64.tar.gz -C ~/.nutstore/dist
12
```

解压完成后便可运行

![坚果云](https://img-service.csdnimg.cn/img_convert/118e631295d17c3f265a3fe20b3375eb.png)

### 自定义同步规则

基于 Windows 的 5.x 版本的坚果云不支持自定义同步规则

基于 Linux 版本的坚果云支持自定义同步规则

创建自定义规则文件

```shell
vim ~/.nutstore/db/customExtRules.conf
1
```

忽略同步 ~/VSCode/.vscode 目录以及后缀为 .class 和 .pyc 的文件

```
# VSCode
/home/user/VSCode/.vscode
# Java
*.class
# Python
*.pyc
123456
```

对于目录需要使用绝对路径