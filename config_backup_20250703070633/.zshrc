# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnosterzak"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

set -o vi
# Set-up icons for files/directories in terminal using lsd
alias ls='lsd --group-directories-first'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias yay="paru"
alias v="nvim"

# functions
function note() {
  nvim ~/Documents/repos/notes/$1.md
}

function notes() {
  find ~/Documents/repos/notes -type f | fzf | xargs nvim
}

function repos() {
  base_path=~/Documents/repos/
  if [ $1 ];then
    final_path=$base_path$1
  else
    chosen_dir=$(ls $base_path | fzf)
    final_path=$base_path$chosen_dir
  fi
  cd $final_path
  nvim .
}

function configs() {
  base_path=~/.config/
  if [ $1 ];then
    final_path=$base_path$1
  else
    chosen_dir=$(ls $base_path | fzf)
    final_path=$base_path$chosen_dir
  fi
  cd $final_path
  nvim .
}

function coolApps() {
  echo "nethogs for network monitoring, needs sudo"
  echo "neo for fancy screen saver someday"
  echo "yazi for managing files and folders"
  echo "nmcli d to check if I'm connected to a network"
}

alias trackmania="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/TmUnitedForever/TmForever.exe"

function ffzf() {
  find $1 -type f | fzf
}

function pfzf() {
  ps aux | fzf
}
# bindkey -v

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# bun completions
[ -s "/home/xof/.bun/_bun" ] && source "/home/xof/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:/home/xof/.cargo/bin/:$PATH"

# thefuck
eval $(thefuck --alias)

# nvm
source /usr/share/nvm/init-nvm.sh

export PHPENV_ROOT="/home/xof/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi
