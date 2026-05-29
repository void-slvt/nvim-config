return {
  'mason-org/mason.nvim',
  version = false,

  config = function()
    require('mason').setup()
  end,
}
