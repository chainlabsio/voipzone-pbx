#!/bin/bash
cp /etc/bash.bashrc /etc/bash.bashrc.original
cat <<EOT >> /etc/bash.bashrc
#User specific aliases and functions
#Config file

alias c='clear'

#Colorize the ls output

alias ls='ls --color=auto'

#Use a long listing format

alias ll='ls -la'

#Show hidden files

alias l.='ls -d .* --color=auto'

#get rid of command not found

alias cd..='cd ..'

#a quick way to get out of current directory

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

#Colorize the grep command output for ease of use (good for log files)

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias bc='bc -l'

#handy short cuts

alias h='history'
alias j='jobs -l'

alias path='echo -e ${PATH//:/\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

#Stop after sending count ECHO_REQUEST packets

alias ping='ping -c 5'

#Do not wait interval 1 second, go fast

alias fastping='ping -c 100 -s.2'

alias ports='netstat -tulanp'

#do not delete / or prompt if deleting more than 3 files at a time

alias rm='rm -I --preserve-root'

#confirmation

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

#Parenting changing perms on /

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

#install colordiff package :)

alias diff='colordiff'

#distrp specifc RHEL/CentOS

alias update='yum update'
alias updatey='yum -y update'

#pass options to free

alias meminfo='free -m -l -t'

#get top process eating memory

alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

#get top process eating cpu

alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

#Get server cpu info

alias cpuinfo='lscpu'

#older system use /proc/cpuinfo

alias cpuinfo='less /proc/cpuinfo' ##

#get GPU ram on desktop / laptop

alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

#this one saved by butt so many times

alias wget='wget -c'

#FreeSwitch defined aliases

alias fscdr='cd /var/log/cdr-csv'
alias fstc='tail -f /var/log/cdr-csv/Master.csv'
alias fsl='cd /usr/local/freeswitch/log'
alias fsb='cd /usr/local/freeswitch/bin'
alias fscli='/usr/local/freeswitch/bin/fs_cli'
alias fsconf='cd /usr/local/freeswitch/conf'
alias fsdial='cd /usr/local/freeswitch/conf/dialplan'
alias fsdir='cd /usr/local/freeswitch/conf/directory'
alias fssrc='cd /usr/local/src/freeswitch'

#Source global definitions

if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi
EOT
source /etc/bash.bashrc
exit 0
