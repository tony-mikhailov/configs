HISTCONTROL=ignoredups:ignorespace

shopt -s histappend

HISTSIZE=100000
#HISTFILESIZE=65535

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

txtred="" # Red bold 
txtpur="" # Purple bold
txtrst=""    # Tet Reset

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#CWD=/Users/tony/Work/monitorr2d2
CWD=/home/tony/Workspace


# some more ls aliases
alias ll='ls -laFh'
alias la='ls -Alh'
alias l='ls -CFh'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias cwd='cd $CWD'
alias rl_='rm *.log'

#code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }
#code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $@; }


export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export PS_USER_COLOR=$'\E[1;32m'
export PS_HOST_COLOR=$'\E[1;33m'
export PS_SYM_COLOR=$'\E[0m'


#export PATH=/opt/local/bin:/opt/local/sbin:/Users/tony/Qt5.7.0_B/5.7/clang_64/bin:$PATH
#export PATH=/opt/local/bin:/opt/local/sbin:/Users/tony/Qt5.5.1/5.5/clang_64/bin:$PATH
#export PATH=/Users/tony/Qt/5.5/clang_64/bin:$PATH
#export PATH=/Users/tony/Workspace/webrtc/depot_tools:$PATH
#export GSTREAMER_BASE_LIBRARY=
#export PATH=/Users/tony/gst:$PATH

. ~/Workspace/clones/configs/bash/bash_completion.sh
. ~/Workspace/clones/configs/bash/git-prompt.sh
. ~/Workspace/clones/configs/bash/git-completion.bash


if [ "$color_prompt" = yes ]; then
  green=$(tput setaf 2)
  blue=$(tput setaf 4)
  cyan=$(tput setaf 6)
  yellow=$(tput setaf 11)
  pink=$(tput setaf 13)
  bold=$(tput bold)
  reset=$(tput sgr0)

  PS1='\[$cyan\]\u\[$reset\]@\[$green\]\h\[$reset\]:\[$yellow\]\w\[$reset\]\[$pink\]$(__git_ps1 " [%s]")\[$reset\]\$ '
  PS1_NO_COLOR='\u@\h:\w$(__git_ps1 " [%s]")\$ '
  
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt

export PATH=/opt/compiler_platform/gcc-linaro-arm-linux-gnueabihf-4.8-2014.04_linux/bin:$PATH

#alias mc=". /usr/local/opt/midnight-commander/libexec/mc/mc-wrapper.sh"

