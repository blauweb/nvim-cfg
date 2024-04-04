function ColorMyPencils(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- change inactive pane color
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1f1a1f" })
end

ColorMyPencils()
