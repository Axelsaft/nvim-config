local wk = require("which-key")

-- Basic
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- UI
wk.add({
	{'<leader>u', group = "UI"}
})
vim.keymap.set("n", "<leader>ul", ":set number!<CR>", { desc = "Toggle Lines"})
vim.keymap.set("n", "<leader>uL", ":set relativenumber!<CR>", { desc = "Toggle relative numbers"})

-- Explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")

-- Windows
vim.keymap.set("n", "<C-up>", ":res +2<CR>")
vim.keymap.set("n", "<C-down>", ":res -2<CR>")
vim.keymap.set("n", "<C-right>", ":vertical res +3<CR>")
vim.keymap.set("n", "<C-left>", ":vertical res -3<CR>")

-- Buffers
wk.add({
	{"<leader>b", group = "Buffers"}
})
vim.keymap.set("n", "<leader>q", function()
	if vim.bo.buftype == "terminal" then
		vim.cmd("bd!")
	else
		vim.cmd("confirm bd")
	end
end,
{ desc = "Close current buffer"})
vim.keymap.set("n", "<leader>bn", ":tabnew<CR>", { desc = "Creates a new buffer" })
vim.keymap.set("n", "<tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-tab>", ":bprevious<CR>")

-- Gotos
vim.keymap.set("n", "gd", function ()
	vim.lsp.buf.definition()
end, { desc = "Go to definition" })
vim.keymap.set("n", "gD", function ()
	vim.lsp.buf.declaration()
end, { desc = "Go to declaration" })

-- Terminal
vim.keymap.set("n", "<leader>t", ":split<CR>:terminal<CR>i")
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = "Exit terminal mode with jk" })
vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode with escape" })

-- Telescope
wk.add({
	{'<leader>f', group = "Telescope"}
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
--

-- Diagnostics
wk.add({
	'<leader>x', group = "Diagnostics"
})
--
