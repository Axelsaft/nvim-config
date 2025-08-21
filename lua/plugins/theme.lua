return {
    "scottmckendry/cyberdream.nvim",
    dependencies = {
      "rebelot/kanagawa.nvim",
      "catppuccin/nvim",
      "Mofiqul/vscode.nvim",
      "iagorrr/noctishc.nvim",
      "sainnhe/gruvbox-material",
      "rose-pine/neovim",
    },
    lazy = false,
    priority = 1000,
    config = function()
       vim.cmd("colorscheme vscode")
   end
}
