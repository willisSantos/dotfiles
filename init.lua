vim.o.termguicolors = true
vim.opt.number = true
vim.g.mapleader = ","
vim.opt.mouse = ""
vim.opt.mousescroll = "ver:0,hor:0"
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("", "<left>", "<nop>", { noremap = true })
vim.keymap.set("", "<right>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<left>", "<nop>", { noremap = true })
vim.keymap.set("i", "<right>", "<nop>", { noremap = true })

-- Modules
require("config.lazy")
require("config.catppuccin")
require("config.lualine")
require("mapping")
