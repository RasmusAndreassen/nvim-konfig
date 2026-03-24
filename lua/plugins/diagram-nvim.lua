return {
  "3rd/diagram.nvim",
  dependencies = {
    "3rd/image.nvim",
  },
  config = function()
    require("diagram").setup({
      integrations = {
        require("diagram.integrations.markdown"),
        require("diagram.integrations.neorg"),
      },
      renderer_options = {
        mermaid = {
          background = "transparent",
          theme = "dark",
          scale = 1,
        },
        plantuml = {
          charset = "utf-8",
        },
        d2 = {
          theme_id = 1,
          dark_theme_id = 200,
          scale = -1,
          layout = nil,
          sketch = nil,
        },
      },
  })
  end
}
