require "config.lsp"
require "config.mappings"

vim.g.mapleader = " "
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.splitbelow = true
vim.opt.clipboard = "unnamedplus"

vim.cmd.colorscheme("sonokai")

vim.diagnostic.config({
    -- Fehler direkt im Text anzeigen (inline / virtual text)
    virtual_text = {
        prefix = "●",       -- Symbol vor der Fehlermeldung
        spacing = 2,
    },
    -- Fehler auch am Rand (Sign Column) anzeigen
    signs = true,
    -- Fehler unterstreichen
    underline = true,
    -- wie schnell die Diagnosen aktualisiert werden
    update_in_insert = true,
    severity_sort = true,
	wrap = true,
})
vim.diagnostic.enable()
vim.lsp.inlay_hint.enable(true)
