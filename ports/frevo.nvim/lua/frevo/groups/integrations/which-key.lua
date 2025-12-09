-- which-key highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui
  return {
    WhichKey = { fg = ui.accent.hex, bold = true },
    WhichKeyGroup = { fg = p.syntax.yellow.hex },
    WhichKeyDesc = { fg = bg.fg_primary.hex },
    WhichKeySeperator = { fg = bg.fg_secondary.hex },
    WhichKeySeparator = { fg = bg.fg_secondary.hex },
    WhichKeyFloat = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    WhichKeyBorder = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },
  }
end

return M
