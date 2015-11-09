alias diff="colordiff -u"
alias pretty-json="python -m json.tool"
alias ..="cd .."
alias mkdir="mkdir -pv"


###
# Allows you to capture network traffic on a remote machine
# and display it in wireshark on your machine.
# Usage:
# 	rewire [<user>@]<host> [<tshark options and filters>]
###
function rewire {
	local host=$1
	shift 
	local options=$@

	/usr/bin/ssh -iany $host tshark -w - $options | wireshark -k -i -
}

test -f ~/.bash_aliases_untracked && source ~/.bash_aliases_untracked
