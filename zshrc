# load custom executable functions
#for function in ~/.zsh/functions/*; do
#  source $function
#done

# Font maps
for file in ~/.local/share/fonts/*.sh; do
    source "$file"
done

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
