# Use vi for keybinding
bindkey -v

# Bump up history settings
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Load up my dotfiles
# NOTE: there are some issues with the prompt and completion right now. I now
# realize that oh-my-zsh is a really great package, but just one that I don't
# want. Currently I'm halfway between oh-my-zsh and rolling my own ZSH configs.
source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/functions
source $HOME/dotfiles/zsh/prompt
source $HOME/dotfiles/zsh/completion

# Stop aliasing stuff and then immediately forgetting to use the alias. If
# needed, alias the original command here but print "Stop it! Use <alias>" to
# remind myself.
source $HOME/dotfiles/stop_it

# Configure rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

