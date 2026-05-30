return {
  'nvim-treesitter/nvim-treesitter',
  version = '*',
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').setup()
  end,
}
