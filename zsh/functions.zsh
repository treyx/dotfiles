# ----- #
# shell #
# ----- #

# create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}

# cd to dotfile repo and open in editor
function dotf() {
  cd ~/.dotfiles && Subl .
}

# touch a file and create path
function supertouch() {
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

# ----- #
# rails #
# ----- #

function rails_pg() {
  rails new $1 -T -B --database=postgresql

  cd $1

  add_rails_gems
  bundle
  rails generate rspec:install

  git init
  git add .
  git commit -m "initial commit"

  subl .;
}

function add_rails_gems() {

echo "

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'pry-rails'
  gem 'awesome_print'
end

" >> Gemfile;

}
