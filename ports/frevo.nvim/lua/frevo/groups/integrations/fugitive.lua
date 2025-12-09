-- Fugitive highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local ui = palette.ui
  local bg = palette.base
  return {
    fugitiveHeader = { fg = ui.accent.hex, bold = true },
    fugitiveHeading = { fg = ui.accent.hex, bold = true },
    fugitiveUntrackedHeading = { fg = ui.info.hex, bold = true },
    fugitiveStagedHeading = { fg = ui.git_added.hex, bold = true },
    fugitiveUnstagedHeading = { fg = ui.git_modified.hex, bold = true },
    fugitiveHelpHeader = { fg = bg.fg_primary.hex, bold = true },
    fugitiveHelpTag = { fg = ui.accent.hex },
  }
end

return M
