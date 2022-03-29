export ZSH=$HOME/.oh-my-zsh
plugins=zsh-syntax-highlighting
plugins=(git)
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data
#set a fancy prompt (non-color, unless we know we "want" color)
# Update
alias rb="source ~/.zshrc ~/config/nvim ~/.motd_shown ~/tmux.conf"
# Fat keys
alias q="exit"
alias cl="clear"
# Force zsh to show the complete history
alias history="history 0"
alias hsi="history | grep"
# Access
alias tmux="tmux -2"
alias ytds="youtube-dl -x --audio-format mp3 "
alias ytdlist="youtube-dl -x --audio-format mp3 -a "
alias ytdv="youtube-dl -f 134 "
alias dtok="cd /mnt/g/Mi\ unidad/tiktok\ cyber | youtube-dl -f 134 "
#youtube-dl --extract-audio --audio-format mp3 --output "%(uploader)s%(title)s.%(ext)s" http://URL-.COM
#youtube-dl -f best -a list.txt
export PATH=$PATH:/usr/local/go/bin
alias ls='ls -lh --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias gcm='git commit -m "$1"'


