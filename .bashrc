[[ $- != *i* ]] && return

alias ls='exa --color=always --icons=always'
alias grep='grep --color=auto'
alias s='sudo'
alias v='nvim'
alias sv='sudo nvim'
alias sp='sudo pacman'
alias phone='. ~/scripts/phone_mount'
alias hell='. ~/scripts/hell'
alias ytx='yt-x'
alias y='yazi'
alias ssh-p='ssh -p 8022 u0_a658@192.168.254.109'
alias ssh-pf='sftp -P 8022 u0_a658@192.168.254.109'
alias air='(audiorelay -minimized & > /dev/null) && exit'
alias color='grim -g "$(slurp -p)" -t ppm - | magick - -format '%[pixel:p{0,0}]' txt:-'
alias cdd='cd $(find . -type d | fzf)'

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " %s")'
PS1='\[\e[1m\]\w\[\e[0m\]  \[\e[1m\]󰟟 \[\e[0m\] \[\e[1;5m\]${PS1_CMD1}\n🝾\[\e[0m\]  '

source $HOME/scripts/git-prompt.sh
source $XDG_CONFIG_HOME/zoxide/zoxide.sh

if [ -d ~/.bash_completion.d ]; then
    for file in ~/.bash_completion.d/*; do
        . $file
    done
fi

eval "$(zoxide init bash)"
