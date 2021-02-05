#!/bin/bash

function init(){
  echo "download git minpac"
  git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac

  echo "download git tmux pac manager"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  bash ~/.tmux/plugins/tpm/bin/install_plugins
  
  download
}

function download() {
  echo "async config"
  ./tools/git/git_auto_commit.sh download
  echo "async vimrc"
  cp tools/vim/.vimrc ~/
  echo "async tmux config"
  cp tools/tmux/.tmux.conf ~/
}

function upload() {
  echo "aync vimrc"
  cp ~/.vimrc tools/vim
  echo "asynv config"
  ./tools/git/git_auto_commit.sh upload
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
