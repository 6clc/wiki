from https://xirikm.net/2019/1006-1

## 尝试编译

首先从 vim 的官网或者 GitHub 下载源码，截至本文发布官网最新版本是 8.1

复制

```
# 下载源码
wget ftp://ftp.vim.org/pub/vim/unix/vim-8.1.tar.bz2
# 解压
tar -jxvf vim-8.1.tar.bz2
```

解压后我们进入源码文件夹执行 `./configure` 尝试生成 Makefile 文件。这里需要注意的是，vim 默认将最后的编译产物放在 `/usr/local` 下（可以执行 `./configure --help` 查看），而我们没有管理员权限，无权操作该文件夹（一般普通用户只能操作自己用户目录下面的文件夹），所以需要手动指定一下安装目录。

复制

```
cd vim81
./configure --prefix=/home/km/opt/vim81
```

我们自然是没有那份能够一次性成功的运气，执行过程中遇到了如下报错：

复制

```
checking for tgetent()... configure: error: NOT FOUND!
      You need to install a terminal library; for example ncurses.
      Or specify the name of the library with --with-tlib.
```

这个报错说的算是比较清楚了：没有找到终端库，让我们去安装一个。

根据这个报错说明，装 ncurses 肯定是可以的。一般遇到这种情况都是直接用 apt 去安装（有管理员权限的话，ubuntu 下执行 `sudo apt install libncurses5-dev` 即可安装），然而跟我们无法直接安装 vim 同样的原因：**没有管理员权限**，这个依赖库也只能靠编译安装了。

## 编译安装 ncurses

同样的首先需要下载源码，截至本文发布最新的版本是 6.1

复制

```
# 下载
wget https://ftp.gnu.org/pub/gnu/ncurses/ncurses-6.1.tar.gz
# 解压
tar -xzvf ncurses-6.1.tar.gz
```

同样的，执行 `./configure` 的时候我们需要指定一个自己有操作权限的安装目录。

复制

```
cd ncurses-6.1
./configure --prefix=/home/liuchao/applications/ncurses-6.1
```

这次倒是一次成功没有遇到任何问题，接下来编译后安装就行了。

复制

```
make -j8 && make install
```

执行完之后可以在我们指定的安装目录下找到 `bin、include、lib、share` 几个文件夹。

## 重新尝试编译

在编译安装好 ncurses 之后我们回到 vim 源码所在的目录重新执行 `./configure` 。需要注意的是，我们安装的 ncurses 不在标准目录下，所以在编译其他依赖 ncurses 的程序的时候需要手动指定一下相关文件所在的目录。

```
./configure --prefix=/home/liuchao/applications/vim82 LDFLAGS=-L/home/liuchao/applications/ncurses-6.1/lib CPPFLAGS=-I/home/liuchao/applications/ncurses-6.1/include
```

这次直接一路到底，没有出现任何报错，接下来编译后安装一下就可以啦。

```
make -j8 && make install
```

在安装完之后可以在我们指定的安装目录下（我这里是 `/home/km/opt/vim81` ）找到 `bin` 和 `share` 两个目录，vim 的可执行文件就存放在 `bin` 目录下。

用绝对路径执行一下试试： `/home/km/opt/vim81/bin/vim` ，可以看到熟悉的界面就说明编译安装成功啦。

## 一些其他设置

每次都像上面那样用相对/绝对路径来运行 vim 无疑是很麻烦的，我们这里为编译出来的可执行文件设置一个 alias 以方便使用（将 vim 的可执行文件路径添加到 PATH 环境变量中也能实现同样地效果）

```
# 编辑用户目录下的 .bashrc文件
vi ~/.bashrc
# 在最后添加一行 alias
alias vim='/home/km/opt/vim81/bin/vim'
```

保存文件后使用 `source ~/.bashrc` 激活设置，之后就可以在任何位置直接输入 `vim` 使用啦。

另外，在实际使用中发现这样自己编译出来的 vim 存在这篇文章：[Debian9 下为 vim 启用鼠标复制粘贴](https://xirikm.net/2019/504-1.html) 中提到的无法使用鼠标右键复制粘贴的问题（系统是 Ubuntu 18.04）。要解决这个问题也很简单，修改一下 vim 的用户配置文件即可（由于这样安装的 vim 只有自己一个账户能用，所以修改用户个人配置文件即可，那篇文章中修改的是 vim 的全局配置文件）。

```
# 在当前用户目录下新建 vim 配置文件目录
mkdir ~/.vim
# 新建 vim 用户配置文件并编辑
vim ~/.vim/vimrc

# 在其中写入如下内容（注意将 source 后面的文件路径修改为自己的）
source /home/km/opt/vim81/share/vim/vim81/defaults.vim
let skip_defaults_vim = 1
if has('mouse')
    set mouse-=a
endif
```

保存文件并退出，再次使用 vim 时就会发现能够正常的使用鼠标右键来进行复制粘贴操作啦！