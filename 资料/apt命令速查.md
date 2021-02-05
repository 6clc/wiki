from https://blog.csdn.net/yjk13703623757/article/details/78945576

## 1. 通过apt-get安装指定版本软件

```
# apt-get install package=version1
```

## 2. 查询指定软件有多少个版本

### 2.1 通过网站搜索

https://packages.ubuntu.com/

### 2.2 使用apt-cache madison列出软件的所有来源

```
# apt-cache madison package

vim | 2:7.3.547-7 | http://mirrors.163.com/debian wheezy/main amd64 Packages

vim | 2:7.3.547-7 | http://mirrors.163.com/debian wheezy/main Sources12345
```

madison是一个apt-cache子命令，可以通过`man apt-cache`查询更多apt-cache用法。

### 2.3 使用apt-cache policy列出软件的所有来源

policy列出的信息比policy详细一点。

```
# apt-cache policy vim

vim:
  Installed: 2:7.4.1689-3ubuntu1.2
  Candidate: 2:7.4.1689-3ubuntu1.2
  Version table:
 *** 2:7.4.1689-3ubuntu1.2 100
        100 /var/lib/dpkg/status
     2:7.3.547-7 500
        500 http://mirrors.163.com/debian wheezy/main amd64 Packages12345678910
```

policy是一个apt-cache子命令，可以通过man apt-cache查询更多用法。

### 2.4 使用apt-cache showpkg列出软件的所有来源

```
# apt-cache showpkg  vim 1
```

### 2.5 使用apt-get install -s模拟安装软件

```
# apt-get install -s  vim1
```

### 2.6 使用apt-show-versions列出软件所有版本，并查看是否已经安装

```
# apt-get install apt-show-versions

# apt-show-versions -a vim123
```

还可以通过`apt-show-versions -u package`查询是否有升级版本。

### 2.7 查询指定包的详情

```
# apt-cache show package1
```

或者

```
# dpkg -l package1
```

### 2.8 显示已安装包的详情

```
# dpkg -s package1
```

或者

```
dpkg-query -s package1
```

## 3. 使用技巧

在查询后面，我们可以带上一些参数来实现筛选

```
# apt-cache show package | grep version

# apt-show-versions | more
```