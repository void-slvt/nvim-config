return {
  'nvim-mini/mini.files',
  version = '*',

  config = function()
    require('mini.files').setup({
      mappings = {
        close       = 'q',
        go_in       = 'l',
        go_in_plus  = '',
        go_out      = 'h',
        go_out_plus = '',
        mark_goto   = '',
        mark_set    = '',
        reset       = '<BS>',
        reveal_cwd  = '',
        show_help   = '',
        synchronize = '=',
        trim_left   = '',
        trim_right  = '',
      }
    })
  end,
}
