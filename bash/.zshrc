alias tinker='php artisan tinker'
alias phpunit='./vendor/bin/phpunit'

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
COLOR_DIR=$'%F{63}'
COLOR_GIT=$'%F{200}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

eval "$(rbenv init -)"
export PATH="/usr/local/opt/ruby@2.6.6/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$(brew --prefix)/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
export USER=snluong

alias setjava8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/"
alias setjava11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
alias setjava16="/usr/local/Cellar/openjdk/16.0.1/libexec/openjdk.jdk/Contents/Home"

setjava11
