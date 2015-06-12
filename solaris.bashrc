PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '

PATH=${HOME}/bin:/opt/csw/gnu:/opt/csw/sbin:/opt/csw/bin:/usr/sbin:/usr/bin:/usr/sfw/bin:/opt/solarisstudio12.4/bin:/usr/ccs/bin:/usr/local/bin:/usr/sfw/bin:/usr/sfw/sbin


# User specific aliases and functions
function parse_git_branch_and_add_brackets {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "
