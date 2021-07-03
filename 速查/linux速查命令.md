## 判断当前用户所属组

```shell
groups # 当前用户所属
groups ${UserName} # UserName用户所属
```

## mv

目标文件夹存在或者不存在结果不同

mv file1 /home/   file1被移动到/home 目录下
mv file1  /aaa     当目标目录不存在时，文件被移动到/目录下，更名为aaa

## 快速拷贝、移动 rsync

http://www.ruanyifeng.com/blog/2020/08/rsync.html

```shell
rsync -r source destination
rsync -a source destination # 除了可以递归同步以外，还可以同步元信息（比如修改时间、权限等）
```
目标目录destination如果不存在，rsync 会自动创建。执行上面的命令后，源目录source被完整地复制到了目标目录destination下面，即形成了destination/source的目录结构。