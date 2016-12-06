function goog; { open 'http://www.google.com/search?q='${(j:+:)*} }
function google; { open 'http://www.google.com/search?q='${(j:+:)*} }

function va; { 
	if [ -d "env" ]; then
		source 'env/bin/activate';
	fi
	if [ -d "bin" ]; then
		source 'bin/activate';
	fi
}

# Search History
function h() { if [ -z "$*" ]; then history 1; else history 1 | egrep "$@"; fi; }

function doc() { open 'dash://'${(j:+:)*} }

function ddg; { open 'https://www.duckduckgo.com/?q='${(j:+:)*} }

#add your own !bang searches here
alias so='ddg \!so'
alias stack='ddg \!so'
alias wa='ddg \!wa'
alias wolfram='ddg \!wa'
alias wiki='ddg \!w'
alias news='ddg \!n'
alias youtube='ddg \!yt'
alias map='ddg \!m'
alias image='ddg \!i'
alias ducky='ddg \!'
