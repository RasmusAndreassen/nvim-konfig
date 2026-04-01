---@type LazySpec
return {

  -- == Examples of Overriding Plugins ==

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
