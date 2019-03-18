# Git stuff
# Enable tab completion
source ~/.git-completion.bash
# Change command prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="\[$(tput bold)\]\[\033[38;5;48m\]\u:\[$(tput sgr0)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput bold)\]\[\033[38;5;220m\]\$(__git_ps1) \\[$(tput sgr0)\]\$ "
