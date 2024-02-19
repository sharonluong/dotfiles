alias tinker='php artisan tinker'
alias phpunit='./vendor/bin/phpunit'

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

eval "$(rbenv init -)"
export PATH="/usr/local/opt/ruby@2.6.6/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$(brew --prefix)/bin:$PATH"
export USER=snluong

alias setjava8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/"
alias setjava11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"
alias setjava16="/usr/local/Cellar/openjdk/16.0.1/libexec/openjdk.jdk/Contents/Home"

setjava11
