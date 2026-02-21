# sup yarn
# https://yarnpkg.com

if (( $+commands[yarn] )); then
  export PATH="$PATH:$HOME/.yarn/bin"
fi
