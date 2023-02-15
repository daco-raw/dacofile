require 'nvim-tmux-navigation'.setup {
	disable_when_zoomed = true, --default false
	keybindings = {
		left = "<c-h>",
		down = "<c-j>",
		up = "<c-p>",
		--up = "<c-k>",
		right = "<c-l>",
		last_active = '<c-\\>',
		next = '<c-Space>',
	}
}
