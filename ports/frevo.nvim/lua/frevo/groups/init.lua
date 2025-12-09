-- Orchestrates Frevo highlight groups: base, syntax, LSP, Treesitter, integrations.

local base = require("frevo.groups.base")
local syntax = require("frevo.groups.syntax")
local lsp = require("frevo.groups.lsp")
local treesitter = require("frevo.groups.treesitter")
local util = require("frevo.util")

local M = {}

local function load_integrations()
  local modules = {
    "cmp",
    "lualine",
    "bufferline",
    "neo-tree",
    "telescope",
    "dap",
    "dapui",
    "toggleterm",
    "conform",
    "nvim-lint",
    "gitsigns",
    "fugitive",
    "leap",
    "comment",
    "which-key",
    "snacks",
    "render-markdown",
    "copilotchat",
  }

  local hls = {}
  for _, name in ipairs(modules) do
    local ok, mod = pcall(require, "frevo.groups.integrations." .. name)
    if ok and type(mod.get) == "function" then
      util.deep_extend(hls, mod.get())
    end
  end
  return hls
end

---Build all highlights (core + plugins).
---@param opts table|nil
---@return table<string, table>
function M.build(opts)
  opts = opts or { plugins = true }
  local highlights = {}
  util.deep_extend(highlights, base.build())
  util.deep_extend(highlights, syntax.get())
  util.deep_extend(highlights, lsp.get())
  util.deep_extend(highlights, treesitter.get())

  if opts.plugins ~= false then
    util.deep_extend(highlights, load_integrations())
  end

  return highlights
end

return M
