# Only add aliases for commands and options that you know by heart.
# You must not be blocked when you are on a machine that does not
# have aliases
alias less="less -r"
alias diff="colordiff -u"
alias pretty-json="python -m json.tool"
alias ..="cd .."
alias mkdir="mkdir -pv"

test -f ~/.bash_aliases_untracked && source ~/.bash_aliases_untracked
