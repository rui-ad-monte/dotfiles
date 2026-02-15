return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "cucumber-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cucumber_language_server = {
          settings = {
            cucumber = {
              features = { "**/*.feature" },
              glue = { "**/*steps*" },
            },
          },
        },
      },
    },
  },
}