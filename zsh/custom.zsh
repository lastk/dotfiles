export EDITOR=vim

# fasd - cached init (only regenerates if fasd binary is updated)
fasd_cache="${XDG_CACHE_HOME:-$HOME/.cache}/fasd-init-zsh"
if [[ ! -f "$fasd_cache" || "$(command -v fasd)" -nt "$fasd_cache" ]]; then
  fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
