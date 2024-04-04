return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,

    opts = {
      flavour = "macchiato",
      -- transparent_background = true,
      color_overrides = {
        macchiato = {
          base = "#241e25",
          mantle = "#1f1a1f",
        },
      },
    },
  },

  -- configure lazvim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
