local todoComments = require("todo-comments")

todoComments.setup({
  signs = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  keywords = {
    Q = { icon = "", color = "hint" },
    ATTN = { icon = "", color = "bold_warning" },
    TODO = { icon = " ", color = "todo" },
    -- default keywords not modified
    FIX = {
      icon = " ", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  gui_style = {
    fg = "NONE", -- The gui style to use for the fg highlight group.
    bg = "BOLD", -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  highlight = {
    before = "", -- "fg" or "bg" or empty
    keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of highlight groups or use the hex color if hl not found as a fallback
  -- Colors I like
  -- red #FF2D00, blue #3498DB or #0076FF, orange #FF8C00, yellow #EAF622, green #98C379 or #27FF00
  -- insperation for colors
  -- https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
  -- https://marketplace.visualstudio.com/items?itemName=ParthR2031.colorful-comments
  colors = {
    error = { "#DC2626", "DiagnosticError", "ErrorMsg"},
    warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
    bold_warning= { "#FF2D00" },
    todo = { "#FF8C00" },
    info = { "#3498DB", "DiagnosticInfo" },
    hint = { "#2563EB", "DiagnosticHint" }, -- NOTE: default #10B981 (like color not for this)
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" }
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
  },

})

