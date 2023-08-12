return {
    -- Add the community repository of plugin specifications
    "AstroNvim/astrocommunity",
    -- example of imporing a plugin, comment out to use it or add your own
    -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

    {import = "astrocommunity.pack.typescript"},
    {import = "astrocommunity.pack.json"}, {import = "astrocommunity.pack.php"},
    {import = "astrocommunity.pack.yaml"}, {import = "astrocommunity.pack.vue"},
    {import = "astrocommunity.pack.markdown"},
    {import = "astrocommunity.colorscheme.nord-nvim"},
    {import = "astrocommunity.motion.flash-nvim"}
}
