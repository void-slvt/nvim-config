return {
  'akinsho/toggleterm.nvim',
  version = '*',
  event = 'VeryLazy',

  config = function()
    require('toggleterm').setup({
      open_mapping = [[<leader>j]],
      direction = 'float'
    })
  end,
}
