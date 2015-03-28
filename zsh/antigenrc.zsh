source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# oh-my-zsh plugins
antigen bundle git
antigen bundle bundler
antigen bundle command-not-found



antigen bundles <<EOBUNDLES

  # Guess what to install when running an unknown command
  command-not-found

  # Syntax highlighting bundle
  zsh-users/zsh-syntax-highlighting

  # Additional completion definitions for Zsh
  zsh-users/zsh-completions

EOBUNDLES

antigen apply
