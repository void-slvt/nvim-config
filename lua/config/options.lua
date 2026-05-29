-- Общее
vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.laststatus = 3
vim.opt.undofile = true
vim.opt.mouse = 'a'
vim.opt.updatetime = 300
vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "",
      [vim.diagnostic.severity.HINT]  = "",
    }
  },
  underline = true,
  severity_sort = true,
})

-- Табы
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

-- Поиск
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.wrap = false
vim.opt.winborder = 'rounded'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.cmd.colorscheme('tokyonight-moon')

-- Подсветка скопированного текста
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 150,
    })
  end,
})

-- Документация при наведении курсора
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.lsp.buf.hover()
  end,
})

-- Бинды
vim.keymap.set('n', '<leader>e', function() require('mini.files').open() end, { desc = "Open mini.files" })
vim.keymap.set('n', '<leader>d', function() require('trouble').toggle({mode='diagnostics'}) end, { desc = "Open diagnostics" })
