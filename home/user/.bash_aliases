
#### GIT aliases
alias g="git"
alias ga='git add -v'
alias gb='git branch --all --verbose'
alias gbl="git blame"
alias gcm='git commit ' 
alias gmd='git commit --amend'
alias gall='git add --all'
alias grm='git rm'
alias gst='git status'
alias gpull='git pull'
alias gpush='git push'
alias gremote='git remote'
alias glg='git log --graph --oneline --decorate --all'
alias grp='git graph'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"

# apt
alias     apt="sudo apt"
alias apt-clean='apt autoclean; apt autopurge -y; apt autoremove -y'
alias    dpkg="sudo dpkg"
alias     maj="apt update && apt full-upgrade -y"
alias      up="apt update && apt full-upgrade -y"
alias    full="apt full-upgrade -y"
alias  remove="apt autoremove -y"
alias install="apt install"

# ls
alias ls='ls --color=always'
alias dir='dir --color=always'
alias vdir='vdir --color=always'
alias l='ls -CF'
alias ll='ls -alF'
alias lh="ls -lh"
alias la='ls -A'
alias lt="ls -lt"
alias lS="ls -lS"

# grep
alias grep='grep --color=always'
alias fgrep='grep -F --color=always'
alias egrep='grep -E --color=always'
alias igrep="grep -i"

# Shell
alias echo='echo -e'
alias reload="exec $SHELL -l"
alias cls='clear'

# sudo commands
alias sudo='sudo '
alias please='sudo'
alias shutdown="sudo shutdown"
alias schmod='sudo chmod'

# IP addresses
alias ipp="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias interfaces='ifconfig -s'

# size
alias dus='du -d 1 -h --all'
alias dU='du  -d  1  -h  --apparent-size  --all  |  sort  -h  |  tail  -n  10'
alias df='df -ah --total'

# misc
# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
alias week='date +%V'
alias gg="ping google.fr"
alias headstails="shuf -i 0-1 -n 1"
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ibrave='brave-browser -incognito'
alias brave='brave-browser'
