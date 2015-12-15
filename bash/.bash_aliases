# Only add aliases for commands and options that you know by heart.
# You must not be blocked when you are on a machine that does not
# have aliases
alias less="less -r"
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

	/usr/bin/ssh $host tshark -iany -w - $options | wireshark -k -i -
}

###
# Allows you to start a chrome browser in a new profile.
# The profile is removed when the browser is closed.
# Usage:
# 	private-chrome
###
function private-chrome {
	local profile_directory=$(mktemp -d --suffix _incognito_chrome);
	if [ -d "$profile_directory" ]; then
		google-chrome --no-first-run --user-data-dir=$profile_directory $@ 2>/dev/null
		rm -rf $profile_directory
	fi
}

###
# Allows you to start a chrome beta browser in a new profile.
# The profile is removed when the browser is closed.
# Usage:
# 	private-chrome-beta
###
function private-chrome-beta {
	local profile_directory=$(mktemp -d --suffix _incognito_chrome);
	if [ -d "$profile_directory" ]; then
		google-chrome-beta --no-first-run --user-data-dir=$profile_directory $@ 2>/dev/null
		rm -rf $profile_directory
	fi
}



test -f ~/.bash_aliases_untracked && source ~/.bash_aliases_untracked
