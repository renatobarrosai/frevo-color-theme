-- LSP and diagnostics theming for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local ui = palette.ui
  local syn = palette.syntax
  local bg = palette.base
  return {
    LspInlayHint = { fg = bg.fg_tertiary.hex, bg = bg.bg_secondary.hex, italic = true },
    LspCodeLens = { fg = bg.fg_tertiary.hex, italic = true },
    LspCodeLensSeparator = { fg = bg.fg_secondary.hex },
    LspSignatureActiveParameter = { fg = syn.orange.hex, underline = true },

    DiagnosticError = { fg = ui.error.hex },
    DiagnosticWarn = { fg = ui.warning.hex },
    DiagnosticInfo = { fg = ui.info.hex },
    DiagnosticHint = { fg = syn.green.hex },
    DiagnosticOk = { fg = ui.success.hex },

    DiagnosticVirtualTextError = { fg = ui.error.hex },
    DiagnosticVirtualTextWarn = { fg = ui.warning.hex },
    DiagnosticVirtualTextInfo = { fg = ui.info.hex },
    DiagnosticVirtualTextHint = { fg = syn.green.hex },
    DiagnosticVirtualTextOk = { fg = ui.success.hex },

    DiagnosticUnderlineError = { undercurl = true, sp = ui.error.hex },
    DiagnosticUnderlineWarn = { undercurl = true, sp = ui.warning.hex },
    DiagnosticUnderlineInfo = { undercurl = true, sp = ui.info.hex },
    DiagnosticUnderlineHint = { undercurl = true, sp = syn.green.hex },
    DiagnosticUnderlineOk = { undercurl = true, sp = ui.success.hex },

    -- LspInfo floating window
    LspInfoBorder = { fg = ui.border_subtle.hex },
    LspInfoList = { fg = bg.fg_primary.hex },
    LspInfoTitle = { fg = ui.accent.hex, bold = true },
  }
end

return M
