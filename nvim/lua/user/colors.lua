-- Lua:
-- For dark theme (neovim's default)
vim.o.background = 'dark'
-- For light theme
-- vim.o.background = 'light'

-- local c = require('vscode.colors')
-- BUG: The bewlo causes an unknown error taht is not really explainable
-- ERROR: W18: Invalid character in group name
-- :help W18 provides some insight and seems to be related to highlighting
-- :h highligh
-- :so $VIMRUNTIME/syntax/hitest.vim
-- appears that the Mofiqul/vscode theme.lua uses '@' when setting highlights, which is not acceptable
-- seems like I was on the right track and the groups were not supported, but was using 0.7.2 neovim
-- require('vscode').setup({
--   -- Enable transparent background
--   transparent = true,
--
--   -- Enable italic comment
--   italic_comments = true,
--
--   -- Disable nvim-tree background color
--   disable_nvimtree_bg = true,
--
--   -- Override colors (see ./lua/vscode/colors.lua)
--   color_overrides = {
--     vscLineNumber = '#FFFFFF',
--   },
--
--   -- Override highlight groups (see ./lua/vscode/theme.lua)
--   group_overrides = {
--     -- this supports the same val table as vim.api.nvim_set_hl
--     -- use colors from this colorscheme by requiring vscode.colors!
--     Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
--   }
-- })


require('nightfox').setup({})

-- Primary color
-- https://github.com/danilo-augusto/vim-afterglow
-- colorscheme afterglow " awesome
-- colorscheme carbonfox
-- colorscheme nordfox
-- colorscheme codedark -- vscodelike
vim.cmd('colorscheme nordfox')
