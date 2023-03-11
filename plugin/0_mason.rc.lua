local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup()

lspconfig.setup({
  ensure_installed = { "lua_ls", "tsserver", "tailwindcss" }
})

require 'lspconfig'.tsserver.setup {
  filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" }
}

-- lspconfig.setup {
--   automatic_installation = true
-- }
