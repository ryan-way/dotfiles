#!/bin/bash

confirm() {
  [ $# = 1 ] || (echo "expected one argument" && return 1)

  read -p "$1 y/N: " response
  case $response in
    "y" | "Y")
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

setup() {
  install="cd ~/.rway/src;"
  mkdir ~/.config

  [ -d ~/.rway ] || git clone --recurse-submodules https://github.com/ryan-way/dotfiles ~/.rway
  cd ~/.rway/src/
}

add_executable() {
  [ $# = 1 ] || (echo expected configuration path && return 1)
  echo installing executable
  install+="bash $1;"
}

generate_directory_install() {
  [ $# = 1 ] || (echo Expected directory && return 1)
  for config in $(/bin/ls $1); do
    local path="$1/$config"
    confirm $config && add_install $path
  done
}

install_system_directory() {
  [ $# = 1 ] || (echo Expected system directory && return 1)
  confirm terminal && add_executable "$1/terminal.sh"
  confirm environment && add_executable "$1/environment.sh"
}

generate_system_install() {
  echo "Selection an option from the follow:"
  /bin/ls system | nl
  read -p "Selection (or zero to skip): " selection
  case $selection in
    "0")
      ;;
    *)
      options=()
      for item in $(/bin/ls system); do
        options+=("$item")
      done

      install_system_directory "system/${options[$selection-1]}"
      ;;
  esac
}

generate_config_install() {
  for config in $(/bin/ls dotfiles/.config); do
    pwd=$(pwd)
    confirm $config && add_link "$(pwd)/dotfiles/.config/$config" "~/.config/$config"
  done
}

add_link() {
  [ $# = 2 ] || (echo expected configuration path && return 1)
  install+="ln -s $1 $2;"
  local install_path="$1/install.sh"
  if test $install_path; then
    install+="$2/install.sh;"
  fi
}

generate_dotfiles_install() {
  for config in $(/bin/ls -A dotfiles); do
    case $config in
      ".config")
        confirm $config && generate_config_install
        ;;
      *)
        pwd=$(pwd)
        confirm $config && add_link "$(pwd)/dotfiles/$config" "~/$config"
        ;;
    esac
  done
}

generate_install() {
  generate_dotfiles_install
  # do system last so service updates don't interfere with terminal updates
  generate_system_install
}

main() {
  setup
  generate_install
  echo $install | sed 's/;/\n/g' | bash
}

main
