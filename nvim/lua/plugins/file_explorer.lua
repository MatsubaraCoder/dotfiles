return {
    "nvim-tree/nvim-tree.lua",

    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-tree/nvim-web-devicons" },

    opts = {
        sort = { sorter = "case_sensitive" },
        view = { width = 30 },
        renderer = { group_empty = true },
        filters = { dotfiles = true },

        on_attach = function(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return {
                    desc = "nvim-tree: " .. desc,
                    buffer = bufnr,
                    noremap = true,
                    silent = true,
                    nowait = true,
                }
            end

            api.config.mappings.default_on_attach(bufnr)

            vim.keymap.set("n", "<leader>e", ":NvimTreeToggl<CR>", { noremap = true, silent = true })

            vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
            vim.keymap.set("n", "%", api.fs.create, opts("Create File Or Directory"))
            vim.keymap.set("n", "<C-r>", api.fs.rename_sub, opts("Rename: Omit Filename"))
            vim.keymap.set("n", "<C-x>", api.node.open.horizontal, opts("Open: Horizontal Split"))
            vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("Open: Vertical split"))
        end,
    },
}
