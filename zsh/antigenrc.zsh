source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

  # Syntax highlighting bundle
  zsh-users/zsh-syntax-highlighting

  # Additional completion definitions for Zsh
  zsh-users/zsh-completions

EOBUNDLES

antigen apply
