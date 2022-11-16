# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Custom prompt
export PS1="\n\e[1;32m[\u@\h \W]\$ \e[m "

# User specific aliases and function
source $HOME/aliases
