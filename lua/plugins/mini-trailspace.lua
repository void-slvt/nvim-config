return {
  'nvim-mini/mini.trailspace',
  version = '*',

  event = 'VeryLazy',

  config = function()
    require('mini.trailspace').setup()
  end,
}
