return {
  'saghen/blink.cmp',
  version = '*',
  dependencies = {
    { 'saghen/blink.lib', version = '*' }
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
