source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

  # Syntax highlighting bundle
  zsh-users/zsh-syntax-highlighting

  # Fish-like autosuggestions
  zsh-users/zsh-autosuggestions

  # Additional completion definitions for Zsh
  zsh-users/zsh-completions

EOBUNDLES

antigen apply
