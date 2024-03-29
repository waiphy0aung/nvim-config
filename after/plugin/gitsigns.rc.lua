local status, gitsigns = pcall(require, "gitsigns")
if (not status) then return end

gitsigns.setup {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    map('n', 'tb', gs.toggle_current_line_blame)
  end
}
