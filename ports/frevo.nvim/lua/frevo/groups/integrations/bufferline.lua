-- Bufferline highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui

  local inactive_bg = style.blend(bg.bg_secondary.hex, 0.5, bg.bg_primary.hex)

  return {
    BufferLineFill = { bg = bg.bg_primary.hex },
    BufferLineBackground = { fg = bg.fg_tertiary.hex, bg = inactive_bg },
    BufferLineBuffer = { fg = bg.fg_tertiary.hex, bg = inactive_bg },
    BufferLineBufferVisible = { fg = bg.fg_secondary.hex, bg = inactive_bg },
    BufferLineBufferSelected = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex, bold = true },

    BufferLineSeparator = { fg = bg.bg_primary.hex, bg = inactive_bg },
    BufferLineSeparatorVisible = { fg = bg.bg_primary.hex, bg = inactive_bg },
    BufferLineSeparatorSelected = { fg = ui.accent.hex, bg = bg.bg_secondary.hex },

    BufferLineCloseButton = { fg = bg.fg_tertiary.hex, bg = inactive_bg },
    BufferLineCloseButtonVisible = { fg = bg.fg_secondary.hex, bg = inactive_bg },
    BufferLineCloseButtonSelected = { fg = ui.error.hex, bg = bg.bg_secondary.hex },

    BufferLineModified = { fg = ui.info.hex, bg = inactive_bg },
    BufferLineModifiedVisible = { fg = ui.info.hex, bg = inactive_bg },
    BufferLineModifiedSelected = { fg = ui.info.hex, bg = bg.bg_secondary.hex },

    BufferLineDuplicate = { fg = bg.fg_tertiary.hex, bg = inactive_bg },
    BufferLineDuplicateSelected = { fg = bg.fg_secondary.hex, bg = bg.bg_secondary.hex, italic = true },
    BufferLineDuplicateVisible = { fg = bg.fg_secondary.hex, bg = inactive_bg, italic = true },

    BufferLineIndicatorSelected = { fg = ui.accent.hex, bg = bg.bg_secondary.hex },
    BufferLineDiagnostic = { fg = bg.fg_secondary.hex, bg = inactive_bg },
    BufferLineDiagnosticSelected = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex, bold = true },
    BufferLineDiagnosticVisible = { fg = bg.fg_secondary.hex, bg = inactive_bg },

    BufferLineWarning = { fg = ui.warning.hex, bg = inactive_bg },
    BufferLineWarningVisible = { fg = ui.warning.hex, bg = inactive_bg },
    BufferLineWarningSelected = { fg = ui.warning.hex, bg = bg.bg_secondary.hex },

    BufferLineError = { fg = ui.error.hex, bg = inactive_bg },
    BufferLineErrorVisible = { fg = ui.error.hex, bg = inactive_bg },
    BufferLineErrorSelected = { fg = ui.error.hex, bg = bg.bg_secondary.hex },

    BufferLineHint = { fg = palette.syntax.green.hex, bg = inactive_bg },
    BufferLineHintVisible = { fg = palette.syntax.green.hex, bg = inactive_bg },
    BufferLineHintSelected = { fg = palette.syntax.green.hex, bg = bg.bg_secondary.hex },

    BufferLineInfo = { fg = ui.info.hex, bg = inactive_bg },
    BufferLineInfoVisible = { fg = ui.info.hex, bg = inactive_bg },
    BufferLineInfoSelected = { fg = ui.info.hex, bg = bg.bg_secondary.hex },
  }
end

return M
