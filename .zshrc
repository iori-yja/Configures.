# Created by newuser for 4.3.10
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
bindkey -v
setopt auto_cd
setopt auto_pushd
setopt list_packed

case ${UID} in
0)
    PROMPT="%B%{[31m%}%/#%{[m%}%b "
    RPROMPT="%{[31m%}%T"
    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
   ;;
*)
    PROMPT="%/%{[31m%}%%%{[m%} "
    RPROMPT="%{[34m%}%T%{[m%}"
    PROMPT2="%{[31m%}%_%%%{[m%} "
    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
esac

setopt correct
autoload -U compinit
compinit


