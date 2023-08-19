local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup()

lspconfig.setup({
  ensure_installed = { "lua_ls", "tsserver", "tailwindcss", "jedi_language_server", "phpactor", "vuels" }
})

require 'lspconfig'.tsserver.setup {
  filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
}

require 'lspconfig'.jedi_language_server.setup {
  filetypes = { 'python' }
}

require 'lspconfig'.vuels.setup {
  cmd = { "vls" },
  filetypes = { 'vue' },
  init_options = {
    config = {
      css = {},
      emmet = {},
      html = {
        suggest = {}
      },
      javascript = {
        format = {}
      },
      stylusSupremacy = {},
      typescript = {
        format = {}
      },
      vetur = {
        completion = {
          autoImport = false,
          tagCasing = "kebab",
          useScaffoldSnippets = false
        },
        format = {
          defaultFormatter = {
            js = "none",
            ts = "none"
          },
          defaultFormatterOptions = {},
          scriptInitialIndent = false,
          styleInitialIndent = false
        },
        useWorkspaceDependencies = false,
        validation = {
          script = true,
          style = true,
          template = true
        }
      }
    }
  }
}

require 'lspconfig'.intelephense.setup {
  cmd = { "intelephense", "--stdio" },
  filetypes = { 'php' }
}

require 'lspconfig'.phpactor.setup {
  cmd = { "phpactor", "language_server" },
  filetypes = { 'php' }
}

-- require 'lspconfig'.custom_elements_ls.setup {
--   cmd = { "custom_elements_ls", "--stdio" },
--   filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx",
--     "html" },
--   init_options = {
--     hostInfo = "neovim"
--   }
-- }

-- require 'lspconfig'.eslint_d.setup {}

-- lspconfig.setup {
--   automatic_installation = true
-- }
