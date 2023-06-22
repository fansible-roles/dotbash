#!/usr/bin/env bash
# --- WARNING ---
# This file starts with 00 to be sorted by first,
# while sourcing the files from the custom directory.
# If not loaded by first the PS1 variable may not take 
# precedence which may cause to not be displayed.
# ---------------
#
# The Default PS1 from `/etc/bashrc`:
# ------------------------------------
# [\u@\h \W]\$
#
# Tips:
# ------
# * [Prompt generator helper](https://robotmoon.com/bash-prompt-generator)
# * [Bash prompt generator](https://bash-prompt-generator.org)
# * [PS1 Generator 2.0](https://kirsle.net/wizards/ps1.html)
#
# The mrbrandao.dotbash ps1 prompt depends on git-functions.bash
export PS1="\[\e[32m\]\\$\[\e[m\]\[\e[1;35m\]\W\[\e[m\]\[\e[32m\]\`parse_git_branch\`\[\e[m\]\[\e[36m\]>\[\e[m\] "
