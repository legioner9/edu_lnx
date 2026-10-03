
# Version Control
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gha="git checkout"
alias gp="git push -u origin master"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias gw="git show --stat --oneline HEAD"
alias gg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gk="gitk --all&"

# pseudoalias gpp= "[git push \$1] | [git push \$2]"
# pseudoalias gmd= "[git merge \$1] | [git difftool]"


alias grb="git rebase"
alias ghp="git cherry-pick"

alias grbc="git rebase --continue"

alias gmt="git mergetool"
alias gm="git merge"


qals(){
    echo 'RUN qals :: show git-alias.bash'
    echo -e '
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gha="git checkout"
alias gp="git push -u origin master"
alias gl="git log --pretty=format:\"%h %s\" --graph"
alias gw="git show --stat --oneline HEAD"
alias gg="git log --graph --abbrev-commit --decorate --date=relative --all"
alias gk="gitk --all&"
alias grb="git rebase"
alias ghp="git cherry-pick"
alias grbc="git rebase --continue"
alias gmt="git mergetool"
alias gm="git merge"    
    '
}