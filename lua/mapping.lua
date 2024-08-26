local map = vim.keymap.set

map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR", { desc = "nvimtree focus window" })
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })
map("n", "<leader>wk", function ()
	vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })
