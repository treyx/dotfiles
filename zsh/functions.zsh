# ----- #
# shell #
# ----- #

# cd to dotfile repo and open in editor
function dotf() {
  cd ~/projects/dotfiles && Subl .
}

# create a new directory and enter it
function mkd() {
  if [ $# -lt 1 ]; then
    echo "Missing argument";
    return 1;
  fi

  mkdir -p "$@" && cd "$@"
}

# touch a file and create path
function stouch() {
  if [ $# -lt 1 ]; then
    echo "Missing argument";
    return 1;
  fi

  for f in "$@"; do
    mkdir -p -- "$(dirname -- "$f")"
    touch -- "$f"
  done
}

# --- #
# git #
# --- #

function gcm() {
  args=$@
  git commit -m "$args"
}
function gca() {
  args=$@
  git commit --amend -m "$args"
}
function gcp() {
  args=$@
  git cherry-pick "$args"
}
