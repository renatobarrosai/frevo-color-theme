-- nvim-lint highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local ui = palette.ui
  return {
    NvimLintError = { fg = ui.error.hex },
    NvimLintWarn = { fg = ui.warning.hex },
    NvimLintInfo = { fg = ui.info.hex },
    NvimLintHint = { fg = palette.syntax.green.hex },
  }
end

return M
