## 配置中国源

### 更新镜像排名

```shell
sudo pacman-mirrors -i -c China -m rank //更新镜像排名
sudo vim /etc/pacman.d/mirrorlist //查看选择的源
sudo pacman -Syy //更新数据源
```

运行第一条代码后会跳出选择框，选择中科大源 ，阿里源。

### 设置源

```shell
sudo echo \
"[archlinuxcn] 
SigLevel = Optional TrustedOnly
# 阿里源      
Server = https://mirrors.aliyun.com/archlinuxcn/$arch
# 清华源
Server = http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
# 中科大源
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch" \
>> /etc/pacman.conf
```

## 导入GPG key

```shell
sudo pacman -Syy //更新数据源
sudo pacman -S archlinuxcn-keyring //安装导入GPG key
```

## 更新系统

```shell
sudo pacman -Syu
```

## 安装yay

```shell
sudo pacman -S yay
```

## 安装搜狗输入法

```shell
sudo pacman -S yay
yay -S fcitx-sogoupinyin
sudo vim ~/.xprofile
# 然后输入一下内容
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS="@im=fcitx"
```