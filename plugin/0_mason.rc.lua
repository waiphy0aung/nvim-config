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

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.html.setup {
  capabilities = capabilities,
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html" },
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
  single_file_support = true
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
