# Themes - plugins - settings
# {{{
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
    git
    fast-syntax-highlighting
#    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
setopt histignorealldups sharehistory
setopt GLOB_DOTS
# }}}

### ALIASES ###
# {{{
alias p='ping 8.8.8.8 | grep "64 bytes" '
alias q=exit
alias tools='cd && cd tools'

alias v='nvim ./'
alias vim='nvim'
alias t='tmux new -s local'
alias e='ranger ./'

alias temp='watch sensors' #download fedora lm_sensors

# Gits
alias g='git init'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log '

# SETINGS
alias vv='nvim $HOME/.config/nvim/'
alias vbsp='nvim $HOME/.config/bspwm'
alias vz='nvim $HOME/.zshrc'
alias sz='source ~/.zshrc'

alias docs=' cd /run/media/$USER/dataBackup/'
alias js='$HOME/Documentos/runjs-2.2.2/runjs&! q'

alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcr="docker-compose restart"
alias dcps="docker-comppose ps"

alias dolar='node ~/workspace/projects/webScraping/dolar_today/src/index.js'

# ls cat
alias cat='/bin/bat'
alias catn='/bin/cat'
alias catnl='/bin/bat --paging=never'
alias ls='lsd --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias ll='lsd -lh --group-dirs=first'
alias l='lsd -lha --group-dirs=first'
alias l1='ls -1'

alias yd='youtube-dl '
alias yda='youtube-dl --extract-audio'

alias wget='wget -c '
# }}}

# EditorConfig
# {{{
alias .editor='
editor () {
 echo "
root = true

[*]
charset = utf-8
indent_size = 4
indent_style = space
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true

[docker-compose{,.*}.{yaml,yml}]
indent_style = space
indent_size = 2

[Dockerfile]
indent_style = tab
indent_size = 4

[*.{js,ts,jsx,tsx}]
indent_style = space
indent_size = 2

[package.json]
indent_style = space
indent_size = 2

[*.md]
trim_trailing_whitespace = false " > .editorconfig
}
editor &&  cat .editorconfig
'
# }}}

# File decompressor
# {{{
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
# }}}


# fzf | NVM
# {{{

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#}}}
#
source ~/.profile
