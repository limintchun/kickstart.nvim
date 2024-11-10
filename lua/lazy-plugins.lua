require('lazy').setup({
	-- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
	'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
	{'numToStr/Comment.nvim', opts = {}},
	require 'kickstart/plugins/cmp',
	require 'kickstart/plugins/colorscheme',
	require 'kickstart/plugins/which-key',

	-- require 'kickstart/plugins/gitsigns',

	require 'kickstart/plugins/telescope',

	require 'kickstart/plugins/lsp-config',

	require 'kickstart/plugins/conform',

	require 'kickstart/plugins/todo',

	require 'kickstart/plugins/mini',

	require 'kickstart/plugins/treesitter',

	-- Add/Configure additional plugins for Kickstart
	-- TODO: Learn debug
	require 'kickstart.plugins.debug',
	require 'kickstart.plugins.indent_line',
	-- require 'kickstart.plugins.lint',
	require 'kickstart.plugins.autopairs',
	require 'kickstart.plugins.neo-tree',
	-- TODO: Learn gitsigns
	-- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

	-- import below to automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	{ import = 'custom.plugins' },
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = '⌘',
			config = '🛠',
			event = '📅',
			ft = '📂',
			init = '⚙',
			keys = '🗝',
			plugin = '🔌',
			runtime = '💻',
			require = '🌙',
			source = '📄',
			start = '🚀',
			task = '📌',
			lazy = '💤 ',
		},
	},
})
