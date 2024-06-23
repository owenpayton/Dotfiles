return {
  -- add rose-pine
  { "rose-pine/neovim", name = "rose-pine" },

  -- Configure LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
