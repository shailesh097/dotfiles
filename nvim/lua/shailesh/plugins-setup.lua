local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https:/github.com/wbthomason/packer.nvim", install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerInstall
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
    -- packer
	use("wbthomason/packer.nvim")

    -- colorscheme (nighfox)
	use("EdenEast/nightfox.nvim")

    -- comment with 
    use("numToStr/Comment.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-tree/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	
	-- fuzzyfinding
	use({"nvim-telescope/telescope-fzf-native.nvim", run="make"})	
	use({"nvim-telescope/telescope.nvim", branch="0.1.x"})
    
	-- hex color highlighter
    use("norcalli/nvim-colorizer.lua")
	
	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

    -- managing and installing lsp servers, linters and formatters with mason
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    -- configuring the lsp servers
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        requires = {
          { "nvim-tree/nvim-web-devicons" },
          { "nvim-treesitter/nvim-treesitter" },
        },
    }) -- enhanced lsp utils
    use("onsails/lspkind.nvim")

    -- formatting and linting
    use("jose-elias-alvarez/null-ls.nvim")
    use("jayp0521/mason-null-ls.nvim")
    
    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })
    
    -- auto closing brackets
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

	if packer_bootstrap then
		requre("packer").sync()
	end
end)
