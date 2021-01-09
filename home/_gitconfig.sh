USER_NAME='Faouzi Mohamed'
USER_EMAIL='57812398+faouziMohamed@users.noreply.github.com'
CREDENTIAL_POLICY='store'
CORE_EDITOR='nano'
DEFAULT_BRANCH='main'
PULL_POLICY='only'
ENABLE_RERERE='true'
SIGN_COMMIT_WITH_GPG='false' # a gpg key is needed in order to sign commit

git config --global user.name          "${USER_NAME}"
git config --global user.email         "${USER_EMAIL}"
git config --global credential.helper  "${CREDENTIAL_POLICY}"
git config --global core.editor        "${CORE_EDITOR}"
git config --global init.defaultBranch "${DEFAULT_BRANCH}"
git config --global pull.ff            "${PULL_POLICY}"
git config --global rerere.enabled     "${ENABLE_RERERE}"
git config --global commit.gpgSign     "${SIGN_COMMIT_WITH_GPG}"

GIT_ALIASES=("cancel,reset --hard HEAD^
unstage,reset HEAD
graph,log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset'
ckt,checkout
st,status
sh,stash
a,add
cm,commit
cma,commit --amend
cmm,commit -m
pl,pull
ps,push
ls,ls-files
")

cat  << EOF > user/.gitconfig
[color]
    ui = auto
[alias]
	cancel = reset --hard HEAD^
	unstage = reset HEAD
	graph = log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset'
	ckt = checkout
	st = status
	sh = stash
	a = add
	cm = commit
	cma = commit --amend
	cmm = commit -m
	pl = pull
	ps = push
    ls = ls-files
EOF
