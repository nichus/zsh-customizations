function theme
{
    PROMPT=""
    RPROMPT=""
    if [ -z "$1" ] || [ "$1" = "random" ]; then
	themes=($ZSH/themes/*zsh-theme)
	N=${#themes[@]}
	((N=(RANDOM%N)+1))
	RANDOM_THEME=${themes[$N]}
	source "$RANDOM_THEME"
	echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
    else
	if [ -f "$ZSH_CUSTOM/$1.zsh-theme" ]
	then
	    source "$ZSH_CUSTOM/$1.zsh-theme"
	else
	    source "$ZSH/themes/$1.zsh-theme"
	fi
    fi
}

function lstheme
{
    for THEME in $(ls $ZSH/themes); do
        THEME_NAME=${THEME%.zsh-theme}
        echo ${THEME_NAME}
    done
}
