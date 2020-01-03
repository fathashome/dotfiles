# Load local .bashrc if it exists
test -f ~/.bashrc-local && source ~/.bashrc-local

#Locations/access
alias noc='ssh noc1.or1'
alias jump='ssh jump'
alias jump2='ssh jump2'
alias viper='ssh viper'
alias noc3='ssh noc3'
alias noc2='ssh noc2'

# Vault alias
#alias vault='/home/vanduren/bin/tools/vault'
alias vaultauth='vault login -method=ldap username=vanduren'
alias vaultlist='vault list secret/dxgoc'


### Tools ###
alias tree='tree pahCL 2'
alias ascp='scp -rS ~/bin/scpagent.pl'
alias cp="rsync -ah --progress"
alias ll='ls -lahG --color=auto'
alias ls='ls -G --color=auto'
alias sshs='ps -Afl | grep ssh'
# Mac tools
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

# PATH settings
export VAULT_ADDR=https://vault.loc.adobe.net
export PATH=${PATH}:${HOME}/bin

# Authentication Agent start
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
            (umask 077; ssh-agent >| "$env")
            . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
            agent_start
                ssh-add ~/.ssh/octopi_id_rsa
                ssh-add ~/.ssh/id_rsa
		ssh-add ~/.ssh/viper-id_rsa
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
                ssh-add ~/.ssh/octopi_id_rsa
                ssh-add ~/.ssh/id_rsa
		ssh-add ~/.ssh/viper-id_rsa
fi

unset env

cd

complete -C /home/vanduren/bin/tools/vault vault
