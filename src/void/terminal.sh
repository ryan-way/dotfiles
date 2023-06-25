sudo xbps-install -Syu \
  git \
  make\
  python\
  nodejs\
  cargo\
  gcc \
	exa\
  bat\
  zoxide\
  tree\
  zellij\
  ripgrep\
  btop\
  tldr\
  dust\
  bandwhich\
  mdcat\
  procs\
  tokei\
  delta\
  fd \
  zsh \
  starship \
  neovim \
  neofetch
chsh -s $(which zsh)
LV_BRANCH='release-1.3/neovim-0.9' zsh <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
