return {
  'lukas-reineke/indent-blankline.nvim',
  version = false,

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
