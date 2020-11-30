local c = require("colors")
local f = require("func")

local colors = {
  {g = "Boolean", fg = c.blue},
  {g = "Character", fg = c.blue},
  {g = "ColorColumn", bg = c.base1},
  {g = "Comment", fg = c.base4},
  {g = "Conceal", fg = c.cyan},
  {g = "Conditional", fg = c.base6},
  {g = "Constant", fg = c.blue},
  {g = "Cursor", fg = c.black, bg = "#72f970"},
  {g = "CursorColumn", bg = c.base1},
  {g = "CursorLine", bg = c.base2, style = "bold"},
  {g = "CursorLineNr", fg = c.base5, bg = c.base1},
  {g = "Debug", fg = c.base6},
  {g = "Define", fg = c.magenta},
  {g = "Delimiter", fg = c.cyan},
  {g = "DiffAdd", fg = "#859900", style = "bold"},
  {g = "DiffChange"},
  {g = "DiffDelete", fg = "#dc322f", style = "bold"},
  {g = "DiffText", fg = "#268bd2", style = "bold"},
  {g = "Directory", fg = c.green},
  {g = "EndOfBuffer", fg = c.blue},
  {g = "Error", fg = c.red, style = "bold,reverse"},
  {g = "ErrorMsg", fg = c.red, style = "bold"},
  {g = "Exception", fg = c.base6},
  {g = "Float", fg = c.blue},
  {g = "FoldColumn", fg = c.blue},
  {g = "Folded", fg = c.blue},
  {g = "Function", fg = c.green, style = "bold"},
  {g = "Identifier", fg = c.green, style = "bold"},
  {g = "Ignore", fg = c.cyan},
  {g = "IncSearch", fg = c.yellow, c.base3, style = "bold"},
  {g = "Include", fg = c.magenta, style = "bold,italic"},
  {g = "Keyword", fg = c.magenta, style = "bold,italic"},
  {g = "Label", fg = c.base6},
  {g = "LineNr", fg = c.blue},
  {g = "Macro"},
  {g = "MatchParen", fg = c.base6, bg = "#d26937"},
  {g = "ModeMsg", fg = c.yellow},
  {g = "MoreMsg", fg = c.yellow},
  {g = "NonText", fg = c.blue},
  {g = "Normal", fg = c.base6},
  {g = "Number", fg = c.blue},
  {g = "Operator", fg = c.base6},
  {g = "Pmenu", fg = c.black, bg = c.base7},
  {g = "PmenuSbar", fg = c.black, bg = c.base7},
  {g = "PmenuSel", fg = c.black, bg = c.base6},
  {g = "PmenuThumb", fg = c.black, bg = c.blue},
  {g = "PreCondit", fg = c.magenta},
  {g = "PreProc", fg = c.magenta},
  {g = "Question", fg = c.yellow},
  {g = "QuickFixLine", c.base2, style = "bold"},
  {g = "Repeat", fg = c.base6},
  {g = "Search", fg = c.yellow, bg = c.base3, style = "bold"},
  {g = "SignColumn", fg = c.blue},
  {g = "Special", fg = c.base6},
  {g = "SpecialChar", fg = c.base6},
  {g = "SpecialComment", fg = "#4e5166"},
  {g = "SpecialKey", fg = c.base3},
  {g = "SpellBad", fg = c.base7, bg = c.red},
  {g = "SpellCap", fg = c.base7, bg = c.blue},
  {g = "SpellLocal", fg = c.yellow},
  {g = "SpellRare", fg = c.base7, bg = "#4e5166"},
  {g = "Statement", fg = c.base6},
  {g = "StatusLine", fg = c.black, bg = c.base6, style = "bold"},
  {g = "StatusLineLSPError", fg = c.red, bg = c.base6, style = "bold"},
  {g = "StatusLineLSPWarning", fg = c.yellow, bg = c.base6, style = "bold"},
  {g = "StatusLineNC", fg = c.base6, bg = c.base3, style = "bold"},
  {g = "StorageClass", fg = c.base6},
  {g = "String", fg = c.cyan, style = "italic"},
  {g = "Structure", fg = c.base6},
  {g = "Substitute", fg = c.yellow, bg = c.base3, style = "bold"},
  {g = "TabLine", fg = c.base6, bg = c.base3, style = "bold"},
  {g = "TabLineFill", fg = c.base6, bg = c.base3, style = "bold"},
  {g = "TabLineSel", fg = c.black, bg = c.base6, style = "bold"},
  {g = "Tag", fg = c.base6},
  {g = "TermCursor", fg = c.black, bg = "#72f970"},
  {g = "TermCursorNC", fg = c.black, bg = "#72f970"},
  {g = "Title", fg = "#d26937"},
  {g = "Todo", fg = c.yellow, style = "bold"},
  {g = "Type", fg = c.green},
  {g = "Typedef", fg = c.base6},
  {g = "Underlined", fg = c.yellow, style = "underline"},
  {g = "VertSplit", fg = c.base6, bg = c.base3, style = "bold"},
  {g = "Visual", fg = c.base3},
  {g = "WarningMsg", fg = "#d26937", style = "bold"},
  {g = "Whitespace", fg = c.blue},
  {g = "WildMenu", fg = c.base7, bg = c.cyan}
}

vim.cmd(
  table.concat(
    f.map(
      function(def)
        return string.format(
          "hi! %s guifg=%s guibg=%s gui=%s",
          def.g,
          def.fg or "none",
          def.bg or "none",
          def.style or "none"
        )
      end,
      colors
    ),
    " | "
  )
)

-- This keeps all our defined highlights
vim.cmd("syntax enable")