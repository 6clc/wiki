## 使用lftp上传文件

```shell
function ftp_upload() {
  set -x
  dst_path=$1
  src_path=${@:2}

  lftp << EOF
  open $DAILY_HOST
  user $DAILY_USER $DAILY_PWD

  mkdir -p $dst_path
  cd $dst_path
  mput $src_path

  bye
EOF
}
```

## ftp上传文件

当使用mget和mput上传或下载多个文件时，为了关闭确认提醒，可使用prompt命令。

```shell
function ftp_upload() {
  src_path=$1
  src_file=$2
  dst_path=$3
  dst_version=$4
  echo $dst_path/$dst_version

  ftp -v -n $DAILY_HOST <<EOF
  quote pasv
  passive
  user $DAILY_USER $DAILY_PWD

  mkdir $dst_path
  mkdir $dst_path/$dst_version
  cd $dst_path/$dst_version

  prompt
  lcd  $src_path
  mput $src_file

  bye
EOF
}

```

## 参考

[https://www.jianshu.com/p/7357f31c2441](https://www.jianshu.com/p/7357f31c2441)