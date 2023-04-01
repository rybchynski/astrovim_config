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
    dependencies = { "nvim-lua/plenary.nvim" },
    -- You can also use 'opt = {}' it is the same as config = function()...
    config = function() require("todo-comments").setup {} end,
    event = "User AstroFile",
    opt = {},
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
}
