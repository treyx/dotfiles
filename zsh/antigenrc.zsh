source $HOME/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

  # Guess what to install when running an unknown command
  command-not-found

  # Syntax highlighting bundle
  zsh-users/zsh-syntax-highlighting

  # Additional completion definitions for Zsh
  zsh-users/zsh-completions

EOBUNDLES

antigen apply
