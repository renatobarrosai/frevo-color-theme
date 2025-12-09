-- leap.nvim highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local ui = p.ui
  local bg = p.base

  return {
    LeapMatch = { fg = bg.bg_primary.hex, bg = ui.accent.hex, bold = true },
    LeapLabelPrimary = { fg = ui.accent.hex, bg = bg.bg_primary.hex, bold = true },
    LeapLabelSecondary = { fg = p.syntax.orange.hex, bg = bg.bg_primary.hex, bold = true },
    LeapBackdrop = { fg = bg.fg_tertiary.hex },
  }
end

return M
