return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorer",
            highlight = "Directory",
            text_align = "left"
          }
        }
      }
    }

    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = "Next buffer" })
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = "Previous buffer" })

    vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = "New tab (project)" })
    vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', { desc = "Next tab" })
    vim.keymap.set('n', '<leader>th', ':tabprevious<CR>', { desc = "Previous tab" })
  end
}

