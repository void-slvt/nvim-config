return {
  'folke/trouble.nvim',
  version = false,
  event = 'VeryLazy',

  config = function()
    require('trouble').setup()
  end,
}
