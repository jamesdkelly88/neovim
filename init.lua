vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

--require('options')
require('lazy-bootstrap')

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" }
}

local opts = {}

require("lazy").setup(plugins,opts)

require('telescope').setup({
  pickers = {
    find_files = {
      hidden = true,
    }
  }
})

local telescope = require("telescope.builtin")
vim.keymap.set('n','<C-p>', telescope.find_files, {})
vim.keymap.set('n','<leader>fg', telescope.live_grep, {})

local treesitter = require("nvim-treesitter.configs")
treesitter.setup({
  ensure_installed = { "dockerfile", "lua", "powershell", "terraform", "yaml" },
  highlight = { enable = true },
  indent = { enable = true },
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
