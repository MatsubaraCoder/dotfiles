vim.g.mapleader = " "

vim.g.maplocalleader = "\\"

require("config.lazy")

vim.cmd("colorscheme carbonfox")

vim.opt.termguicolors = true

vim.cmd("syntax on")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set smartindent")

-- vim.cmd("set wrap")
-- vim.cmd("set linebreak")

vim.cmd("set cursorline")

vim.cmd("set hlsearch!")

vim.cmd("set laststatus=3")


vim.keymap.set("n", "<leader>vs", function()
    vim.cmd("split")
    vim.cmd("wincmd j")
end, { desc="split vertically" }
)
vim.keymap.set("n", "<leader>hs", function()
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
end, { desc="split horizantally" }
)

vim.keymap.set("n", "<leader>t", function()
    vim.cmd("term")
end, { desc="open terminal" }
)

vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })
vim.keymap.set("t", "<C-h>", [[<C-\><C-N><C-w>h]], { silent = true })
vim.keymap.set("t", "<C-j>", [[<C-\><C-N><C-w>j]], { silent = true })
vim.keymap.set("t", "<C-k>", [[<C-\><C-N><C-w>k]], { silent = true })
vim.keymap.set("t", "<C-l>", [[<C-\><C-N><C-w>l]], { silent = true })

vim.keymap.set("n", "<leader>c", function()
    vim.cmd("bd")
end, { desc = "unload buffer and delete it from buffer list" }
)
vim.keymap.set("n", "<leader>cc", function()
    vim.cmd("bd!")
end, { desc = "unload buffer(changes lost) and delete it from buffer list" }
)
