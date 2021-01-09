[ -f ~/.bash_config ]&& source ~/.bash_config;

for file in ~/.{color,bash_aliases,bash_functions,bash_user_prompt,bash_exports};
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# >>>  conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/faouzi/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/faouzi/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/faouzi/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/faouzi/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export GPG_TTY=$(tty)
