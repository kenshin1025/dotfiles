test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit load zdharma/history-search-multi-word
# zinit light denysdovhan/spaceship-prompt

zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

zinit wait lucid atload"zicompinit; zicdreplay" blockf for zsh-users/zsh-completions
eval "$(starship init zsh)"

alias proje='cd ~/project'

alias ls='ls -G'
alias la='ls -Ga'
alias ll='ls -alF'

alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'

alias d='docker'
alias dcomp='docker-compose'
alias dimg='docker image'
alias dcnt='docker container'
alias dcur='docker container ls -f status=running -l -q'
alias dexec='docker container exec -it $(dcur)'
alias drun='docker container run --rm -d'
alias drunit='docker container run --rm -it'
alias dstop='docker container stop $(dcur)'
alias docker-clean='docker stop $(docker ps -q) && docker rmi $(docker images -q) -f'

alias -g @A='| awk'
alias -g @C='| pbcopy' # copy
alias -g @C='| wc -l' # count
alias -g @G='| grep --color=auto' # 鉄板
alias -g @H='| head' # 当然tailもね
alias -g @T='| tail'
alias -g @L='| less -R'
alias -g @X='| xargs'