-- comment.nvim highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local syn = palette.syntax
  return {
    Comment = { fg = syn.green.hex, italic = true },
  }
end

return M
