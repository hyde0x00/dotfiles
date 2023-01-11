# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

unalias egrep fgrep grep ls l. ll xzegrep xzfgrep xzgrep zegrep zfgrep zgrep &>/dev/null

#export PS1='\[\e[1;37m\]\$\[\e[0m\] '
#export PS1='[\u@\h \W]\$ '
#export PS1='\u@\h:\w\$ '
#export PS1='\[\033[01;37m\][\u@\h \W]\$\[\033[00m\] '
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

unset HISTFILE
export HISTCONTROL="ignoredups:erasedups"

set -o vi

export BACKUP_DIR="$HOME/.backup"
export NOTES_DIR="$HOME/.notes"

export GOPATH="$HOME/.go"
export PATH=$PATH:$GOPATH/bin

export PROMPT_COMMAND='printf "\033]0;%s\007" "$(pwd)"'

shopt -s checkwinsize

bind "set show-all-if-ambiguous on"
bind "set page-completions off"
bind "set match-hidden-files off"
bind "set completion-query-items 0"
bind "set enable-bracketed-paste off"

alias vi=vimx
export EDITOR=vimx
export VISUAL=$EDITOR
alias cal='cal -m'
alias df='df -hT'
alias du='du -h'
alias ls='ls -hFG'
alias tree='tree -nF'

export FZF_DEFAULT_OPTS='--no-bold --no-color --no-mouse --no-separator --pointer=" " --layout=reverse'
export FZF_DEFAULT_OPTS+=' --bind=ctrl-j:accept,ctrl-k:kill-line'
export FZF_DEFAULT_OPTS+=' --bind=alt-d:page-down,alt-u:page-up,alt-g:first,alt-G:last'
export FZF_DEFAULT_OPTS+=' --bind=ctrl-v:page-down,alt-v:page-up,alt-\<:first,alt-\>:last'
export FZF_DEFAULT_OPTS+=' --bind=alt-i:toggle-preview'
export FZF_DEFAULT_OPTS+=' --bind=alt-n:preview-down,alt-p:preview-up'
export FZF_DEFAULT_OPTS+=' --bind=alt-j:preview-half-page-down,alt-k:preview-half-page-up'
export FZF_DEFAULT_OPTS+=' --bind=alt-l:preview-bottom,alt-h:preview-top'

export LESS='-R -M -i'
export LESS_TERMCAP_md="$(printf '\33[m')" # no bold
export LESS_TERMCAP_us="$(printf '\33[m')" # no underline
export GROFF_NO_SGR=0 MANWIDTH=80

printf '# command
, prev-file
. next-file
' > "$HOME/.lesskey" && lesskey &>/dev/null

#alias pacman='pacman --color=auto'
#alias yay='yay --color=auto'
#alias diff='diff --color=auto'
#alias dir='dir --color=auto'
#alias dmesg='dmesg --color=auto'
#alias grep='grep --color=auto'
#alias ls='ls -h -G --color=auto'
#alias tree='tree -C -n'
#alias vdir='vdir --color=auto'

export AV_LOG_FORCE_NOCOLOR=1
export LS_COLORS=':st=:tw=:ow='
export TREE_COLORS=''

#export GCC_COLORS='error=31:warning=35:note=36:range1=32:range2=34:locus=:quote=:path=36:fixit-insert=32:fixit-delete=31:diff-filename=:diff-hunk=32:diff-delete=31:diff-insert=32:type-diff=32' # gcc colors no bold
export GCC_COLORS=''

#export GREP_COLORS='ms=4:mc=:sl=:cx=:fn=:ln=:bn=:se=' # grep underline matches

killjobs() {
        jobs -p | xargs kill 2>/dev/null
	while disown; do disown; done &>/dev/null
}
