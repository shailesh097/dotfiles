local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_colorscheme = require("lualine.themes.dracula")
lualine_colorscheme.command = {
	a = {
		gui = "bold"
	},
}


lualine.setup({
	options = {
		theme = lualine_colorscheme
	}
})