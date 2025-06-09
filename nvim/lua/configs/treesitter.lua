local options = {
	ensure_installed = {
		"go",
		"lua",
		"bash",
		"gomod",
		"gosum",
		"gowork",
		"shfmt",
		"html",
		"css",
		"python",
		"csv",
	},

	highlight = {
		enable = true,
		use_languagetree = true,
	},

	indent = { enabled = true }
}

require("nvim-treesitter.configs")
