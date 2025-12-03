return {
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
	dependencies = "williamboman/mason.nvim",
    opts = {
      auto_install = true,
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "intelephense",
        "ast_grep",
        "ts_ls",
        "clangd",
		"jdtls",
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local navic = require("nvim-navic")  -- require navic

      local on_attach = function(client, bufnr)
        -- Map keys for LSP features
        vim.keymap.set("n", "<C-k>h", vim.lsp.buf.hover, { buffer = bufnr })
        vim.keymap.set("n", "<C-k>gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "<C-k>gr", vim.lsp.buf.references, { buffer = bufnr })
        vim.keymap.set({ "n", "v" }, "<C-k>ca", vim.lsp.buf.code_action, { buffer = bufnr })

        -- Attach nvim-navic if supported
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, bufnr)
        end
      end

	  local lsp_cfg = vim.lsp.config

      local servers = {
        "lua_ls",
        "lua_ls",
        "rust_analyzer",
        "intelephense",
        "ast_grep",
        "ts_ls",
        "clangd",
		"jdtls",
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
          on_attach = on_attach,
        })
        vim.lsp.enable(server)
      end

    end,
  },
}
