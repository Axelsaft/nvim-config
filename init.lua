vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Telescope goto definitions' })
vim.keymap.set('i', 'jk', '<esc>', { desc = 'Simulate Escape Key'})
--

-- general
vim.keymap.set('n','<esc><esc>', function() vim.cmd('nohl') end)
--
