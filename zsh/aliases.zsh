# --- #
# zsh #
# --- #

alias s="subl"
alias ss="subl ."
alias cl="clear"

alias path='echo $PATH | tr -s ":" "\n"'   # display path for troubleshooting
alias disk="df -h ~"                    # show disk space

alias sniff="sudo ngrep -W byline port 80"
alias netcheck="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

alias brewu="brew update && brew upgrade && brew cleanup && brew prune && brew doctor"
alias psr="ps aux | ag ruby"            # show ruby processes

# better tree
alias tre="tree -aC -I '.git' --dirsfirst "$@" | less -FRNX;"

# play russian roulette
alias roulette="[ $[ $RANDOM % 6 ] == 0 ] && rm -rf / || echo *Click*"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# ----- #
# rails #
# ----- #

alias r="rake"
alias be="bundle exec"
alias bxe="bundle exec rake"
alias rdbm="bundle exec rake db:migrate"
alias rs="bundle exec rspec spec"

# --- #
# git #
# --- #

alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git checkout"
alias gb="git branch"
alias whoops="git reset --hard"

alias gba="git branch -av"                       # show all local and remote branches with last commit
alias gds="git diff | subl"                      # open git diff in st3
alias gbr="git browse"                           # open repo on github
alias gcb="git checkout -b"                      # create and checkout to new branch
alias grv="git remote -v"                        # show remotes
alias gra="git remote add"                       # add remote
alias grx="git remote rm"                        # remove remote
alias glc="git shortlog --summary --numbered"    # print contributors by # of commits
alias gl="git log --all --graph --decorate"      # detailed log

# pushes upstream and opens branch in browser
alias gpu="git push --set-upstream origin HEAD && git browse"

# pretty log
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# removes local branches that have been merged into master
alias gclean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

# ---------- #
# navigation #
# ---------- #

alias ..="cd .."

alias todo="subl ~/projects/todo.txt"
alias cdp="cd ~/projects"
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias oss="cd ~/projects/oss"
alias temp="cd ~/projects/temp"


alias cdc="cd ~/projects/captainu"
alias cuc="cd ~/projects/captainu/teamlab"
alias cua="cd ~/projects/captainu/launchpad"

# ------------------ #
# directory contents #
# ------------------ #

alias l="ls -lahFG"      # lists all with hidden files in readable sizes
alias lt="ls -lahctr"    # lists sorted by date /most recent last / shows change time

# ------ #
# heroku #
# ------ #

alias hl="heroku logs --tail"
alias hrc="heroku run rails console"

# ---------- #
# Capistrano #
# ---------- #

alias capdep="bundle exec cap production deploy"
