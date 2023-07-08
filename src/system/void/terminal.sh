sudo xbps-install -y\
  make\
  python\
  nodejs\
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
  procs\
  tokei\
  delta\
  fd \
  zsh \
  starship \
  neovim \
  glow \
  neofetch \
  aws-cli
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
chsh -s $(which zsh)
LV_BRANCH='release-1.3/neovim-0.9' zsh <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
