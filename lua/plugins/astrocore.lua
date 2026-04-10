local function term_nav(dir)
  return function()
    if vim.api.nvim_win_get_config(0).zindex then
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-" .. dir .. ">", true, false, true), "n", false)
    else
      vim.cmd.wincmd(dir)
    end
  end
end

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
    },
    treesitter = {
      ensure_installed = {
        "lua",
        "vim",
        -- add more arguments for adding more treesitter parsers
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      t = {
        -- setting a mapping to false will disable it
        ["<C-H>"] = false,
        ["<C-J>"] = false,
        ["<C-K>"] = false,
        ["<C-L>"] = false,
        ["<A-h>"] = term_nav "h",
        ["<A-j>"] = term_nav "j",
        ["<A-k>"] = term_nav "k",
        ["<A-l>"] = term_nav "l",
      },
      n = {
        -- setting a mapping to false will disable it
        ["<C-h>"] = false,
        ["<C-j>"] = false,
        ["<C-k>"] = false,
        ["<C-l>"] = false,
        ["<C-H>"] = false,
        ["<C-J>"] = false,
        ["<C-K>"] = false,
        ["<C-L>"] = false,
        ["<A-h>"] = "<C-w>h",
        ["<A-j>"] = "<C-w>j",
        ["<A-k>"] = "<C-w>k",
        ["<A-l>"] = "<C-w>l",
        ["<A-H>"] = "<C-w>H",
        ["<A-J>"] = "<C-w>J",
        ["<A-K>"] = "<C-w>K",
        ["<A-L>"] = "<C-w>L",
      },
    },
  },
}
