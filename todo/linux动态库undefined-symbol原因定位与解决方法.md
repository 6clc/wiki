## 可能的原因

常用命令ldd，export LD_LIBRARY_PATH, nm，c++filt

- ldd library_name: 检查库是否存在
- export LD_LIBRARY_PATH: 将动态库引入查找目录
- nm 动态库：读取动态库被导出的符号
- c++filter：获取符号的原始名字


## 参考

[https://dongyadoit.com/linux/2020/05/24/how-to-solve-undefined-symbol-when-link-dynamic-lib-on-linux/](https://dongyadoit.com/linux/2020/05/24/how-to-solve-undefined-symbol-when-link-dynamic-lib-on-linux/)
