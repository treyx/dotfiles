# --- #
# zsh #
# --- #

alias s="subl"
alias ss="subl ."
alias cl="clear"
alias path="echo '$PATH' | tr : '\n'"   # display path for troubleshooting
alias disk="df -h ~"                    # show disk space

alias rserv="ruby -run -ehttpd . -p 8000"
alias pyserv="python -m SimpleHTTPServer 8000"
alias serv="http-server -p 8000"

alias sniff="sudo ngrep -W byline port 80"
alias brewu="brew update && brew upgrade && brew cleanup && brew prune && brew doctor"
alias psr="ps aux | ag ruby"            # show ruby processes

# better tree
alias tre="tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# ----- #
# rails #
# ----- #

alias r="rake"
alias be="bundle exec"
alias bxe="bundle exec rake"
alias rdm="bundle exec rake db:migrate"
alias rs="bundle exec rspec spec"
alias rsf="bundle exec rspec spec/features"
alias rsm="bundle exec rspec spec/models"

# ------ #
# heroku #
# ------ #

alias hl="heroku logs --tail"
alias hrc="heroku run rails console"

# --- #
# git #
# --- #

alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gb="git branch -av"                        # show all local and remote branches with last commit
alias gds="git diff | subl"                      # open git diff in st3
alias gbr="git browse"                           # open repo on github
alias gpu="git push --set-upstream origin HEAD"  # pushes and sets upstream
alias gcb="git checkout -b"                      # create and checkout to new branch
alias grv="git remote -v"                        # show remotes
alias gra="git remote add"                       # add remote
alias grx="git remote rm"                        # remove remote
alias glc="git shortlog --summary --numbered"    # print contributors by # of commits
alias gl="git log --all --graph --decorate"      # detailed log

# pretty log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

# ---------- #
# navigation #
# ---------- #

alias ..="cd .."
alias todo="subl ~/Documents/todo.txt"
alias cdp="cd ~/projects"
alias tu1="cd ~/turing/module1"
alias tu2="cd ~/turing/module2"
alias tu3="cd ~/turing/module3"
alias tu4="cd ~/turing/module4"
alias hh="cd ~/turing/module3/hyper_hub"

# ------------------ #
# directory contents #
# ------------------ #

alias l="ls -lah"      # lists all with hidden files in readable sizes
alias lt="ls -lahctr"  # lists sorted by date /most recent last / shows change time
