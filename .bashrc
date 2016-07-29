# Load local .bashrc if it exists
test -f ~/.bashrc-local && source ~/.bashrc-local

#Locations/access
alias noc='ssh noc1.or1'
alias netops='ssh netops1.dmz.ut1.omniture.com'
alias jump2='ssh -f -N -q bastion'
alias jump='ssh jump'

### Tools ###
alias cp="rsync -ah --progress"
alias ll='ls -lahG'
alias ls='ls -G'
alias sshs='ps -Afl | grep ssh'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
# Control cd command behavior
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
# Control grep command output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# Colorize diff output
alias diff='colordiff'
# Make mount command output human readable format
alias mount='mount | column -t'
# Command shortcuts
alias h='history'
#Set vim as default
alias vi='vim'
alias svi='sudo vi'
alias edit='vim'
alias df='df -H'
alias du='du -ch'
# Control ping output
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
# Show open ports
alias ports='netstat -tulanp'
# Safety nets
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# Quick system stats
## pass options to free ## 
alias meminfo='free -m -l -t'
## get top process eating memory
alias psmem='ps aux | sort -nr -k 4'
alias psmem10='ps aux | sort -nr -k 4 | head -10'
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
## Get server cpu info ##
alias cpuinfo='lscpu'
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'


# Open VNC for GOC wall zone computers
alias zone1='open vnc://10.30.162.224'
alias zone2='open vnc://10.30.162.227'
alias zone3='open vnc://10.30.162.230'
alias zone4='open vnc://10.30.162.225'