return {
  {
    -- Plugin nvim-notify
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "fade_in_slide_out",  -- Animation douce
        timeout = 2000,                -- Durée de la notification
      })
    end,
  }
}

