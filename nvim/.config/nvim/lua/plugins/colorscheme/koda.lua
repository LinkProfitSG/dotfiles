return {
  "oskarnurm/koda.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("koda").setup({
      theme = { dark = "dark" },

      styles = {
        functions = { bold = false },
      },

      colors = {
        bg = "#090909",
        line = "#1a1a1a",
        func = "#a6a4a4",
        string = "#22a322",

        fg = "#b0b0b0",
        dim = "#474747",
        keyword = "#777777",
        type = "#777777",
        operator = "#777777",
        comment = "#50585d",
        border = "#ffffff",
        emphasis = "#ffffff",
        char = "#ffffff",
        special = "#ffffff",
        const = "#d9ba73",
        highlight = "#458ee6",
        info = "#8ebeec",
        success = "#86cd82",
        warning = "#d9ba73",
        danger = "#ff7676",
        green = "#14ba19",
        orange = "#ff5733",
        red = "#701516",
        pink = "#f2a4db",
        cyan = "#5abfb5",
      },
    })
    vim.cmd("colorscheme koda")
  end,
}
