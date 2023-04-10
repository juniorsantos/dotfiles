# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=( git zsh-autosuggestions vscode docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

prompt_context() {}
prompt_dir() {
  prompt_segment blue black '%3~'
}

cd ~/Code
