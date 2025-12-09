-- Utility functions for the Frevo colorscheme.
-- Handles safe merges, validation and highlight application helpers.

local M = {}

---Deep-merge two tables (dst <- src).
---@param dst table
---@param src table
---@return table
function M.deep_extend(dst, src)
  for k, v in pairs(src) do
    if type(v) == "table" and type(dst[k]) == "table" then
      M.deep_extend(dst[k], v)
    else
      dst[k] = v
    end
  end
  return dst
end

---Apply highlight groups in bulk, ignoring non-highlight tables (e.g., lualine theme tables).
---@param groups table<string, table>
function M.apply_highlights(groups)
  for group, opts in pairs(groups) do
    if type(opts) == "table" and (
      opts.fg or opts.bg or opts.link or opts.underline or opts.bold or opts.italic or opts.standout
      or opts.reverse or opts.strikethrough or opts.undercurl or opts.blend or opts.sp
    ) then
      vim.api.nvim_set_hl(0, group, opts)
    end
  end
end

---Normalize palette lookups: returns hex string for a palette entry.
---@param color table|string
---@return string
function M.color_hex(color)
  if type(color) == "string" then
    return color
  end
  return color.hex
end

return M
