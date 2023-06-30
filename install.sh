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
  install=""

  ls ~/.rway || git clone https://github.com/ryan-way/dotfiles ~/.rway
  cd ~/.rway/src/
}

add_install() {
  [ $# = 1 ] || (echo expected configuration path && return 1)
  if [ -d "$1" ]; then
    echo installing directory
    echo $1
    install+="ln -s $1 ~/.config/;"
    local install_path="$1/install.sh"
    if test $install_path; then
      install+="~/.config/$install_path;"
    fi
  elif [ -x "$1" ]; then
    echo installing executable
    install+="$1;"
  else
    install+="echo ERROR WITH $1"
  fi
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
  for item in $(/bin/ls $1); do
    confirm $item && add_install "$1/$item"
  done
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
  echo "Here"
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
  generate_system_install
  generate_dotfiles_install
}

main() {
  setup
  generate_install
  echo $install
}

main
