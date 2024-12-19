# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
MANPATH=$(manpath):$HOME/.local/man

# use vim on terminal
set -o vi

# enable ctrl+l to clear screen even in the vim mode
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# shell option for fixing window size and avoid shell line overlaps in tmux
shopt -s checkwinsize

# my local apps path
export PATH=$PATH:$HOME/apps/bin:$HOME/bin

# define the default editor to be vimx
export EDITOR=vimx

# enabling pycolors by default
export PY_COLORS=1

# fzf settings
#export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"
export FZF_DEFAULT_OPTS="--height 2% --reverse -i --color 16 --inline-info"
