-- Syntax highlight groups (legacy Vim groups) for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local p = palette
  local syn = p.syntax
  local bg = p.base

  return {
    Constant = { fg = syn.green.hex },
    String = { fg = syn.cyan.hex },
    Character = { fg = syn.cyan.hex },
    Number = { fg = syn.orange.hex },
    Boolean = { fg = syn.orange.hex },
    Float = { fg = syn.orange.hex },

    Identifier = { fg = bg.fg_primary.hex },
    Function = { fg = syn.cyan.hex },

    Statement = { fg = syn.blue.hex, bold = true },
    Conditional = { fg = syn.purple.hex, bold = true },
    Repeat = { fg = syn.purple.hex, bold = true },
    Label = { fg = syn.blue.hex },
    Operator = { fg = syn.orange.hex },
    Keyword = { fg = syn.blue.hex, bold = true },
    Exception = { fg = syn.red.hex },

    PreProc = { fg = syn.yellow.hex },
    Include = { fg = syn.blue.hex, bold = true },
    Define = { fg = syn.blue.hex },
    Macro = { fg = syn.yellow.hex },
    PreCondit = { fg = syn.yellow.hex },

    Type = { fg = syn.yellow.hex },
    StorageClass = { fg = syn.purple.hex },
    Structure = { fg = syn.yellow.hex },
    Typedef = { fg = syn.yellow.hex },

    Special = { fg = syn.orange.hex },
    SpecialChar = { fg = syn.orange.hex },
    Tag = { fg = syn.blue.hex },
    Delimiter = { fg = bg.fg_secondary.hex },
    SpecialComment = { fg = syn.green.hex },
    Debug = { fg = syn.red.hex },

    Error = { fg = syn.red.hex, bold = true },
    ErrorMsg = { fg = syn.red.hex, bold = true },
    WarningMsg = { fg = p.ui.warning.hex, bold = true },
    MoreMsg = { fg = p.ui.info.hex },
    ModeMsg = { fg = p.ui.accent.hex, bold = true },
    Question = { fg = p.ui.accent.hex },
  }
end

return M
