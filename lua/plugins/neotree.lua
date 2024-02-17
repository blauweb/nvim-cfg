return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
  keys = {
    { "<leader><C-e>", ":Neotree focus<CR>", desc = "Focus Neotree" },
  },
}
