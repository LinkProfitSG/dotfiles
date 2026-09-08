return {
  "neovim/nvim-lspconfig",
  opts = {
    autoformat = false,
    inlay_hints = { enabled = false },

    servers = {
      qmlls = {
        cmd = { "qmlls", "-E" },
        filetypes = { "qml", "qmljs" },
      },
    },
  },
}
