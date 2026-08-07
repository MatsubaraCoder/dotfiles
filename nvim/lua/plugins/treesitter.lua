return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',

    config = function()
        require("nvim-treesitter").setup()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "c", "cpp", "lua", "python" },
            callback = function()
                vim.treesitter.start()

                vim.wo.foldmethod = "expr"
                vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
                vim.wo.foldlevel = 100

                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
