#/ Themes - plugins - settings
# {{{
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
setopt histignorealldups sharehistory
setopt GLOB_DOTS
# }}}

# Alias
# {{{
alias p='ping 8.8.8.8 | grep "64 bytes" '
alias q=exit

# App basics install
alias appinstall="sudo dnf install neovim neofetch zsh gh tmux ranger stow tldr lsd bat rclone firejail docker docker-compose youtube-dl -y"
#chsh -s $(which zsh)"

# Build
alias workspace-start="docs;cd IT/linux_tools;cp ./workspace.zip ~/;cd;unzip ./workspace.zip;rm workspace.zip;ls | grep work"
alias workspace-build="cd ~/workspace;rmmodule;cd $HOME;zip -r workspace.zip workspace;ls | grep workspace*.zip;docs;cd IT;rm workspace.zip;mv ~/workspace.zip . -v;pwd"
alias rmmodule="find . -name node_modules | xargs -I_ rm -rf _"  # rm folder node_modules recursivo

alias v='nvim ./'
alias vim='nvim'
alias t='tmux new -s local'
alias e='ranger ./'

alias temp='watch sensors' #download fedora lm_sensors
alias pm="pnpm"

# Gits
alias g='git init'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log '

# SETINGS
alias vv='nvim $HOME/.config/nvim/'
alias vbspwm='nvim $HOME/.config/bspwm'
alias vz='nvim $HOME/.zshrc'
alias sz='source ~/.zshrc'

alias docs=' cd /run/media/$USER/dataBackup/'

alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcr="docker-compose restart"
alias dcps="docker-compose ps"


# description command
alias tld="tldr"

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

# find . ! -name $f1 ! -name $f2 -type f -delete  -->  para excluir archivo y borrar lo demas

# fzf | NVM
###{{{
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#}}}

# pnpm
export PNPM_HOME="/home/daco/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
