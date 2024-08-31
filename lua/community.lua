-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.colorscheme.nightfox-nvim"},
  { import = "astrocommunity.colorscheme.kanagawa-nvim" , lazy = true},
  { import = "astrocommunity.colorscheme.rose-pine", lazy = true },
  { 
-- https://github.com/neanias/config/blob/main/nvim/lua/settings/plugins/everforest.lua
    import = "astrocommunity.colorscheme.everforest", lazy = true,
    config = function()
      local plg = require("everforest")
      plg.setup({
        background = "hard",
      })
    end
  },
}
