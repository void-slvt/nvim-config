return {
  'folke/noice.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
    },

    config = function()
      require('noice').setup({
        presets = {
          command_palette = true,
          lsp_doc_border = true
        },
        routes = {
          {
            view = 'notify',
            filter = {
              event = 'msg_show',
              kind = {
                'shell_out',
                'shell_err',
              }
            },
          },
        },
        lsp = {
          progress = {
            enabled = false,
          },
          hover = {
            silent = true
          }
        }
      })
    end,
}
