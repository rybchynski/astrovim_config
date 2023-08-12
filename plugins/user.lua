-- TODO: make some feature.
-- PERF: some text for performance.
-- NOTE: some notes.
-- HACK: some hack code.
-- FIX: some fix note.
-- WARNING: some warning.
-- TEST: some test.
return {
    -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
    {
        "folke/todo-comments.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
        -- You can also use 'opt = {}' it is the same as config = function()...
        config = function() require("todo-comments").setup {} end,
        event = "User AstroFile",
        opt = {},
        cmd = {"TodoQuickFix"},
        keys = {
            {
                "<leader>T",
                "<cmd>TodoTelescope<cr>",
                desc = "Open TODOs in Telescope"
            }
        }
    }, {'projekt0n/github-nvim-theme'}, {
        "dsznajder/vscode-es7-javascript-react-snippets",
        run = "yarn install --frozen-lockfile && yarn compile"
    }, {
        "nvim-telescope/telescope.nvim",
        optional = true,
        opts = function(_, opts)
            local function flash(prompt_bufnr)
                require("flash").jump({
                    pattern = "^",
                    label = {after = {0, 0}},
                    search = {
                        mode = "search",
                        exclude = {
                            function(win)
                                return vim.bo[vim.api.nvim_win_get_buf(win)]
                                           .filetype ~= "TelescopeResults"
                            end
                        }
                    },
                    action = function(match)
                        local picker =
                            require("telescope.actions.state").get_current_picker(
                                prompt_bufnr)
                        picker:set_selection(match.pos[1] - 1)
                    end
                })
            end
            opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
                mappings = {n = {s = flash}, i = {["<c-s>"] = flash}}
            })
        end
    }, {"cocopon/iceberg.vim"}, {"Mofiqul/dracula.nvim"},
    {"folke/tokyonight.nvim"}

}
