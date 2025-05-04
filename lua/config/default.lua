require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
-- vim.cmd("set scrollbind")
vim.cmd("set nowrap")
vim.cmd("set scrollopt+=hor")
 -- C-c to copy into the clipboard
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- C-v to paste from the clipboard
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", '"+p', { noremap = true, silent = true })

-- C-/ to comment/decomment
-- vim.api.nvim_set_keymap("n", "<C-/>", "<Plug>CommentaryLine", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<C-/>", "<Plug>Commentary", { noremap = true, silent = true })

