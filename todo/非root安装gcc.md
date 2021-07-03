# 非root安装gcc

## 下载 

```shell
opt_path="/home/liuchao/opt"
wget -P "$opt_path" http://ftp.gnu.org/gnu/gcc/gcc-9.1.0/gcc-9.1.0.tar.gz
tar -xvf gcc-9.1.0.tar.gz
#作为安装路径
mkdir -p $opt_path/gcc9
# 下面的命令不好下载，建议vim看到下载链接后，手动下载到gcc-9.1.0目录下，再执行下面的命令
cd gcc-9.1.0
./contrib/download_prerequisites 
# 作为编译路径
mkdir gcc-9.1.0-tmp && cd gcc-9.1.0-tmp
../configure --disable-checking --enable-languages=c,c++ --disable-multilib --prefix=$opt_path/gcc9 --enable-threads=posix
make -j32 && make install
rm -rf gcc-9.1.0*
```

## 环境变量设置

```shell
export PATH=/path/to/install/gcc/bin:$PATH
export LD_LIBRARY_PATH=/path/to/install/gcc/lib64:/path/to/install/gcc/lib/:$LD_LIBRARY_PATH
```
[https://www.cnblogs.com/jessepeng/p/11674780.html](https://www.cnblogs.com/jessepeng/p/11674780.html)
