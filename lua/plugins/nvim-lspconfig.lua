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
      on_init = function(client)
        local path = client.workspace_folders[1].name
        if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
          return
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
              -- Depending on the usage, you might want to add additional paths here.
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        })
      end,
      settings = {
        Lua = {}
      }
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
    lspconfig.pylsp.setup({
      capabilities = capabilities,
    })
  end,
}
