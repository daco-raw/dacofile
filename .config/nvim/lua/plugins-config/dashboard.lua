local home = os.getenv('HOME')
local db = require('dashboard')

db.custom_header = {
	[[  _____              _      _       _            ]],
	[[ |  __ \            (_)    | |     | |           ]],
	[[ | |  | | __ _ _ __  _  ___| |   __| | _____   __]],
	[[ | |  | |/ _` | '_ \| |/ _ | |  / _` |/ _ \ \ / /]],
	[[ | |__| | (_| | | | | |  __| | | (_| |  __/\ V _ ]],
	[[ |_____/ \__,_|_| |_|_|\___|_|  \__,_|\___| \_(_)]],
	[[                                                 ]],
	[[                                                 ]],
}

-- Generador Ascii:
-- https://patorjk.com/software/taag/#p=display&h=3&v=0&f=Big&t=daniel

db.preview_file_path = home .. '/.config/nvim/'
db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
	{ icon = '  ',
		desc = 'Recently latest session                  ',
		shortcut = 'SPC s l',
		action = 'SessionLoad' },
	{ icon = '  ',
		desc = 'Recently opened files                   ',
		action = 'DashboardFindHistory',
		shortcut = 'SPC f h' },
	{ icon = '  ',
		desc = 'Find  File                              ',
		action = 'Telescope find_files find_command=rg,--hidden,--files',
		shortcut = 'SPC f f' },
	{ icon = '  ',
		desc = 'File Browser                            ',
		action = 'Telescope file_browser',
		shortcut = 'SPC f b' },
	{ icon = '  ',
		desc = 'Find  word                              ',
		action = 'Telescope live_grep',
		shortcut = 'SPC f w' },
	{ icon = '  ',
		desc = 'Open Personal dotfiles                  ',
		action = 'Telescope dotfiles path=' .. home .. '/.config',
		shortcut = 'SPC f d' },
}
