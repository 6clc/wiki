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

## 