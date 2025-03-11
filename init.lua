vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = false

require('options')
require('lazy-bootstrap')
require('lazy-plugins')

vim.cmd.colorscheme "catppuccin"
