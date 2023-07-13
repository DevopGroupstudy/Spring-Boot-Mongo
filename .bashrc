parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PAGER=less
export MANPAGER=less
export PS1="\[\e[32m\]\u \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
