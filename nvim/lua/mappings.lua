require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", { desc = "Search Text in all Files" })
map("n", "<leader>gr", ":GoRun<CR>", opts) -- Run Go file
map("n", "<leader>gb", ":GoBuild<CR>", opts) -- Build Go file
map("n", "<leader>gt", ":GoTest<CR>", opts) -- Run Go tests

-- map("n", "<C-S>", ":!~/go/bin/gofumpt -w %<CR>", { noremap = true, silent = true })

-- -- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
