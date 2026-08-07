return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable("basedpyright")
        vim.lsp.enable("clangd")
        vim.lsp.enable("glsl_analyzer")
        vim.lsp.enable("lua_ls")
    end
}
