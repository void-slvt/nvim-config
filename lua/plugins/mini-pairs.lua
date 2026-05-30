return {
  'nvim-mini/mini.pairs',
  version = '*',

  event = 'VeryLazy',

  config = function()
    require('mini.pairs').setup()
  end,
}
