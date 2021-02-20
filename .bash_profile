export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias k='kubectl'
alias kdump='kubectl get all --all-namespaces'

alias ls='ls -ltrGFha'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ '

# Same as linux, per https://apple.stackexchange.com/questions/33677/how-can-i-configure-mac-terminal-to-have-color-ls-output
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
