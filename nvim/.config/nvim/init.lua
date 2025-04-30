local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('https://github.com/nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('https://github.com/jpalardy/vim-slime')
vim.call('plug#end')

vim.cmd[[
let g:slime_target = "tmux"
]]

require("catppuccin").setup({
	transparent_background = true,
})

require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})

vim.cmd.colorscheme "catppuccin-mocha"


vim.g.airline_powerline_fonts=1
-- Vim Commands and Such
vim.wo.number = true
vim.wo.relativenumber = true
