# Create a new directory and enter it
function md() {
  mkdir -p "$@" && cd "$@"
}


# git commit / twitter
# function gcm {
#   git commit -m "$1"
#   ruby -e 'require %(jumpstart_auth);ARGV.join(" ").scan(/.{1,140}/).each { |tweet| JumpstartAuth.twitter.update(tweet)}' $1
# }
