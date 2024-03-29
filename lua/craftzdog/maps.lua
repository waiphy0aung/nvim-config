local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<Return>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

keymap.set('n', '<C-t>', '<Cmd>execute v:count . "ToggleTerm"<CR>', { silent = true })
keymap.set('t', '<C-t>', "<Esc><Cmd>ToggleTerm<CR>", { silent = true })
keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
keymap.set("n", "<C-s>", "<Esc>v:lua.split_term()", { expr = true })

keymap.set("n", "fm", ":lua vim.lsp.buf.format()<Return>")
keymap.set("n", "fjsm", ":%!jq '.'<Return>")

-- vim.keymap.set('n', '<Tab>', 'gt', {})
-- vim.keymap.set('n', '<S-Tab>', 'Gt', {})
