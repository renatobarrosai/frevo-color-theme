-- CopilotChat.nvim highlights for Frevo.

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

function M.get()
  local p = palette
  local bg = p.base
  local ui = p.ui

  local panel = style.blend(bg.bg_secondary.hex, 0.65, bg.bg_primary.hex)

  return {
    CopilotChatNormal = { fg = bg.fg_primary.hex, bg = panel },
    CopilotChatHeader = { fg = ui.accent.hex, bold = true },
    CopilotChatBorder = { fg = ui.border_subtle.hex, bg = panel },
    CopilotChatPrompt = { fg = ui.info.hex },
    CopilotChatUser = { fg = ui.accent.hex, bold = true },
    CopilotChatAssistant = { fg = ui.info.hex },
    CopilotChatSeparator = { fg = ui.border_subtle.hex },
  }
end

return M
