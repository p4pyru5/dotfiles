
# angepasstes Theme von hier
# http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/


function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '± ' && return
    test -d .svn >/dev/null 2>/dev/null && echo '⛁ ' && return
    hg root >/dev/null 2>/dev/null && echo '☿ ' && return
    #echo '~ '
    #echo '⊶  '
    #echo '⇨ '
    #echo '⚎ '
    #echo '⚞ '
    echo '❯ '
}


function battery_charge {
    echo `$BAT_CHARGE` 2>/dev/null
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function hg_prompt_info {
    hg prompt --angle-brackets "\
	< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
	< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
	%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
	patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}



function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}




PROMPT='%{$fg_bold[red]%}❖ %n%{$reset_color%} at %{$fg_bold[cyan]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}%~%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)$(svn_prompt_info)
$(virtualenv_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg_bold[blue]%}$(prompt_char)%{$reset_color%}'


local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'


# ----------------------------------------------------------------------------
# git prompt variables
# ----------------------------------------------------------------------------
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}⎇ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[yellow]%}●"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_no_bold[yellow]%}[untracked]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}●"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"




