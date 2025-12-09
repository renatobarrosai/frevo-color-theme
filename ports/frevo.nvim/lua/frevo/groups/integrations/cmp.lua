-- nvim-cmp (and LuaSnip badge) highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui
  local syn = p.syntax

  return {
    CmpItemAbbr = { fg = bg.fg_primary.hex },
    CmpItemAbbrDeprecated = { fg = bg.fg_tertiary.hex, strikethrough = true },
    CmpItemAbbrMatch = { fg = ui.accent.hex, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = ui.accent.hex, underline = true },
    CmpItemMenu = { fg = bg.fg_secondary.hex },

    CmpItemKind = { fg = ui.info.hex },
    CmpItemKindText = { fg = bg.fg_primary.hex },
    CmpItemKindMethod = { fg = syn.cyan.hex },
    CmpItemKindFunction = { fg = syn.cyan.hex },
    CmpItemKindConstructor = { fg = syn.yellow.hex },
    CmpItemKindField = { fg = syn.cyan.hex },
    CmpItemKindVariable = { fg = bg.fg_primary.hex },
    CmpItemKindClass = { fg = syn.yellow.hex },
    CmpItemKindInterface = { fg = syn.yellow.hex },
    CmpItemKindModule = { fg = syn.yellow.hex },
    CmpItemKindProperty = { fg = syn.cyan.hex },
    CmpItemKindUnit = { fg = syn.orange.hex },
    CmpItemKindValue = { fg = syn.orange.hex },
    CmpItemKindEnum = { fg = syn.yellow.hex },
    CmpItemKindKeyword = { fg = syn.blue.hex },
    CmpItemKindSnippet = { fg = syn.green.hex },
    CmpItemKindColor = { fg = syn.orange.hex },
    CmpItemKindFile = { fg = ui.accent.hex },
    CmpItemKindReference = { fg = syn.orange.hex },
    CmpItemKindFolder = { fg = ui.accent.hex },
    CmpItemKindEnumMember = { fg = syn.yellow.hex },
    CmpItemKindConstant = { fg = syn.green.hex },
    CmpItemKindStruct = { fg = syn.yellow.hex },
    CmpItemKindEvent = { fg = syn.purple.hex },
    CmpItemKindOperator = { fg = syn.orange.hex },
    CmpItemKindTypeParameter = { fg = syn.yellow.hex },

    -- Popup
    CmpDocumentation = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    CmpDocumentationBorder = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },

    -- LuaSnip badge (optional)
    CmpItemKindSnippetBadge = { fg = syn.green.hex, bold = true },
  }
end

return M
