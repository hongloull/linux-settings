# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export EDITOR="emacs -nw"
alias mplayer="mplayer -ass"
alias emacs="emacs -nw"
alias ls="ls -Gahl --color"
alias e="emacs -nw"
alias p="python"
alias c="cd"
alias r='rez-env'
alias re='rez-env'
alias rb='rez-build --install'
alias nautilus="nautilus --browser ."
alias n="nautilus"
alias g="git"
alias l="ls"
alias pycharm="/apps/shared/pycharm/2017.1.5/bin/pycharm.sh"
alias grep="grep --color"
alias ts="mate-screenshot --interactive"
# show git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[00m\]\u@\h\[\033[01;33m\] \w \[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

shopt -s cdable_vars

export QT_QPA_PLATFORMTHEME=qt5ct
