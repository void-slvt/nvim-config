return {
  'nvim-treesitter/nvim-treesitter',
  version = false,
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').setup()
  end,
}
