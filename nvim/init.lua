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
        vim.cmd("vsplit")
    end, { desc="split verticaly" }
)
vim.keymap.set("n", "<leader>hs", function()
        vim.cmd("split")
    end, { desc="split horizantaly" }
)
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })
vim.keymap.set("n", "<leader>c", function()
    vim.cmd("bd")
    end, { desc = "unload buffer and delete it from buffer list" }
)
vim.keymap.set("n", "<leader>cc", function()
    vim.cmd("bd!")
    end, { desc = "unload buffer(changes lost) and delete it from buffer list" }
)
