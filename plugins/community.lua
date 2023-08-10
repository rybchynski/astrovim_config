return {
    -- Add the community repository of plugin specifications
    "AstroNvim/astrocommunity",
    -- example of imporing a plugin, comment out to use it or add your own
    -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

    -- {import = "astrocommunity.colorscheme.catppuccin"},
    -- { import = "astrocommunity.completion.copilot-lua-cmp" },
    {import = "astrocommunity.pack.typescript"},
    {import = "astrocommunity.pack.json"}, {import = "astrocommunity.pack.php"},
    {import = "astrocommunity.pack.yaml"},
    {import = "astrocommunity.pack.markdown"},
    {import = "astrocommunity.colorscheme.tokyonight"},
    {import = "astrocommunity.colorscheme.dracula"},
    {import = "astrocommunity.colorscheme.iceberg"}
    -- {import = "astrocommunity.colorscheme.github-nvim-theme", enabled = true }
}
