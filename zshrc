
# ############################################################################
# Variables
# ############################################################################
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

# ############################################################################
# Keychain
# ############################################################################

# ############################################################################
# allow $USER to use keys. Only enter once and it will remain enabled till
# you delete it or reboot the server 
###########################################################################
/usr/bin/keychain $HOME/.ssh/id_ed25519
source "${HOME}/.keychain/$(hostname)-sh" 

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ############################################################################
# Font maps
# ############################################################################
for file in ~/.local/share/fonts/*.sh; do
    source "$file"
done

# ############################################################################
# Aliases 
# ############################################################################
[[ -f ~/.aliases ]] && source ~/.aliases

# ############################################################################
# Oh My Zsh
# ############################################################################

### Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# Zsh Theme (Powerlevel10k)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ############################################################################
# Functions
# ############################################################################
gfd() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview --bind 'ctrl-j:preview-down,ctrl-k:preview-up,ctrl-n:preview-page-down,ctrl-m:preview-page-up'
}
