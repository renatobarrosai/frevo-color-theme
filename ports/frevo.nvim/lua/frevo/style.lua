-- Style helpers for the Frevo colorscheme.
-- Provides blending and light/dark adjustments while respecting OLED-safe backgrounds.

local M = {}

---Blend a HEX color with an alpha over a base HEX.
---This is used to apply transparency (selection/current line) safely.
---@param hex string Base hex color (e.g. "#1A1F2E")
---@param alpha number Alpha value between 0 and 1
---@param bg string Background hex color to blend over
---@return string blended hex color
function M.blend(hex, alpha, bg)
  local function hex_to_rgb(h)
    h = h:gsub("#", "")
    return tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16)
  end

  local function clamp(x)
    return math.min(255, math.max(0, math.floor(x + 0.5)))
  end

  local r, g, b = hex_to_rgb(hex)
  local br, bgc, bb = hex_to_rgb(bg)

  local nr = clamp((1 - alpha) * br + alpha * r)
  local ng = clamp((1 - alpha) * bgc + alpha * g)
  local nb = clamp((1 - alpha) * bb + alpha * b)

  return string.format("#%02X%02X%02X", nr, ng, nb)
end

---Slightly lighten a hex color by a given percentage (0-1).
---Used sparingly to derive hover/active states if needed.
---@param hex string
---@param amount number
---@return string
function M.lighten(hex, amount)
  local function hex_to_rgb(h)
    h = h:gsub("#", "")
    return tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16)
  end
  local function clamp(x)
    return math.min(255, math.max(0, math.floor(x + 0.5)))
  end

  local r, g, b = hex_to_rgb(hex)
  local nr = clamp(r + (255 - r) * amount)
  local ng = clamp(g + (255 - g) * amount)
  local nb = clamp(b + (255 - b) * amount)
  return string.format("#%02X%02X%02X", nr, ng, nb)
end

---Slightly darken a hex color by a given percentage (0-1).
---@param hex string
---@param amount number
---@return string
function M.darken(hex, amount)
  local function hex_to_rgb(h)
    h = h:gsub("#", "")
    return tonumber(h:sub(1, 2), 16), tonumber(h:sub(3, 4), 16), tonumber(h:sub(5, 6), 16)
  end
  local function clamp(x)
    return math.min(255, math.max(0, math.floor(x + 0.5)))
  end

  local r, g, b = hex_to_rgb(hex)
  local nr = clamp(r * (1 - amount))
    local ng = clamp(g * (1 - amount))
    local nb = clamp(b * (1 - amount))
  return string.format("#%02X%02X%02X", nr, ng, nb)
end

return M
