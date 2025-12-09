-- Treesitter-specific highlight adjustments for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local syn = palette.syntax
  local base = palette.base
  local ui = palette.ui

  return {
    ['@punctuation'] = { fg = base.fg_secondary.hex },
    ['@string'] = { fg = syn.cyan.hex },
    ['@string.regex'] = { fg = syn.orange.hex },
    ['@string.escape'] = { fg = syn.orange.hex },
    ['@string.special'] = { fg = syn.orange.hex },
    ['@character'] = { fg = syn.cyan.hex },
    ['@number'] = { fg = syn.orange.hex },
    ['@boolean'] = { fg = syn.orange.hex },
    ['@float'] = { fg = syn.orange.hex },
    ['@constant'] = { fg = syn.green.hex },
    ['@constant.builtin'] = { fg = syn.green.hex, bold = true },
    ['@constant.macro'] = { fg = syn.yellow.hex },
    ['@variable'] = { fg = base.fg_primary.hex },
    ['@variable.builtin'] = { fg = syn.purple.hex, italic = true },
    ['@variable.parameter'] = { fg = base.fg_primary.hex },
    ['@variable.member'] = { fg = syn.cyan.hex },
    ['@property'] = { fg = syn.cyan.hex },
    ['@field'] = { fg = syn.cyan.hex },
    ['@type'] = { fg = syn.yellow.hex },
    ['@type.builtin'] = { fg = syn.yellow.hex, italic = true },
    ['@type.definition'] = { fg = syn.yellow.hex },
    ['@type.qualifier'] = { fg = syn.purple.hex },
    ['@function'] = { fg = syn.cyan.hex },
    ['@function.builtin'] = { fg = syn.cyan.hex, bold = true },
    ['@function.call'] = { fg = syn.cyan.hex },
    ['@function.macro'] = { fg = syn.yellow.hex },
    ['@method'] = { fg = syn.cyan.hex },
    ['@method.call'] = { fg = syn.cyan.hex },
    ['@constructor'] = { fg = syn.yellow.hex },
    ['@operator'] = { fg = syn.orange.hex },
    ['@keyword'] = { fg = syn.blue.hex, bold = true },
    ['@keyword.function'] = { fg = syn.blue.hex, bold = true },
    ['@keyword.operator'] = { fg = syn.orange.hex },
    ['@keyword.return'] = { fg = syn.purple.hex, bold = true },
    ['@conditional'] = { fg = syn.purple.hex, bold = true },
    ['@repeat'] = { fg = syn.purple.hex, bold = true },
    ['@debug'] = { fg = syn.red.hex },
    ['@label'] = { fg = syn.blue.hex },
    ['@include'] = { fg = syn.blue.hex, bold = true },
    ['@exception'] = { fg = syn.red.hex },
    ['@tag'] = { fg = syn.blue.hex },
    ['@tag.attribute'] = { fg = syn.cyan.hex },
    ['@tag.delimiter'] = { fg = base.fg_secondary.hex },
    ['@markup.heading'] = { fg = syn.yellow.hex, bold = true },
    ['@markup.link'] = { fg = ui.accent.hex, underline = true },
    ['@markup.list'] = { fg = syn.orange.hex },
    ['@markup.strong'] = { bold = true },
    ['@markup.emphasis'] = { italic = true },
    ['@markup.raw'] = { fg = syn.cyan.hex },
    ['@markup.math'] = { fg = syn.orange.hex },
    ['@markup.raw.block'] = { fg = syn.cyan.hex, bg = palette.ui.border_subtle.hex },
    ['@module'] = { fg = syn.yellow.hex },
    ['@namespace'] = { fg = syn.yellow.hex },
    ['@symbol'] = { fg = syn.green.hex },
    ['@annotation'] = { fg = syn.yellow.hex },
    ['@attribute'] = { fg = syn.cyan.hex },
  }
end

return M
