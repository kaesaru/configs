local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
-- local diagnoastics = null_ls.builtins.diagnoastics
local actions = null_ls.builtins.code_actions

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier,
    formatting.stylua,
    actions.eslint,
    actions.gitsigns.with({
      filetypes = { 'python', 'javascript', 'typescript' }
    }),
  },
  -- on_attach = function(client)
  -- end
})

