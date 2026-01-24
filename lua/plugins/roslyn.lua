-- More info:
-- https://github.com/seblyng/roslyn.nvim?tab=readme-ov-file
local astrolsp = require("astrolsp")

return {
  "seblyng/roslyn.nvim",
  opts = {},
  config = function()
    vim.lsp.config("roslyn", {
      on_attach = function(client, bufnr) 
        astrolsp.on_attach(client, bufnr)
      end,
    })

    require("roslyn").setup()
  end,
}
