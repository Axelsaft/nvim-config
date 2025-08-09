vim.opt.number = true

vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
--

-- general
vim.keymap.set('n','<esc><esc>', function() vim.cmd('nohl') end)
--
