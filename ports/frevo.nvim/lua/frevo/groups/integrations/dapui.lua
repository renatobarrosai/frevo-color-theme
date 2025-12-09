-- nvim-dap-ui highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui

  local panel_bg = style.blend(bg.bg_secondary.hex, 0.7, bg.bg_primary.hex)

  return {
    DapUIVariable = { fg = bg.fg_primary.hex },
    DapUIScope = { fg = ui.accent.hex, bold = true },
    DapUIType = { fg = p.syntax.yellow.hex },
    DapUIValue = { fg = bg.fg_primary.hex },
    DapUIModifiedValue = { fg = ui.warning.hex, bold = true },
    DapUIDecoration = { fg = ui.accent.hex },
    DapUIThread = { fg = ui.success.hex },
    DapUIStoppedThread = { fg = ui.warning.hex },
    DapUIFrameName = { fg = bg.fg_primary.hex },
    DapUISource = { fg = ui.info.hex },
    DapUILineNumber = { fg = ui.accent.hex },
    DapUIFloatBorder = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },
    DapUIWatchesEmpty = { fg = ui.error.hex },
    DapUIWatchesValue = { fg = ui.success.hex },
    DapUIWatchesError = { fg = ui.error.hex },
    DapUIBreakpointsPath = { fg = ui.info.hex },
    DapUIBreakpointsInfo = { fg = ui.info.hex },
    DapUIBreakpointsCurrentLine = { fg = ui.warning.hex, bold = true },
    DapUIBreakpointsDisabledLine = { fg = bg.fg_tertiary.hex },

    DapUIDecorationLine = { bg = panel_bg },
    DapUIPlayPause = { fg = ui.success.hex },
    DapUIRestart = { fg = ui.info.hex },
    DapUIStop = { fg = ui.error.hex },
    DapUIUnavailable = { fg = bg.fg_tertiary.hex },
  }
end

return M
