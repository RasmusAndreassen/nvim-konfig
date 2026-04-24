-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.media.image-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.lean" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.scala" },
  {
    import = "astrocommunity.docker.lazydocker",
    keys = {
      ["<Leader>td"] = {
        "Lazydocker"
      }
    }
  },
  -- import/override with your plugins folder
}
