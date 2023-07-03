#!/bin/sh

# update xbps
sudo xbps-install -yu libstdc++

# install git stuff
sudo xbps-install -y ghq

#install qutebrowser
sudo xbps-install -y qutebrowser

# update font
ghq get --look --shallow http://github.com/ryanoasis/nerd-fonts
./install.sh Hack
cd

# install desktop environment
sudo xbps-install -y\
  xorg-minimal \
  xf86-video-nouveau \
  i3lock-color \
  dbus \
  elogind \
  awesome \
  kitty \
  polybar \
  rofi \
  papirus-icon-theme \
  picom \
  feh \
  slim \
  slim-void-theme

sudo mv /usr/share/slim/themes/default /usr/share/slim/themes/default.bak
sudo ln -s /usr/share/slim/themes/slim-void-theme /usr/share/slim/themes/default

sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/elogind /var/service/
sudo ln -s /etc/sv/slim /var/service/

sudo reboot
