return {
  'mason-org/mason.nvim',
  version = '*',

  config = function()
    require('mason').setup()
  end,
}
