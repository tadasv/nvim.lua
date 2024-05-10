return {
  { "williamboman/mason.nvim", config = true },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "gopls", "tailwindcss", "lua_ls", "tsserver" },
    },
  },
}
