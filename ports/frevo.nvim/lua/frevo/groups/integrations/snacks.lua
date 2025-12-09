-- snacks.nvim (dashboard) highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui
  local panel = style.blend(bg.bg_secondary.hex, 0.7, bg.bg_primary.hex)

  return {
    SnacksDashboardHeader = { fg = ui.accent.hex, bold = true },
    SnacksDashboardFooter = { fg = bg.fg_secondary.hex, italic = true },
    SnacksDashboardProject = { fg = p.syntax.yellow.hex },
    SnacksDashboardKey = { fg = ui.info.hex },
    SnacksDashboardButton = { fg = ui.accent.hex, bold = true },
    SnacksDashboardIcon = { fg = ui.info.hex },
    SnacksDashboardDir = { fg = ui.accent.hex },
    SnacksDashboard = { fg = bg.fg_primary.hex, bg = panel },
  }
end

return M
