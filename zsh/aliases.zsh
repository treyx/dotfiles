# --- #
# git #
# --- #

alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gcom="git checkout master"
alias whoops="git reset --hard"
alias grv="git remote -v"                        # show remotes
alias gbr="git browse"                           # open repo on github
alias gcb="git checkout -b"                      # create and checkout to new branch

alias glc="git shortlog --summary --numbered"    # print contributors by # of commits
alias gl="git log --all --graph --decorate"      # detailed log

# pushes branch and sets upstream on remote
alias gpu="git push --set-upstream origin HEAD"

# better git log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# better git branch
alias gb='for c in `git branch|perl -pe s/^..//`;do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $c|head -n 1`\\t$c;done|sort -r'

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

#grab full sha of last commit
alias glast="git log -1 --pretty=format:%H | pbcopy"

# ----- #
# other #
# ----- #

alias l="ls -lahFG"                        # lists all with hidden files in readable sizes
alias lt="ls -lahctr"                      # lists sorted by date /most recent last / shows change time
alias path='echo $PATH | tr -s ":" "\n"'   # display path for troubleshooting

alias ..="cd .."
alias s="subl"
alias ss="subl ."
alias cl="clear"

alias cdp="cd ~/projects"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias temp="cd ~/projects/temp"
alias cdi="cd ~/projects/ibn"

alias vsc="code"

alias kb="kubectl"

alias yt="youtube-dl"

# better tree
alias tre="tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;"


