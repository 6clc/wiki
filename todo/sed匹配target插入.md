## 在target之前插入

```shell
 sed "s/$target/$insert&/"
```

## 在target之后插入

```shell
 sed "s/$target/&$insert/"
```

## 每行开头插入

```shell
sed -i 's/^/${insert}&/'
```

## 每行结尾插入

```shell
sed -i 's/$/&${insert}/'
```

[https://blog.51cto.com/lookingdream/2165561](https://blog.51cto.com/lookingdream/2165561)