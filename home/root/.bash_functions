
function ex() {
  if [ -f $1 ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via >ex<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function mk() {  # mk: Create a new directory and enter it
    mkdir -pv "$@" && cd "$@" || exit
}

function cl () {  # cs: Run cd and ls at once: {{{1
    cd "$@" && ls -F
}

# Random password generator (8 caractères by default)
function genpasswd() 
{
  date +%s | sha256sum | base64 | head -c$1 ;echo
}

function conda_switch() {
    conda deactivate && conda activate "$1"
}

function path() {
    echo "$PATH" | tr ':' '\n'
}
