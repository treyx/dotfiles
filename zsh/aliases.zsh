# ------- #
# aliases #
# ------- #


# --- #
# git #
# --- #

alias gs="git status"
alias gds="git diff | subl"
alias gc="git checkout"
alias ga="git add ."
alias gb='git branch -av'
alias gpu="git push --set-upstream origin HEAD"
alias gcb="git checkout -b"
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d" # removes local branches that have been merged into master

# # Log (l)
# print contributors by # of commits
alias glc="git shortlog --summary --numbered"
#detailed log
alias gl="git log --all --graph --decorate"
#prettylog
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
#shortlog
alias gls='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'

# # Remote (r)
alias grl="git remote --verbose"
alias gra="git remote add"


alias s="subl"
alias ss="subl ."


# ---------- #
# navigation #
# ---------- #

alias ..="cd .." # go up one directory

alias tu1="cd ~/turing/module1"
alias tu2="cd ~/turing/module2"
alias tu3="cd ~/turing/module3"

# alias l='ls -1A'         # Lists in one column, hidden files.
# alias ll='ls -lh'        # Lists human readable sizes.
# alias lr='ll -R'         # Lists human readable sizes, recursively.
# alias la='ll -A'         # Lists human readable sizes, hidden files.
# alias lm='la | "$PAGER"' # Lists human readable sizes, hidden files through pager.
# alias lx='ll -XB'        # Lists sorted by extension (GNU only).
# alias lk='ll -Sr'        # Lists sorted by size, largest last.
# alias lt='ll -tr'        # Lists sorted by date, most recent last.
# alias lc='lt -c'         # Lists sorted by date, most recent last, shows change time.
# alias lu='lt -u'         # Lists sorted by date, most recent last, shows access time.
# alias sl='ls'            # I often screw this up.

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Resource Usage
# alias df='df -kh'

alias path="echo '$PATH' | tr : '\n'" # display path for troubleshooting

# ------------- #
# miscellaneous #
# ------------- #

alias week='date +%V' # get week number

alias todo="subl ~/Documents/todo.txt"

alias dotf="subl ~/.dotfiles"
