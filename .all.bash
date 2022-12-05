source ~/env_setup/.git.bash

# Bash Commands
alias brc='code ~/.bashrc'
alias reload='source ~/.bash_profile'
alias path='echo -e ${PATH//:/\\n}'

alias cl='clear'
alias ll='ls -al'

# CD Commands
alias ..='cd ..'
alias ...='cd ../..'
alias cddesk='cd ~/Desktop'
alias cdproj='cd ~/Desktop/projects'
alias cdnote='cd ~/Desktop/notes'
alias cdenv='cd ~/env_setup'

# VSCode Commands
alias c='code'
alias c.='c .'

alias cnote='c ~/Desktop/notes'
alias cenv='c ~/env_setup'

# Git Commands
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gd='git diff'
alias gl='git log'
alias gcm='git commit -m'
alias gch='git checkout'
alias gdc='git diff --cached'
alias gcam='git commit --amend'
alias gcp='git cherry-pick'

alias gt='git log --oneline --decorate --all --graph'
alias gtb='git log --oneline --decorate --graph $1 $2'

alias gls='git log -S"$1"' # reverse search for the deletion of a $1

# Ruby Commands
alias be='bundle exec'
