# ----- #
# shell #
# ----- #

alias path="echo '$PATH' | tr : '\n'" # display path for troubleshooting
alias disk="df -h ~"                  # show disk space
alias psr="ps aux | ag ruby"          # show ruby processes
alias cl="clear"                      # simple clear
alias sniff="ngrep -W byline port 80"


# ----- #
# rails #
# ----- #

alias bxe="bundle exec rake"
alias be="bundle exec"

# --- #
# git #
# --- #

alias gs="git status"
alias gpr="hub pull-request"                                      # create a pull request
alias gds="git diff | subl"                                       # open git diff in st3
alias ga="git add ."                                              # adds all uncommited changes to staging
alias gb="git branch -av"                                         # show all local and remote branches with last commit
alias gpu="git push --set-upstream origin HEAD"                   # pushes and sets upstream / thanks @neslom
alias gcb="git checkout -b"                                       # create and checkout to new branch
alias gclean="git branch --merged master | ag -v '\* master' \
              | xargs -n 1 git branch -d"                         # removes local branches that have been merged into master
alias grv="git remote -v"                                         # show remotes
alias gra="git remote add"                                        # add remote
alias grx="git remote rm"                                         # remove remote
alias glc="git shortlog --summary --numbered"                     # print contributors by # of commits
alias gl="git log --all --graph --decorate"                       # detailed log
alias gbr="git browse"                                            # open repo on github

alias glog="git log --graph --pretty=format:'%Cred%h%Creset \
            %an: %s - %Creset %C(yellow)%d%Creset \
            %Cgreen(%cr)%Creset' --abbrev-commit --date=relative" # pretty log

# ---------- #
# navigation #
# ---------- #

alias ..="cd .."                       # go up one directory
alias todo="subl ~/Documents/todo.txt" # to do list
alias dotf="subl ~/.dotfiles"          # manage my dotfiles

alias s="subl"
alias ss="subl ."

alias tu1="cd ~/turing/module1"
alias tu2="cd ~/turing/module2"
alias tu3="cd ~/turing/module3"

# ------------------ #
# directory contents #
# ------------------ #

alias l="ls -lah"      # lists all with hidden files in readable sizes
alias ll="ls -lh"      # lists human readable sizes
alias lt="ls -lahctr"  # lists sorted by date /most recent last / shows change time

# ------------- #
# miscellaneous #
# ------------- #

alias brewu="brew update && brew upgrade && brew cleanup && brew prune && brew doctor"
alias week="date +%V" # get week number
