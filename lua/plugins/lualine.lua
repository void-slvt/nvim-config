return {
  'nvim-lualine/lualine.nvim',
  version = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    function indent()
      local sw = vim.fn.shiftwidth()

      if vim.bo.expandtab then
        return "spaces: " .. sw
      else
        return "tabs: " .. sw
      end
    end

    require('lualine').setup({
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'vim.fn.expand("%:.")' },
        lualine_x = { 'encoding', 'indent()', 'filetype' },
        lualine_y = { 'hostname' },
        lualine_z = { 'os.date("%H:%M")' }
      },
      options = {
        globalstatus = true
      }
    })
  end,
}
