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

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias l='ls -CF'
alias ll='ls -alF'
alias lh="ls -lh"
alias la='ls -A'
alias lt="ls -lt"
alias lS="ls -lS"
alias igrep="grep -i"
alias echo='echo -e'
alias reload="exec $SHELL -l"
alias gg="ping google.fr"
alias cls='clear'
alias shutdown="sudo shutdown"
alias headstails="shuf -i 0-1 -n 1"
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ibrave='brave-browser -incognito'
alias brave='brave-browser'