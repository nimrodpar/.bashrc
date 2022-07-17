# Using keychain to load SSH identity
/usr/bin/keychain --nogui $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh

# show git branch in shell
source ~/.git-prompt.sh  # https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# \u is the username
# \h is the hostname
# \W is the path
# \[\033[01;30m\] <something> [\033[00m\] colorizes <something> 
# Replace the '30m' with '31m' etc. for other colors: BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE = range(8)
export PS1='[\u@\h: \033[01;34m\W\033[00m\033[1;35m$(__git_ps1 " (%s)")\033[0m]\$ '
