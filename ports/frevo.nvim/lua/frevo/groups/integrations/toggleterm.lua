-- toggleterm highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local bg = palette.base
  local ui = palette.ui

  return {
    ToggleTermNormal = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    ToggleTermBorder = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },
  }
end

return M
