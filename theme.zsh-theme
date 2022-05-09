setopt nopromptbang prompt{cr,percent,sp,subst}

if (( ${+functions[git-info]} )); then
	zstyle ':zim:git-info:branch' format '%b'
	zstyle ':zim:git-info:dirty' format '*'
	zstyle ':zim:git-info:keys' format 'prompt' '%b%D '
	autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info
fi
PS1='%B%F{white}%n@%m %B%F{cyan}%~ %B%F{white}${(e)git_info[prompt]}%f%b'
unset RPS1
