pcall(require, "impatient")
if require 'daco.first_load' () then
    return
end

-------- General config -------------{{{
require 'packer/plugins'
require 'settings.settings'
require 'settings.keymaps'
require 'settings.automations'-- }}}

-------------- Themes --------------{{{
require 'plugins-config.themes.onedark'
--require 'plugins-config.themes.ayu'
--require 'plugins-config.themes.tokyonight'}}}

-------------- Plugins --------------{{{
require 'plugins-config.lsp'
require 'plugins-config.identline'
require 'plugins-config.tmux-navigation'
require 'plugins-config.format-config'
require 'plugins-config.colorizer'
require 'plugins-config.term'
require 'plugins-config.bufferline'
require 'plugins-config.dashboard'
require 'plugins-config.telescope'
require 'plugins-config.git'
require 'plugins-config.rest'
require 'plugins-config.treesitter'
require 'plugins-config.flutter'
require 'plugins-config.trouble'-- }}}
