## 常用选项

1. -v 反选
2. -i 忽略大小写
3. -n 显示行号
4. -r 在当前目录递归遍历文件
5. -E 扩展正则
6. -F 不使用正则

## 不常用选项

1. -c 匹配的总行数
2. -w 完全匹配整个单词
3. -l 只显示文件名，不显示匹配的内容
4. -s 不显示错误信息

## 查找目录下存在“hello-world”的文件

```shell
pushd $DIST_DIR
grep -rn "hello-world"
popd
```

