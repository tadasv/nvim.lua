return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local lspconfig = require('lspconfig')
    local cmpStatus, cmp = pcall(require, 'cmp_nvim_lsp')

    -- Set up lspconfig.
    local capabilities = {}
    if cmpStatus then
      capabilities = cmp.default_capabilities()
    end

    lspconfig.gopls.setup({
      capabilities = capabilities,
    })
    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
    })
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
    })
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })
    lspconfig.templ.setup({
      capabilities = capabilities,
    })
    lspconfig.eslint.setup({
      capabilities = capabilities,
    })
  end,
}
