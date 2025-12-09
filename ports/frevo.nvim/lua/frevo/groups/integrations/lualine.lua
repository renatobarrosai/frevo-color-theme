-- Lualine theme for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui

  local function section(fg, bgc)
    return { fg = fg, bg = bgc }
  end

  return {
    normal = {
      a = section(bg.bg_primary.hex, ui.accent.hex),
      b = section(bg.fg_primary.hex, bg.bg_tertiary.hex),
      c = section(bg.fg_primary.hex, bg.bg_secondary.hex),
    },
    insert = {
      a = section(bg.bg_primary.hex, ui.info.hex),
      b = section(bg.fg_primary.hex, bg.bg_tertiary.hex),
      c = section(bg.fg_primary.hex, bg.bg_secondary.hex),
    },
    visual = {
      a = section(bg.bg_primary.hex, palette.syntax.purple.hex),
      b = section(bg.fg_primary.hex, bg.bg_tertiary.hex),
      c = section(bg.fg_primary.hex, bg.bg_secondary.hex),
    },
    replace = {
      a = section(bg.bg_primary.hex, palette.syntax.red.hex),
      b = section(bg.fg_primary.hex, bg.bg_tertiary.hex),
      c = section(bg.fg_primary.hex, bg.bg_secondary.hex),
    },
    command = {
      a = section(bg.bg_primary.hex, ui.warning.hex),
      b = section(bg.fg_primary.hex, bg.bg_tertiary.hex),
      c = section(bg.fg_primary.hex, bg.bg_secondary.hex),
    },
    inactive = {
      a = section(bg.fg_secondary.hex, bg.bg_secondary.hex),
      b = section(bg.fg_secondary.hex, bg.bg_secondary.hex),
      c = section(bg.fg_secondary.hex, bg.bg_secondary.hex),
    },
  }
end

return M
