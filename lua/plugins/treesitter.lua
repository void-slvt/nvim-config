return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  lazy = false,
  version = false,

  config = function()
    require('nvim-treesitter').setup()
  end,
}
