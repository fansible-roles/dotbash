# Termcap is outdated, old, and crusty, kill it.
#unset TERMCAP
# Man is much better than us at figuring this out
MANPATH=$(manpath):$HOME/.local/man
#unset MANPATH
# use vim on terminal
set -o vi
#fix window size to improve tmux window and bash overlaps line
shopt -s checkwinsize
# my local apps path
export PATH=$PATH:$HOME/apps/bin:$HOME/bin
