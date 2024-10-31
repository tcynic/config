eval "$(starship init zsh)"

alias ls='lsd'
alias ll='lsd -l'

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

SPACESHIP_PROMPT_ASYNC=FALSE
