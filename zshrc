# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases