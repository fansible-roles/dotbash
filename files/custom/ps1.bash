#!/usr/bin/env bash
# This file defines the Prompt Shell 1 aka PS1 format
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

# colors
blank="\[\e[m\]"
red="\[\e[31m\]"
green="\[\e[32m\]"
blue="\[\e[34m\]"
yellow="\[\e[33m\]"
purple="\[\e[35m\]"
cyan="\[\e[36m\]"
white="\[\e[1;37m\]"
light_gray="\[\e[0;37m\]"
dark_gray="\[\e[1;30m\]"
light_red="\[\e[1;31m\]"
light_green="\[\e[1;32m\]"
light_yellow="\[\e[1;33m\]"
light_blue="\[\e[1;34m\]"
light_purple="\[\e[1;35m\]"
light_cyan="\[\e[1;36m\]"

dir="\W"
user="\$"

ps1() {
        PS1="$light_blue"'$(is_toolbox)'"$blank"
        PS1+="$green$user$blank"
        PS1+="$light_purple$dir$blank"
        PS1+="$green"'$(parse_git_branch)'"$blank"
        PS1+="$cyan>$blank"
        export PS1
}
ps1
