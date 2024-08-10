vim.opt.autoindent = true
vim.opt.et = true


local set = vim.opt
-- :help option-list  (to see list of all options)
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

set.ts = 2
set.sw = 2
set.sts = 2
set.cursorline = false

-- folds in files
-- set.foldmethod = "expr"
-- set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldcolumn = "1"
set.foldlevel = 99
set.foldlevelstart = 99
set.foldenable = true


-- let g:airline#extensions#tabline#enabled = 1
-- vim.g['airline#extensions#tabline#enabled'] = 1
-- vim.g['airline_powerline_fonts'] = 1
-- let g:airline#extensions#tabline#left_sep = ' '
-- let g:airline#extensions#tabline#left_alt_sep = '|'
-- let g:airline#extensions#tabline#formatter = 'default'

-- TODO: making airline file
-- Airline Themes
-- https://github.com/vim-airline/vim-airline/wiki/Screenshots
-- nord_minimal
-- minimalist
-- deus
-- bubblegum
-- angr
-- vim.g['airline_theme'] = 'minimalist'


-- Tab to spaces for specific file types
-- https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
-- https://stackoverflow.com/questions/158968/changing-vim-indentation-behavior-by-file-type
-- https://stackoverflow.com/questions/1562633/setting-vim-whitespace-preferences-by-filetype
--  https://learnvimscriptthehardway.stevelosh.com/chapters/12.html
-- :set ts=2 sw=2 sts=2 et
-- autocmd Filetype javascript :set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

-- TODO: add ini autocmd using lua
-- autocmd Filetype python :set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
