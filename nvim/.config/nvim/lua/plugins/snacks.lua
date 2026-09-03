return {
  "folke/snacks.nvim",
  lazy = false,
  opts = {
    picker = {
      hidden = true,
      ignored = true,
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer({ cwd = vim.fn.getcwd() })
      end,
      desc = "Explorer (pwd)",
    },
  },
}
