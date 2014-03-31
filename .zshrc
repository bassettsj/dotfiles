# -- Zsh -----------------------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH="/Users/steven/.dotfiles/.oh-my-zsh"

# -- Editor --------------------------------------------------------------------
EDITOR="subl"

# -- Theme ---------------------------------------------------------------------
# Set name of the theme to load.
# Look in /Users/steven/.dotfiles/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# -- Plugins -------------------------------------------------------------------
# Plugins can be found in /Users/steven/.dotfiles/.oh-my-zsh/plugins/
# Custom plugins may be added to /Users/steven/.dotfiles/.oh-my-zsh/custom/plugins/
#
# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ant git history-substring-search z zsh-syntax-highlighting)

# -- Oh My Zsh -----------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -- Options -------------------------------------------------------------------
unsetopt correct_all
unsetopt correct

# -- Aliases -------------------------------------------------------------------
source $HOME/.dotfiles/.aliases

if [[ -f "$HOME/.aliases" ]]; then
    source $HOME/.aliases
fi

# -- Rbenv ---------------------------------------------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# -- Update --------------------------------------------------------------------
dotfiles