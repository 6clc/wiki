查找文件内容grep不需要正则，自动有
```shell
grep -rn "abc"
```
如果是否查找存在这样的文件名，使用find

```shell
find ./ -name  "*abc*"
```
