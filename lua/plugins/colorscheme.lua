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
          base = "#1F191C",
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
