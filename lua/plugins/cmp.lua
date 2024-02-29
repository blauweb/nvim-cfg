local completionDelay = 750
local timer = nil
local cmp = require("cmp")

function _G.setAutoCompleteDelay(delay)
  completionDelay = delay
end

function _G.getAutoCompleteDelay()
  return completionDelay
end

vim.api.nvim_create_autocmd({ "TextChangedI", "CmdlineChanged" }, {
  pattern = "*",
  callback = function()
    if timer then
      vim.loop.timer_stop(timer)
      timer = nil
    end

    timer = vim.loop.new_timer()
    timer:start(
      _G.getAutoCompleteDelay(),
      0,
      vim.schedule_wrap(function()
        cmp.complete({ reason = cmp.ContextReason.Auto })
      end)
    )
  end,
})

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- opts.preselect = {}
    opts.preselect = require("cmp").PreselectMode.None
    opts.completion = {
      autocomplete = false,
      completeopt = "menu,menuone,noselect,noinsert",
    }
    -- opts.experimental = {
    -- ghost_text = false,
    -- }
    opts.mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
    })
    return opts
  end,
  config = function(_, opts)
    require("cmp").setup(opts)
  end,
}
