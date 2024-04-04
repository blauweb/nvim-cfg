return {
  "mbbill/undotree",
  name = "undotree",
  config = function()
    vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)
    vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeFocus)
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
