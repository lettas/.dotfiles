GIT_COMPLETION_FILE=/etc/bash_completion.d/git-prompt
GIT_PROMPT_FILE=/etc/bash_completion.d/git-prompt
if [ `uname` = 'Darwin' ]; then
  GIT_COMPLETION_FILE=/usr/local/etc/bash_completion.d/git-completion.bash
  GIT_PROMPT_FILE=/usr/local/etc/bash_completion.d/git-prompt.sh
fi
if [ -f $GIT_COMPLETION_FILE -a -f $GIT_PROMPT_FILE ]; then
  source $GIT_COMPLETION_FILE
  source $GIT_PROMPT_FILE
  export GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='[\t]\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
else
  export PS1='[\t]\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '
fi
export MYSQL_PS1='\u@\h [\d]> '
export EDITOR=vim
export PATH="$HOME/.npm-global/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
