## libstdc++.so.6: version  `GLIBCXX_3.4.14' not found

1. 查看当前gcc的版本对应GLIBCXX

```shell
strings /usr/lib/libstdc++.so.6 | grep GLIBCXX
```
2. 如果不存在GLIB，升级gcc，升级gcc后重新建立libstdc++.so.6的软连接

```shell
rm -f /usr/lib64/libstdc++.so.6 && \
ln -sf /usr/local/lib64/libstdc++.so.6.0.21 /usr/lib64/libstdc++.so.6
```
