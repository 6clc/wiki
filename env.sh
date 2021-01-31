#!/bin/bash

function init(){
  echo "download git minpac"
  git clone https://github.com/k-takata/minpac.git \
  ~/.vim/pack/minpac/opt/minpac
  
  download
}

function download() {
  echo "async config"
  ./tools/git/git_auto_commit.sh download
  echo "async vimrc"
  cp tools/vim/.vimrc ~/
}

function upload() {
  echo "aync vimrc"
  cp ~/.vimrc tools/vim
  echo "asynv config"
  ./tools/git/git_auto_commit.sh upload
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
