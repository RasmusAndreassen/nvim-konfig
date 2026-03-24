
---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "tokyonight",
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 =  "\u{EE06}",
      LSPLoading2 =  "\u{EE07}",
      LSPLoading3 =  "\u{EE08}",
      LSPLoading4 =  "\u{EE09}",
      LSPLoading5 =  "\u{EE0A}",
      LSPLoading6 =  "\u{EE0B}",
    },
  },
}
