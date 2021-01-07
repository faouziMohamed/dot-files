
#### GIT aliases
alias ga='git add -v'
alias gb='git branch --all --verbose'
alias gbl="git blame"
alias gcm='git commit -m' 
alias gall='git add --all'
alias grm='git rm'
alias gst='git status'
alias gpull='git pull'
alias gpush='git push'
alias gremote='git remote'
alias glg='git log --graph --oneline --decorate --all'
alias grp='git graph'

# apt
alias     apt="sudo apt"
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
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias grep="grep --color=always"
alias igrep="grep -i"

# Shell
alias echo='echo -e'
alias reload="exec $SHELL -l"
alias cls='clear'

# sudo commands
alias schmod='sudo chmod'
alias please='sudo'
alias shutdown="sudo shutdown"

# size
alias dus='du -d 1 -h --all'
alias dU='du  -d  1  -h  --apparent-size  --all  |  sort  -h  |  tail  -n  10'
alias df='df -ah --total'

# misc
alias gg="ping google.fr"
alias headstails="shuf -i 0-1 -n 1"
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'

alias ibrave='brave-browser -incognito'
alias brave='brave-browser'
