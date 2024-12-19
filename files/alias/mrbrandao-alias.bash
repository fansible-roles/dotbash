# mrbrandao.dotbash aliases
alias l="ls --color -l"
alias la="ls -a"
alias ls="ls --color"
alias ll="ls --color -la"
alias cp="cp -v"
alias rm="rm -i"
alias mv="mv -v"
alias vi="vim"
alias nv="nvim"
alias emacs="emacs-nox"
alias xc="xclip -selection clipboard"
alias xp="xclip -o"
alias diff="diff --color"

# git
alias grv="git remote -v"
alias gcl="git config -l"
alias gone="git log --oneline"
alias goner="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# toolbox
alias tl="toolbox list"
alias trm="toolbox rm -f"

# podman
alias docker=podman

# k8s
alias k="kubectl"

# ansible
alias moa="source ~/apps/mol/bin/activate"
alias newmoa="source ~/apps/newmol/bin/activate"
alias play="ansible-playbook"
alias nrun="ansible-navigator run"
