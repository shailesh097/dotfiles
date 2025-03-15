require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", { desc = "Search Text in all Files"})


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
