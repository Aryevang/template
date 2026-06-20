-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     opts.registries = {
  --       "github:mason-org/mason-registry",
  --       "github:Crashdummyy/mason-registry",
  --     }
  --   end,
  -- },
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters

        -- install debuggers

        -- install any other package
        "tree-sitter-cli",
        "vtsls",
        "angular-language-server",
        -- "roslyn",
      },
    },
  },
}
