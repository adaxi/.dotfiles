alias ssh=sshrc
alias diff="colordiff -u"

function rewire {
	local host=$1
	shift 
	local options=$@

	/usr/bin/ssh -iany $host tshark -w - $options | wireshark -k -i -
}

