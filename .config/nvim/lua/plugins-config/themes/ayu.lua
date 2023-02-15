vim.cmd [[colorscheme ayu]]

require('ayu').setup({
	dark = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

-- luaLine status bar
require('lualine').setup({
	options = {
		theme = 'ayu',
	},
})
