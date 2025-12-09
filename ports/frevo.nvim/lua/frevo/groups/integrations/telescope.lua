-- Telescope highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui
  local border = ui.border_subtle.hex

  return {
    TelescopeNormal = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    TelescopeBorder = { fg = border, bg = bg.bg_secondary.hex },
    TelescopePromptNormal = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    TelescopePromptBorder = { fg = border, bg = bg.bg_secondary.hex },
    TelescopePromptPrefix = { fg = ui.accent.hex },
    TelescopePromptTitle = { fg = bg.bg_secondary.hex, bg = ui.accent.hex, bold = true },
    TelescopeResultsNormal = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    TelescopeResultsBorder = { fg = border, bg = bg.bg_secondary.hex },
    TelescopeResultsTitle = { fg = bg.bg_secondary.hex, bg = style.blend(ui.accent.hex, 0.6, bg.bg_secondary.hex), bold = true },
    TelescopePreviewNormal = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    TelescopePreviewBorder = { fg = border, bg = bg.bg_secondary.hex },
    TelescopePreviewTitle = { fg = bg.bg_secondary.hex, bg = ui.accent.hex, bold = true },
    TelescopeSelection = { bg = ui.accent_active.hex, fg = bg.fg_primary.hex },
    TelescopeSelectionCaret = { fg = ui.accent.hex },
    TelescopeMatching = { fg = ui.accent.hex, bold = true },
  }
end

return M
