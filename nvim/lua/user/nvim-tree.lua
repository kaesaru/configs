local nv_tree = require('nvim-tree')
-- local nv_tree_config = require('nvim-tree.config')

-- local tree_cb = nv_tree_config.nvim_tree_callback
nv_tree.setup({
  -- open_on_setup = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 40,
    -- height = 30,
    side = "left",
    -- mappings = {
    --   list = {
    --     -- { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
    --     -- { key = "h", cb = tree_cb "close_node" },
    --     -- { key = "v", cb = tree_cb "vsplit" },
    --   },
    -- },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})
