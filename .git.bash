# set up git completion
# source: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ~/env_setup/.git-completion.bash ]; then
  source ~/env_setup/.git-completion.bash
  __git_complete gch _git_checkout
  __git_complete gb _git_branch
  __git_complete gd _git_diff
fi

# set up git details in bash prompt
function parse_git_dirty {
	[[ -n "$(git status -s 2> /dev/null)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

  export PS1='\w\[\033[1;37m\]$(parse_git_branch)\[\e[0m\]$ '
  PS2='> '
  PS4='+ '
}
PROMPT_COMMAND=proml
