vim.g.mapleader = " "

local keymap = vim.keymap

--general keymap
keymap.set("i", "jk", "<ESC>") --switch to normal mode
keymap.set("n", "<leader>cs", ":nohl<CR>") --clear search highlights
keymap.set("n", "x", '"_x') --delete a character without copying to clipboard

-- Plugin Keymaps

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


