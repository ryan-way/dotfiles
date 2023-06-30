#!/bin/sh

# update xbps
sudo xbps-install -u libstdc++

# install git stuff
sudo xbps-install ghq

#install qutebrowser
sudo xbps-install qutebrowser

# update font
ghq get --look --shallow http://github.com/ryanoasis/nerd-fonts
./install.sh Hack
cd

# install desktop environment
sudo xbps-install \
  xorg-minimal \
  xf86-video-nouveau \
  dbus \
  elogind \
  sddm \
  awesome \
  kitty \
  polybar \
  rofi \
  papirus-icon-theme \
  picom \
  feh \
  slim \
  slim-void-theme

sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/elogind /var/service/
sudo ln -s /etc/sv/slim /var/service/

sudo reboot
