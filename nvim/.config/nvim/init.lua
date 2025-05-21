local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('jpalardy/vim-slime')
Plug('Mofiqul/vscode.nvim', { ['as'] = 'vscode' })
vim.call('plug#end')

vim.cmd[[
let g:slime_target = "tmux"
xmap <c-c><CR> <Plug>SlimeRegionSend
]]

-- require("catppuccin").setup({
	transparent_background = true,
--})
require('vscode').setup({
	transparent = true,
})

require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'vscode',
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
    lualine_c = {{'filename', path = 4,}},
    lualine_x = {},
    lualine_y = {'encoding', 'filetype'},
    lualine_z = {'progress','location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{'filename', path = 4,}},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})

vim.cmd.colorscheme "vscode"

-- Vim Commands and Such
vim.wo.number = true
vim.wo.relativenumber = true
