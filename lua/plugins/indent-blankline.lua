return {
  'lukas-reineke/indent-blankline.nvim',
  version = '*',

  config = function()
    require('ibl').setup({
      indent = {
        char = '│',
      },
      scope = {
        enabled = false,
      },
    })
  end,
}
