return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    -- Get the current time
    local currentTime = os.time()

    -- Format the current time to get the hour
    local currentHour = tonumber(os.date("%H", currentTime))

    if currentHour >= 6 and currentHour <= 17 then
      vim.cmd.colorscheme("catppuccin-latte")
    else
      vim.cmd.colorscheme("catppuccin-mocha")
    end
  end,
}
