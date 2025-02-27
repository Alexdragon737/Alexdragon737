export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF='%f'
COLOR_DIR='%F{82}'
COLOR_GIT='%F{39}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR} %d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '