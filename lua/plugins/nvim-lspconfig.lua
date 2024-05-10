return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.gopls.setup{}
      lspconfig.tailwindcss.setup{}
      lspconfig.lua_ls.setup{}
      lspconfig.tsserver.setup{}
    end,
  },
}
