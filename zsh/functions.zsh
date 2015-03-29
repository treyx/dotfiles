# ----- #
# shell #
# ----- #


# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}

# --- #
# git #
# --- #


# git commit / twitter
# function gcmt {
#   git commit -m "$1"
#   ruby -e 'require %(jumpstart_auth);ARGV.join(" ").scan(/.{1,140}/).each { |tweet| JumpstartAuth.twitter.update(tweet)}' $1
# }


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

group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'pry-rails'
end

" >> Gemfile;

}
