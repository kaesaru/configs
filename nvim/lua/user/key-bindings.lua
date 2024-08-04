-- mappings from init.vim
-- inoremap kk <Esc>
-- inoremap <C-v> <ESC>"+P
-- vnoremap <C-c> "+y
-- vnoremap \ U

require("utils.helpers")
local keyMap = vim.keymap.set

-- Normal
-- keyMap('n', '<C-s>', [[<cmd>w<CR>]], { desc = "Save" }) -- save
-- keyMap('n', '<C-x>', [[<cmd>x<CR>]], { desc = "Save + Close" }) -- save & close
-- keyMap('n', '<C-i>', [[<cmd>PlugInstall<CR>]], { desc = "Install" }) -- Install plugins
-- keyMap('n', '<C-/>', [[<Plug>Commentary]], { desc = "Comment" })
-- keyMap('n', '<leader>fs', [[:%s/]], { desc = "substitue/replace" })

-- Insert
-- keyMap('i', 'kk', '<ESC>')
keyMap('i', '<C-v>', '<ESC>"+P') -- paste
keyMap('i', '<C-s>', [[<ESC><cmd>w<CR>]]) -- save
-- keyMap('i', '<C-/>', [[<Plug>Commentary]])

-- Visiual
keyMap('v', '<C-c>', '"+y') -- copy
keyMap('v', '<C-s>', [[<ESC><cmd>w<CR>]]) -- save
-- keyMap('v', '<leader>k', '<ESC>')
-- keyMap('v', '<C-/>', [[<Plug>Commentary]])
keyMap('v', '<leader>s', ':w<CR>', { desc = " Save" })

-- Window toggleterm
-- function _G.set_terminal_keymaps()
--   local opts = { buffer = 0 }
--   keyMap('t', '<esc>', [[<C-\><C-n>]], opts)
--   keyMap('t', 'jk', [[<C-\><C-n>]], opts)
--   keyMap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
--   keyMap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
--   keyMap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
--   keyMap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
-- end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


-- Buffers
keyMap('n', '<leader>h', '<cmd>bp<CR>', { desc = "buff " })
keyMap('n', '<leader>l', '<cmd>bn<CR>', { desc = "buff " })
keyMap('n', '<leader>s', ':w<CR>', { desc = " Save" })
keyMap('n', '<C-w>', '<cmd>w<CR><cmd>bd<CR>', { desc = "  Save + Close" })

-- Buffer Line
-- keyMap('n', '<C-h>', '<cmd>BufferLineCycleNext<CR>') -- next buffer
-- keyMap('n', '<C-l>', '<cmd>BufferLineCyclePrev<CR>') -- prev buffer
-- keyMap('n', '<C-p>', '<cmd>BufferLinePick<CR>') -- pick buffer


-- Telescope
-- keyMap('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
-- keyMap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
-- keyMap('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
-- keyMap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
-- keyMap('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>')

-- Trouble
-- keyMap("n", "<leader>xx", "<cmd>TroubleToggle<cr>")
-- keyMap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
-- keyMap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>")
-- keyMap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>")
-- keyMap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
-- keyMap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { desc = "Trouble Refs" })

-- Nvim Tree
keyMap('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', { desc = "Tree" })

-- Windows
keyMap('n', '<C-h>', '<C-W>h', { desc = "window " })
keyMap('n', '<C-l>', '<C-W>l', { desc = "window " })

-- Null LS
-- example of how this can be used
-- keymap('n', '<leader>f', ':Format<cr>', opts)
-- vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting_sync()' ]]
-- keyMap('n', '<leader>f', ':Format<CR>', { desc = "Custom Format" })
