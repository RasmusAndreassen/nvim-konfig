
---@type LazySpec
return {
  "HiPhish/rainbow-delimiters.nvim",
  init = function ()
    require('rainbow-delimiters.setup').setup {
      highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      }
    }
  end
}
