return {
  "folke/which-key.nvim",
  version = false,
  event = 'VeryLazy',

  config = function()
    require('which-key').setup({
      preset = 'helix'
    })
  end,
}
