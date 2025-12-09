-- conform.nvim highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local ui = palette.ui
  return {
    ConformInfo = { fg = ui.info.hex },
    ConformWarn = { fg = ui.warning.hex },
    ConformError = { fg = ui.error.hex },
  }
end

return M
