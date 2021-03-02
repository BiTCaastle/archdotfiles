# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
# Load Colors
autoload -U colors && colors
autoload -U promptinit; promptinit
prompt spaceship
# Load tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# History cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

plugins=(
	archlinux
	git
	coloured-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# Load Aliases 
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
