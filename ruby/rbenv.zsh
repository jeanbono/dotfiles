# init according to man page
if (( $+commands[rbenv] ))
then
  export RBENV_ROOT=/usr/local/var/rbenv
  eval "$(rbenv init -)"
fi
