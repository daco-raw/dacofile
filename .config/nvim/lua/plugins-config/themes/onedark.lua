require('onedark').setup {
	style = 'darker'
}
require('onedark').load()

require('lualine').setup {
	options = {
		theme = 'onedark'
		-- ... your lualine config
	}
}

-- themes -- dark, darker, cool, deep, warm, warmer.
