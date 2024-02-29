if true then
  return {}
end

return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"
  end,
  opts = {
    -- Refer to my configuration here https://github.com/jellydn/lazy-nvim-ide/blob/main/lua/plugins/extras/edgy.lua
    right = {
      {
        title = "CopilotChat.nvim", -- Title of the window
        ft = "copilot-chat", -- This is custom file type from CopilotChat.nvim
        size = { width = 0.4 }, -- Width of the window
      },
    },
  },
}
