-- Neo-tree highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui

  local bg_panel = style.blend(bg.bg_secondary.hex, 0.7, bg.bg_primary.hex)

  return {
    NeoTreeNormal = { fg = bg.fg_primary.hex, bg = bg_panel },
    NeoTreeNormalNC = { fg = bg.fg_primary.hex, bg = bg_panel },
    NeoTreeEndOfBuffer = { fg = bg_panel, bg = bg_panel },
    NeoTreeCursorLine = { bg = style.blend(ui.accent.hex, 0.15, bg_panel) },
    NeoTreeIndentMarker = { fg = ui.indent_guide.hex },
    NeoTreeExpander = { fg = ui.accent.hex },

    NeoTreeGitAdded = { fg = ui.git_added.hex },
    NeoTreeGitModified = { fg = ui.git_modified.hex },
    NeoTreeGitDeleted = { fg = ui.git_deleted.hex },
    NeoTreeGitConflict = { fg = ui.git_conflict.hex },
    NeoTreeGitUntracked = { fg = ui.info.hex },

    NeoTreeDirectoryName = { fg = ui.accent.hex, bold = true },
    NeoTreeDirectoryIcon = { fg = ui.accent.hex },
    NeoTreeRootName = { fg = ui.accent.hex, bold = true },
    NeoTreeFileName = { fg = bg.fg_primary.hex },
    NeoTreeFileNameOpened = { fg = ui.accent.hex, italic = true },
    NeoTreeSymbolicLinkTarget = { fg = palette.syntax.cyan.hex },

    NeoTreeTitleBar = { fg = bg.bg_primary.hex, bg = ui.accent.hex, bold = true },
    NeoTreeFloatBorder = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },

    NeoTreeTabActive = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    NeoTreeTabInactive = { fg = bg.fg_secondary.hex, bg = bg_panel },
    NeoTreeTabSeparatorActive = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },
    NeoTreeTabSeparatorInactive = { fg = ui.border_subtle.hex, bg = bg_panel },
  }
end

return M
