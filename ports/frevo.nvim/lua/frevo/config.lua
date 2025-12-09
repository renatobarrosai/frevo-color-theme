-- User configuration for Frevo.

local M = {
  plugins = true,
}

---Merge user options into config.
---@param opts table|nil
function M.apply(opts)
  if not opts then
    return
  end
  for k, v in pairs(opts) do
    M[k] = v
  end
end

return M
