local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup()

lspconfig.setup({
  ensure_installed = { "lua_ls", "tsserver", "tailwindcss", "jedi_language_server" }
})

require 'lspconfig'.tsserver.setup {
  filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" }
}

require 'lspconfig'.jedi_language_server.setup {
  filetypes = { 'python' }
}

require 'lspconfig'.phpactor.setup {
  cmd = { "phpactor", "language_server" },
  filetypes = { 'php' }
}

-- require 'lspconfig'.eslint_d.setup {}

-- lspconfig.setup {
--   automatic_installation = true
-- }
