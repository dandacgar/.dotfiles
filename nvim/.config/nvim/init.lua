-- Load Lazy
require("config.lazy")

-- Load Catppuccin (Colors)
require("catppuccin").setup({
	transparent_background = true,
})

vim.cmd.colorscheme "catppuccin-mocha"

-- Vim Commands and Such
vim.wo.number = true
vim.wo.relativenumber = true
