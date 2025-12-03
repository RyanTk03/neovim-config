return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 20,
      open_mapping = [[<c-ù>]], -- Ctrl+ù pour toggle terminal
      shading_factor = 2,
      direction = "float", -- float, vertical, horizontal
      float_opts = {
        border = "curved",
      }
    }
    -- Horizontal avec Ctrl + shift + ù
    vim.keymap.set("n", "<C-S-ù>", function()
      require("toggleterm.terminal").Terminal:new({ direction = "horizontal" }):toggle()
    end, { noremap = true, silent = true })

    -- Vertical avec Ctrl + alt + ù
    vim.keymap.set("n", "<C-M-ù>", function()
      require("toggleterm.terminal").Terminal:new({ direction = "vertical" }):toggle()
    end, { noremap = true, silent = true })
  end
}
