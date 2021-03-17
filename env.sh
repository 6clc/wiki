#!/bin/bash

GH_TOKEN=7e1f92dcd38a84d7159b60b26b78e534fd3489ed
username=6clc
REPO_URL=https://$GH_TOKEN@github.com/6clc/wiki
function init(){

  workspace="/home/liuchao/init_wiki_tools"
  if [ ! -f $workspace ]; then
    mkdir -p $workspace
  fi
  application_dir="/home/liuchao/applications"
  if [ ! -f $application_dir ]; then
    mkdir -p $application_dir
  fi

  echo "intstal vim8 pac manager minpac"
  git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac

  echo "intsall tmux pac manager"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  bash ~/.tmux/plugins/tpm/bin/install_plugins

  echo "install starship"
  git clone git@github.com:starship/starship.git $workspace
  pushd $workspace/starship
    bash install/install.sh -b $application_dir
    sed -i '$a\eval "$(starship init bash)"' ~/.bashrc
  popd
  
  rm -rf $workspace

  download
}

function auto_git_commit() {
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
      git pull $REPO_URL
    fi

    if [[ "$action" == "upload" ]]; then
      git add .
      git config user.name liuchao
      git config user.email chaoliu.lc@qq.com
      git commit -m "shell auto commit on ${commit_date}"
      git push $REPO_URL
    fi
    popd
  done

}

function download() {
  echo "async config"
  auto_git_commit download
  echo "async vimrc"
  if [ -f ~/.vimrc ]; then rm -rf ~/.vimrc; fi
  cp tools/vim/.vimrc ~/

  echo "async tmux config"
  if [ -f ~/.tmux.conf ]; then rm -rf ~/.tmux.conf; fi
  cp tools/tmux/.tmux.conf ~/
}

function upload() {
  echo "aync vimrc"
  cp ~/.vimrc tools/vim
  echo "asynv config"
  auto_git_commit upload
  echo "async tmux"
  cp ~/.tmux.conf tools/tmux
}

function usage(){
  echo "1. upload: upload setting"
  echo "2. download: download setting"
  echo "3. init: first use"
}

function main() {
  local cmd=$1
  case $cmd in
    download)
      download 
    ;;
    upload)
      upload
    ;;
    init)
      init
    ;;
    help)
      usage
    ;;
    *)
      echo "no thing execute"
      usage
    ;;
  esac
}

main $@
