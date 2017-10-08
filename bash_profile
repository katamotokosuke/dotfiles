#rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# .bashrc reading
if [ -f ~/.bashrc ] ; then . ~/.bashrc; fi