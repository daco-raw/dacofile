return require('packer').startup(function(use)

	-- Basic
	use 'lewis6991/impatient.nvim'
	use 'wbthomason/packer.nvim'

	-- Themes / colors
	use 'Shatur/neovim-ayu'
	use 'folke/tokyonight.nvim'
	use 'navarasu/onedark.nvim'
	-- StatusLine
	use 'nvim-lualine/lualine.nvim'

	use { 'glepnir/dashboard-nvim' }

	-- File Manager / search / ident / others
	-- File Manager{{{
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	use {
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	}

	use 'alexghergh/nvim-tmux-navigation'

	use 'easymotion/vim-easymotion'

	-- Search
	use { 'nvim-telescope/telescope.nvim' }
	use { 'nvim-telescope/telescope-file-browser.nvim' }

	-- guias ident
	use 'lukas-reineke/indent-blankline.nvim'
	--use 'yggdroot/indentline'


	use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end } --}}}

	-- IDE NVim --
	-- LSP - autoComplete - git - commenter - rest client {{{

	-- dependencia
	use 'nvim-lua/plenary.nvim'

	-- Rest Client
	use {
		"NTBBloodbath/rest.nvim",
	}
	use {
		"folke/todo-comments.nvim",
		config = function() require("todo-comments").setup() end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- Soporte LSP
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/nvim-lsp-installer' },
			-- Autocompletado
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}
	use "jose-elias-alvarez/null-ls.nvim"
	use 'folke/lsp-colors.nvim'
	-- debug
	use "folke/trouble.nvim"

	-- Tabs
	use { 'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons'
	}


	-- Gits
	use 'dinhhuy258/git.nvim'

	-- box Commeter
	use {
		'scrooloose/nerdcommenter',
		run = function() require("nerdcommenter").setup() end
	}

	-- mejorar la sytax
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		requires = {
			'nvim-treesitter/playground',
			'nvim-treesitter/nvim-treesitter-refactor',
			'nvim-treesitter/nvim-treesitter-textobjects',
		}
	}

	-- prettier and format code
	use 'lukas-reineke/lsp-format.nvim'
	use 'editorconfig/editorconfig-vim'

	-- colors css and more
	use 'norcalli/nvim-colorizer.lua'

	-- Harpoon
	use 'ThePrimeagen/harpoon'

	-- Term
	use { "akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
		require("toggleterm").setup()
	end }

	-- Flutter
	use 'akinsho/flutter-tools.nvim'

	--}}}

	--MarkDown
	-- install without yarn or npm{{{
	--use({
	--	"iamcco/markdown-preview.nvim",
	--	run = function() vim.fn["mkdp#util#install"]() end,
	--})

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, }) --}}}

end)
