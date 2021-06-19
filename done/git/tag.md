## 查看本地的tag

```shell
git tag
```

## 删除远程tag

```shell
git tag -d $tag_name
git push origin :refs/tags/$tag_name
```