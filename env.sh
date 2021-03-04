#!/bin/bash

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
