return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- optional but recommended
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<CR>",
      desc = "Find Files",
    },
  },
  opts = {
    defaults = { file_ignore_patterns = {} },
    pickers = { find_files = { hidden = true } },
  },
}
