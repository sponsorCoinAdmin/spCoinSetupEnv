
set -o vi
alias vs="code"

# ALIAS ENVIRONMENT MENU SETTINGS
alias e=". $SPONSOR_COIN_ENV/.e"
alias me=". $SPONSOR_COIN_ENV/.me"
alias ve="vi $SPONSOR_COIN_ENV/.e;e"
alias vme="vi $SPONSOR_COIN_ENV/.me;me"

# DIRECTORY EDITING SETTINGS
alias cdenv="cd $SPONSOR_COIN_ENV"
alias cdsetup="cd $SPONSOR_COIN_SETUP"
alias cdspc="cd $SPONSOR_COIN_HOME"
alias cdroot="cd $SPONSOR_COIN_ROOT"
alias cdt=cdtest"cd $SPONSOR_COIN_HOME"
alias vbrc="vi ~/.bashrc"

#SET UP ALIASES
. $SPONSOR_COIN_ENV"/.a"
. $SPONSOR_COIN_ENV"/.t"
