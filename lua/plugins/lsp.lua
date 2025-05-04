return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "intelephense",
        "ast_grep",
        "ts_ls",
        "clangd",
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lsconfig = require("lspconfig")
      lsconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lsconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lsconfig.clangd.setup({
        capabilities = capabilities,
      })
      lsconfig.ast_grep.setup({
        capabilities = capabilities,
      })
      lsconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
      lsconfig.intelephense.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "<C-k>h", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<C-k>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<C-k>gr", vim.lsp.buf.references, {})
      vim.keymap.set({ "n", "v" }, "<C-k>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
