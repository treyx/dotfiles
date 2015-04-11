ZSH_THEME_GIT_PROMPT_PREFIX="λ %{$fg[blue]%}git %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# ZSH_THEME_GIT_PROMPT_CLEAN=
# ZSH_THEME_GIT_PROMPT_DIRTY=

if which rbenv-prompt &> /dev/null; then
  rbenv='%{$fg[green]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rbenv='%{$fg[green]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi

PROMPT='%{$fg[red]%}➟ %{$fg[green]%}%c %{$fg[yellow]%}➟ $(git_prompt_info) %{$fg[green]%}➟ %{$reset_color%}'
RPROMPT="${rbenv}"
