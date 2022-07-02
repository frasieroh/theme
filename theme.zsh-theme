# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
setopt nopromptbang prompt{cr,percent,sp,subst}

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git p4
zstyle ':vcs_info:git*' formats "%b " 
setopt prompt_subst
precmd() { vcs_info }

PS1='%B%F{white}%n@%m %B%F{cyan}%~ %B%F{white}${vcs_info_msg_0_}%f%b'
unset RPS1
