---@type LazySpec
return {

  {
    "kylechui/nvim-surround",
    version = "^4.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        window = {
          mappings = {
            ["<C-h>"] = "navigate_up",
          },
        },
      },
    },
  },
}
