### max时隐藏顶部状态栏

```shell
#安装工具
sudo apt install gnome-tweak-tool
sudo apt install gnome-shell-extension-autohidetopbar
```

## 检测到系统程序出现问题，想立即报告这个问题吗？

[https://www.cnblogs.com/rainymemory/p/10941162.html](https://www.cnblogs.com/rainymemory/p/10941162.html)

关闭即可

```shell
$ sudo vi /etc/default/apport 
找到第4行 修改为
enabled=0
保存退出
```

## 安装搜狗拼音

[https://zhuanlan.zhihu.com/p/104986101](https://zhuanlan.zhihu.com/p/104986101)

## youdu

下载链接
[https://youdu.im/download-linux/](https://youdu.im/download-linux/)

## yakuake

```shell
sudo apt-get install yakuake
```

## 映射按键

```shell
sudo apt install dconf-editor
```
接着运行dconf-editor命令启动图形界面，选择org >> gnome >> desktop >> input-sources，修改xkb-options为['caps:swapescape']

[https://blog.csdn.net/lslin405/article/details/68059331#commentBox](https://blog.csdn.net/lslin405/article/details/68059331#commentBox)

## 安装字体

[https://blog.csdn.net/bitcarmanlee/article/details/79729634](https://blog.csdn.net/bitcarmanlee/article/details/79729634)

[https://blog.csdn.net/azhegps/article/details/79385809](https://blog.csdn.net/azhegps/article/details/79385809)