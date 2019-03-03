source ~/env_setup/.git.bash

# Bash Commands
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

# Atom Commands
alias a='atom'

alias anote='a ~/Desktop/notes'
alias aenv='a ~/env_setup'

# Git Commands
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gd='git diff'
alias gl='git log'
alias gcm='git commit -m'
alias gch='git checkout'

# Ruby Commands
alias be='bundle exec'
