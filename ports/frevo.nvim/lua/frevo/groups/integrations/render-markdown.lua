-- render-markdown.nvim highlights for Frevo.

local palette = require("frevo.palette")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui
  local syn = p.syntax

  return {
    RenderMarkdownH1 = { fg = syn.yellow.hex, bold = true },
    RenderMarkdownH2 = { fg = syn.yellow.hex, bold = true },
    RenderMarkdownH3 = { fg = syn.yellow.hex },
    RenderMarkdownH4 = { fg = syn.yellow.hex },
    RenderMarkdownH5 = { fg = syn.yellow.hex },
    RenderMarkdownH6 = { fg = syn.yellow.hex },

    RenderMarkdownCode = { fg = syn.cyan.hex, bg = bg.bg_secondary.hex },
    RenderMarkdownCodeInline = { fg = syn.cyan.hex, bg = bg.bg_secondary.hex },
    RenderMarkdownLink = { fg = ui.accent.hex, underline = true },
    RenderMarkdownUrl = { fg = ui.info.hex, underline = true },
    RenderMarkdownBullet = { fg = syn.orange.hex },
    RenderMarkdownQuote = { fg = bg.fg_secondary.hex, italic = true },
  }
end

return M
