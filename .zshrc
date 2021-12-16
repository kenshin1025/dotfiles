## シェル統合(https://www.rasukarusan.com/entry/2019/04/13/180443)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## zinit
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# 補完
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# シンタックスハイライト
zinit light zsh-users/zsh-syntax-highlighting

# Ctrl+r でコマンド履歴を検索
zinit light zdharma-continuum/history-search-multi-word

# クローンしたGit作業ディレクトリで、コマンド `git open` を実行するとブラウザでGitHubが開く
zinit light paulirish/git-open

# コマンド `cd-gitroot` を実行すると、gitのプロジェクトルート(.gitがあるディレクトリに)移動してくれる
zinit light mollifier/cd-gitroot

# batコマンドの追加
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat
alias cat='bat'

# git補完の追加
fpath=(
  ${HOME}/.zsh/completions
  ${fpath}
)
autoload -Uz compinit
compinit

## https://github.com/starship/starship/blob/master/docs/ja-JP/guide/README.md
eval "$(starship init zsh)"

alias ls='ls -G'
alias la='ls -Ga'
alias ll='ls -alF'

alias ..='cd ..'

alias d='docker'
alias dcomp='docker-compose'
alias dimg='docker image'
alias dcnt='docker container'
alias dcur='docker container ls -f status=running -l -q'
alias dexec='docker container exec -it '
alias drun='docker container run --rm -d'
alias drunit='docker container run --rm -it'
alias dstop='docker container stop $(dcur)'
alias docker-clean='docker stop $(docker ps -q) && docker rm $(docker ps -aq) && docker rmi $(docker images -q) -f'

alias -g @A='| awk'
alias -g @C='| pbcopy' # copy
alias -g @C='| wc -l' # count
alias -g @G='| grep --color=auto'
alias -g @H='| head'
alias -g @T='| tail'
alias -g @L='| less -R'
alias -g @X='| xargs'