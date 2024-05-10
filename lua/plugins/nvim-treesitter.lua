return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local ts = require('nvim-treesitter.configs')
    ts.setup({
      ensure_installed = {
        "go",
        "lua",
        "typescript",
        "javascript",
        "html",
      },
      highlight ={
        enable = true,
      },
    })
  end,
}
