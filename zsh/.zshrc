# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export DOCKER_DEFAULT_PLATFORM=linux/amd64

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"

plugins=( git zsh-autosuggestions vscode docker zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

prompt_context() {}
#prompt_dir() {
#  prompt_segment blue black '%3~'
#}

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export LESS=-JMQRiFX

#cd ~/Code
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
