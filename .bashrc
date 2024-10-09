# Aliases
alias vi="nvim"
alias q="exit"
alias c="clear"
alias ls="ls -gh --color=auto --time-style=long-iso --group-directories-first"
alias la="ls -A"
alias tree="tree --dirsfirst"
alias src="source ~/.bashrc"
alias del="cat /dev/null > ~/.bash_history"
alias listkeys="gpg2 --list-keys --keyid-format=long --with-fingerprint"
alias fwup="fwupdmgr get-updates"
alias showmac="macchanger -s wlp3s0"

# Prompt colours
orange="\[\e[1;38;5;166m\]"
blue="\[\e[1;38;5;109m\]"

# Environment variables
export PS1="${orange}[\u@\h] ${blue}\w/ ${orange}\$ \[\e[0m\]"
export LS_COLORS="di=01;38;05;109"
export EDITOR="nvim"
export GPG_TTY=$(tty)
