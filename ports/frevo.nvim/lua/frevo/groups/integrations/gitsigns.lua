-- Gitsigns highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local ui = palette.ui
  local bg = palette.base

  return {
    GitSignsAdd = { fg = ui.git_added.hex, bg = bg.bg_primary.hex },
    GitSignsChange = { fg = ui.git_modified.hex, bg = bg.bg_primary.hex },
    GitSignsDelete = { fg = ui.git_deleted.hex, bg = bg.bg_primary.hex },

    GitSignsAddLn = { fg = ui.git_added.hex, bg = style.blend(ui.git_added.hex, 0.08, bg.bg_primary.hex) },
    GitSignsChangeLn = { fg = ui.git_modified.hex, bg = style.blend(ui.git_modified.hex, 0.06, bg.bg_primary.hex) },
    GitSignsDeleteLn = { fg = ui.git_deleted.hex, bg = style.blend(ui.git_deleted.hex, 0.06, bg.bg_primary.hex) },

    GitSignsCurrentLineBlame = { fg = bg.fg_tertiary.hex, italic = true },
  }
end

return M
