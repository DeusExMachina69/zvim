vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	    requires = {
		{'nvim-lua/plenary.nvim'}
	    }
	}

	-- Colorscheme
	use { "ellisonleao/gruvbox.nvim" }
    -- use { "loctvl842/monokai-pro.nvim"}
    ---use { "folke/tokyonight.nvim"}

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- Harpoon
	use "thePrimeagen/harpoon"

	-- UndoTree
	use "mbbill/undotree"

	-- Lsp-Zero
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})

	-- Ultimate Autopair
	use{
		'altermo/ultimate-autopair.nvim',
		event={'InsertEnter','CmdlineEnter'},
		branch='v0.6', --recommended as each new version will have breaking changes
		config= function() 
			require("ultimate-autopair").setup({})
		end
	}

    -- Lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
        opt = true
    }
})


end)
