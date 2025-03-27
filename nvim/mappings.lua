require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", { desc = "Search Text in all Files"})

-- Map <Ctrl+Return> to open a terminal split and run the current Go file
map("n", "<C-CR>", function()
	vim.cmd("w") -- Save the file
	local fileType = vim.bo.filetype

	if fileType == "go" then
		-- Open terminal in a horizontal split and run the current file
		local file = vim.fn.expand("%:p")
		require("nvchad.term").new { pos = "sp", cmd = "go run " .. vim.fn.fnameescape(file)}
	else
		print('Add a new if-else logic in "$HOME/.config/nvim/lua/plugins/mappings.lua to add new execution script for \"',fileType,'\" file type."')
	end
end, { desc = "Run Go program in a split terminal" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
