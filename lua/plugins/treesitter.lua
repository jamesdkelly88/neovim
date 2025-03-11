return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {'bash','dockerfile','lua','markdown','powershell','terraform','yaml'},
    auto_install = true,
    highlight = {
      enable = true
    }
  }
}
