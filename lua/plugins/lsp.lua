return {
  {
   "neovim/nvim-lspconfig",
   config = function()
      vim.lsp.enable('clangd')
      vim.lsp.enable('rust_analyzer')
      vim.diagnostic.config({
         virtual_text = true,
         signs = true,
         update_in_insert = false,
         underline = true,
         severity_sort = false,
         float = true,
      })
    end,
  }
}
