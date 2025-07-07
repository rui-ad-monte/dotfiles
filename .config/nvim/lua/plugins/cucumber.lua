return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cucumber_language_server = {
        cmd = { "cucumber-language-server", "--stdio" },
        filetypes = { "cucumber" },
        root_dir = function(fname)
          return require("lspconfig.util").find_git_ancestor(fname)
        end,
        settings = {
          cucumber = {
            features = {"**/*.feature"},
            glue = {"**/*steps*"},
            parameterTypes = {},
          }
        }
      }
    }
  }
}
