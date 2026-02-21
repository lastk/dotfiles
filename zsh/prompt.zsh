autoload colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr 'dirty'
zstyle ':vcs_info:git:*' formats '%b%u'
zstyle ':vcs_info:git:*' actionformats '%b (%a)'

# Color branch name: green if clean, red if dirty
zstyle ':vcs_info:git*+set-message:*' hooks git-color-branch
function +vi-git-color-branch() {
  if [[ -n "${hook_com[unstaged]}" ]]; then
    hook_com[branch]="%{$fg_bold[red]%}${hook_com[branch]}%{$reset_color%}"
  else
    hook_com[branch]="%{$fg_bold[green]%}${hook_com[branch]}%{$reset_color%}"
  fi
  hook_com[unstaged]=''
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

battery_status() {
  if [[ "$(uname)" != "Darwin" ]]; then return; fi
  if [[ $(sysctl -n hw.model) == *"Book"* ]]; then
    $ZSH/bin/battery-status
  fi
}

export PROMPT=$'\n$(battery_status)in $(directory_name) ${vcs_info_msg_0_:+on $vcs_info_msg_0_}\n› '

precmd() {
  title "zsh" "%m" "%55<...<%~"
  vcs_info
}
