HISTSIZE=5000

#### GIT aliases
alias gst='git status'
alias gcm='git commit -m' 
alias gadd='git add'
alias gall='gadd .'
alias gpush='git push'
alias gpull='git pull'
alias gremote='git remote'
alias grm='git rm'
alias glog='git log --graph --oneline --decorate --all'
alias glg='git log'
alias ggrph='git graph'

#############APT#############
alias     apt="sudo apt"
alias    dpkg="sudo dpkg"
alias     maj="apt update && apt full-upgrade -y"
alias      up="apt update && apt full-upgrade -y"
alias    full="apt full-upgrade -y"
alias  remove="apt autoremove -y"
alias install="apt install"


alias l='ls -CF'
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias ll='ls -alF'
alias lh="ls -lh"
alias la='ls -A'
alias lt="ls -lt"
alias lS="ls -lS"
alias igrep="grep -i"
alias echo='echo -e'
alias reload="exec $SHELL -l"

##### ALIAS ROOT ####
alias schmod='sudo chmod'
alias please='sudo'

alias gg="ping google.fr"


alias cls='clear'
alias shutdown="sudo shutdown"
alias headstails="shuf -i 0-1 -n 1"
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'

alias ibrave='brave-browser -incognito'
alias brave='brave-browser'
