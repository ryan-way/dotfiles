# Created by newuser for 5.9
source <(/usr/bin/starship init zsh --print-full-init)
eval "$(zoxide init zsh)"

export PATH=$PATH:~/.local/bin
export LANG="en_US.UTF-8"
export EDITOR=$(which lvim)

alias ls="exa --icons -la"
alias top="btop"
alias cat="bat"
alias grep="rg"
alias cd="z"
alias du="dust"
alias find="fd"
alias ps="procs"

neofetch

# bun completions
[ -s "/home/rway/.bun/_bun" ] && source "/home/rway/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
