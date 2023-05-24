# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export DOCKER_DEFAULT_PLATFORM=linux/amd64

ZSH_THEME="robbyrussell"

plugins=( git zsh-autosuggestions vscode docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

prompt_context() {}
prompt_dir() {
  prompt_segment blue black '%3~'
}

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

cd ~/Code
