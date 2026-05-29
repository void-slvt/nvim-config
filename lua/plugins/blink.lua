return {
  'saghen/blink.cmp',
  dependencies = {
    'saghen/blink.lib',
  },
  event = 'VeryLazy',

  build = function()
    require('blink.cmp').build():wait(60000)
  end,

  config = function()
    require('blink.cmp').setup({
      keymap = {
        preset = 'super-tab'
      }
    })
  end,
}
