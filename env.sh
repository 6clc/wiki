#!/bin/bash

function start() {
  echo "async config"
  git pull
  echo "async vimrc"
  cp tools/vim/.vimrc ~/
}

function stop() {
  echo "aync vimrc"
  cp ~/.vimrc tools/vim
  echo "asynv config"
  git push
}

function usage(){
  echo "stop: upload setting"
  echo "start: download setting"
  echo "init: first use"
}

function main() {
  local cmd=$1
  case $cmd in
    start)
      start
    ;;
    stop)
      stop
    ;;
    help)
      usage
    ;;
  esac
}

main $@
