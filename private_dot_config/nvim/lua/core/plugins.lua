local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
		end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-treesitter/nvim-treesitter'
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'
	use {
		'windwp/nvim-autopairs',
		event = 'InsertEnter',
		config = function ()
			require('nvim-autopairs').setup	{}
		end
	}
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}
	use 'christoomey/vim-tmux-navigator'
	use {'oneslash/helix-nvim', tag = "*"}
	use 'echasnovski/mini.hues'
	use 'antonio-hickey/minty-melon'
	use 'kar9222/minimalist.nvim'
	use 'ThePrimeagen/vim-be-good'
	use {'cosecseccot/midnight-desert.nvim', requires = "rktjmp/lush.nvim" }
	use 'posva/vim-vue'
	-- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
