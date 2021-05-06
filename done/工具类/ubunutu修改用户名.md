## 1、修改 /etc/passwd用户信息文件
vim /etc/passwd

```shell
#admin:x:503:501::/home/admin:/bin/bash
#把用户名admin改成rest
#test:x:503:501::/home/test:/bin/bash
```

## 2、修改 /etc/shadow用户密码文件
vim /etc/shadow

```shell
#admin:Dnakfw28zf38w:8764:0:168:7:::
#由于密码加密方式存放，只修改用户名即可（密码不变）
#test:Dnakfw28zf38w:8764:0:168:7:::
```

## 3、再修改 /etc/group用户组文件
vim /etc/group

```shell
#admin:x:1:root,bin,admin
#修改admin组为test组
#test:x:1:root,bin,test
```

## 4、最后修改用户的家目录
mv /home/admin /home/test


## 5、登陆rest用户
su test


————————————————

版权声明：本文为CSDN博主「OneDay-X」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/zhaokx3/article/details/64127454