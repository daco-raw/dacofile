set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

so ~/.config/nvim/vimrc
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/themes.vim
so ~/.config/nvim/maps.vim
so ~/.config/nvim/automations.vim
