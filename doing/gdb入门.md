用 g++和gdb debug以下代码

```c++
#include <iostream>
#include <stdlib.h> //srand
#include <stdio.h>  //printf

using namespace std;

int main () {

srand (time(NULL));
int alpha = rand() % 8;
cout << "Hello world." << endl;
int beta = 2;

printf("alpha is set to is %s\n", alpha);
//#printf("kiwi is set to is %s\n", beta);

 return 0;
} // main

```

## 1 编译带符号链接的可执行程序

```shell
g++ -o example example.cc # 生成example可执行程序
g++ -g -o example example.cc # 生成带debug符号的可执行程序
```

## 2 使用gdb查看错误所在行

常用命令：
  - start： 开始
  - next：下一行
  - continue: 下个断点
  - break number：设置断点在number行
  - watch： 观察变量的变化
  - print： 打印变量
  - quit：退出


## 参考

[https://zhuanlan.zhihu.com/p/357067993](https://zhuanlan.zhihu.com/p/357067993)