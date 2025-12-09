-- nvim-dap highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local ui = palette.ui
  local syn = palette.syntax
  return {
    DapBreakpoint = { fg = ui.error.hex },
    DapBreakpointCondition = { fg = ui.warning.hex },
    DapBreakpointRejected = { fg = ui.error.hex },
    DapLogPoint = { fg = syn.orange.hex },
    DapStopped = { fg = ui.warning.hex, bold = true },
  }
end

return M
