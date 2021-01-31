#/bin/bash

# https://broqiang.github.io/2018/01/20/git-auto-commit-on-shutdown/

cz_dir=~/wiki

commit_date=$(date +%Y-%m-%d_%H-%M-%S)

action=$1

# 自动提交函数
for cur_dir in ${cz_dir}
do
  echo $cur_dir
  pushd $cur_dir
  if [[ "$action" == "download" ]]; then
    git pull
  fi

  if [[ "$action" == "upload" ]]; then
    git add .
    git commit -m "shell auto commit on ${commit_date}"
    git push
  fi
  popd
done
