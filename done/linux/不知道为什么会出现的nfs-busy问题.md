## 文字版本
1. Go into the directory and type ls -a
2. You will find a .xyz file
3. vi .xyz and look into what is the content of the file
4. ps -ef | grep username
5. You will see the .xyz content in the 8th column (last row)
6. kill -9 job_ids - where job_ids is the value of the 2nd column of corresponding error caused content in the 8th column
7. Now try to delete the folder or file.


## 命令简化版本1
```shell
ps -ef | grep username
kill -9 job_ids
rm -rf .nfs
```
## 命令简化版本2

```shell
lsof |grep nfs00000
kill -9 job_ids
rm -rf nfs00000
```

## 参考

[https://unix.stackexchange.com/questions/11238/how-to-get-over-device-or-resource-busy](https://unix.stackexchange.com/questions/11238/how-to-get-over-device-or-resource-busy)

[https://blog.csdn.net/lllzzh123321/article/details/53088503](https://blog.csdn.net/lllzzh123321/article/details/53088503)