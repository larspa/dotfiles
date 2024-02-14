export ZSH=$HOME/.local/share/oh-my-zsh
ZSH_THEME="agnoster"

plugins=(
    git
    zsh-autosuggestions
)

export GIT_EDITOR=nvim

source $ZSH/oh-my-zsh.sh

prompt_context(){}

# --------------------- ALIASES
# =============================
# --------------------- General
alias scz="source ~/.zshrc"

# DEPRECATE: Convert to tmux shortcut 
alias findm="sh ~/man.sh"

# =============================
# --------------------- NPM
# =============================
alias ni="npm install"
alias nid="npm install --save-dev"
alias nr="npm run"
alias nrw="nr --workspace=" # nrw @fresha/partners-spa dev -> npm run --workspace=@fresha/partners-spa dev
alias nrwf="nrw @fresha/" # nrwf partners-spa dev -> npm run --workspace=@fresha/partners-spa dev
alias nrws="nrw @surgeventures/" # nrws partners-spa dev -> npm run --workspace=@surgeventures/partners-spa dev

# =============================
# --------------------- GIT
# =============================
alias gitc="git ch"
alias gitcm="git chm && git pull"
alias gitf="git fetch"
alias gitrbm="git rbom"
gitcmm() {
    git commit -m $1
}
gitcmn() {
    gitf && gitc -B $1 origin/master
}
gitcprev() {
    if [ "$1" != "" ]
    then
        gitc @{$1}
    else
        gitc @{-1}
    fi
}
alias gitst="git stash"
gitstp() {
    if [ "$1" != "" ]
    then
        git stash pop stash@{$1}
    else
        git stash pop
    fi
}
gitpnew() {
    current_branch=$(git branch | sed -n -E 's/\* (.*)/\1/p');
    git push --set-upstream origin $current_branch
}

# Created by `pipx` on 2024-01-23 11:35:35
export PATH="$PATH:/Users/larsspaenij/.local/bin"

# =============================
# --------------------- AWS
# =============================
# start a shell session authenticated to AWS
alias aws-shell='aws-vault exec -d 8h -n'

# login to AWS console
alias aws-login='aws-vault login -d 8h'

# list available AWS profiles
alias aws-profiles="cat ~/.aws/config | grep '\[profile' | sed -r 's/^\[profile (.*)\]$/\1/'"

# =============================
# --------------------- pnpm
# =============================
export PNPM_HOME="/Users/larsspaenij/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
