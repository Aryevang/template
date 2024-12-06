return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-p>"] = {
            "<CMD>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>",
          },
          ["<C-f>"] = { "<CMD>Telescope live_grep theme=ivy<CR>" },
          ["<C-n>"] = { "<CMD>Neotree toggle<CR>" },
          ["<Tab>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end },
          ["<S-Tab>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end },
          ["<C-\\>"] = {
            function()
              require("toggleterm").setup {
                open_mapping = [[<c-\>]],
                direction = "float",
                float_opts = {
                  border = "curved",
                  winblend = 5,
                },
              }
            end,
          },
          ["grr"] = { "<CMD>Telescope lsp_references<CR>", desc = "LSP Refereces" },
          ["n"] = { "nzzzv"},
          ["N"] = { "Nzzzv"},
        },
        t = {
          -- NOTE: setting a mapping to false will disable it
          -- ["<esc>"] = false,
          -- ["<C-v"] = false
        },
      },
    },
  },
}
