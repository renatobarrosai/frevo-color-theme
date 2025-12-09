-- Frevo colorscheme entrypoint.
-- Applies base highlights and plugin integrations.

local palette = require("frevo.palette")
local groups = require("frevo.groups")
local util = require("frevo.util")
local config = require("frevo.config")

local M = {}

---Apply terminal ANSI colors.
local function set_terminal_colors()
  local ansi = palette.ansi
  vim.g.terminal_color_0 = ansi.black.hex
  vim.g.terminal_color_1 = ansi.red.hex
  vim.g.terminal_color_2 = ansi.green.hex
  vim.g.terminal_color_3 = ansi.yellow.hex
  vim.g.terminal_color_4 = ansi.blue.hex
  vim.g.terminal_color_5 = ansi.magenta.hex
  vim.g.terminal_color_6 = ansi.cyan.hex
  vim.g.terminal_color_7 = ansi.white.hex
  vim.g.terminal_color_8 = ansi.bright_black.hex
  vim.g.terminal_color_9 = ansi.bright_red.hex
  vim.g.terminal_color_10 = ansi.bright_green.hex
  vim.g.terminal_color_11 = ansi.bright_yellow.hex
  vim.g.terminal_color_12 = ansi.bright_blue.hex
  vim.g.terminal_color_13 = ansi.bright_magenta.hex
  vim.g.terminal_color_14 = ansi.bright_cyan.hex
  vim.g.terminal_color_15 = ansi.bright_white.hex
end

---Setup Frevo colorscheme.
---@param opts table|nil Optional overrides: { plugins = true|false }
function M.setup(opts)
  config.apply(opts)

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "frevo"

  local highlights = groups.build({ plugins = config.plugins })
  util.apply_highlights(highlights)
  set_terminal_colors()
end

return M
