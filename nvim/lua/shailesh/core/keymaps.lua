vim.g.mapleader = " "

local keymap = vim.keymap

--general keymap
keymap.set("i", "jk", "<ESC>") --switch to normal mode
keymap.set("n", "<leader>cs", ":nohl<CR>") --clear search highlights
keymap.set("n", "x", '"_x') --delete a character without copying to clipboard

-- Plugin Keymaps

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
