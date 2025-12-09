-- Core UI, diagnostics base, Treesitter base links, Diff, ANSI

local palette = require("frevo.palette")
local style = require("frevo.style")

local M = {}

---Build the base highlight groups.
---@return table<string, table>
function M.build()
  local p = palette
  local bg = p.base
  local syn = p.syntax
  local ui = p.ui

  -- Precompute blended accents for selections/current line respecting alpha.
  local selection_bg = style.blend(ui.selection.hex, ui.selection.alpha or 0.4, bg.bg_primary.hex)
  local current_line_bg = style.blend(ui.current_line.hex, ui.current_line.alpha or 0.5, bg.bg_primary.hex)

  return {
    -- Editor base
    Normal = { fg = bg.fg_primary.hex, bg = bg.bg_primary.hex },
    NormalFloat = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    FloatBorder = { fg = ui.border_subtle.hex, bg = bg.bg_secondary.hex },
    WinSeparator = { fg = ui.border_subtle.hex, bg = bg.bg_primary.hex },
    SignColumn = { fg = ui.line_number.hex, bg = bg.bg_primary.hex },
    LineNr = { fg = ui.line_number.hex, bg = bg.bg_primary.hex },
    CursorLineNr = { fg = ui.accent.hex, bg = bg.bg_primary.hex, bold = true },
    CursorLine = { bg = current_line_bg },
    CursorColumn = { bg = current_line_bg },
    ColorColumn = { bg = current_line_bg },
    Visual = { bg = selection_bg },
    Search = { fg = bg.fg_primary.hex, bg = ui.find_highlight.hex, bold = true },
    IncSearch = { fg = bg.bg_primary.hex, bg = ui.accent.hex, bold = true },
    MatchParen = { fg = ui.accent.hex, bold = true },

    -- UI elements
    Pmenu = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    PmenuSel = { fg = bg.fg_primary.hex, bg = ui.accent_active.hex },
    PmenuSbar = { bg = bg.bg_secondary.hex },
    PmenuThumb = { bg = ui.accent_active.hex },
    StatusLine = { fg = bg.fg_primary.hex, bg = bg.bg_secondary.hex },
    StatusLineNC = { fg = bg.fg_secondary.hex, bg = bg.bg_secondary.hex },
    VertSplit = { fg = ui.border_subtle.hex, bg = bg.bg_primary.hex },
    TabLine = { fg = bg.fg_secondary.hex, bg = bg.bg_secondary.hex },
    TabLineSel = { fg = bg.fg_primary.hex, bg = ui.accent.hex, bold = true },
    TabLineFill = { fg = bg.fg_secondary.hex, bg = bg.bg_secondary.hex },

    -- Text
    Title = { fg = syn.blue.hex, bold = true },
    Comment = { fg = syn.green.hex, italic = true },
    SpecialComment = { fg = syn.green.hex, italic = true },
    Todo = { fg = syn.yellow.hex, bold = true },
    Underlined = { fg = ui.accent.hex, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    -- Diagnostics (LSP virtual text + signs)
    DiagnosticError = { fg = ui.error.hex },
    DiagnosticWarn = { fg = ui.warning.hex },
    DiagnosticInfo = { fg = ui.info.hex },
    DiagnosticHint = { fg = syn.green.hex },
    DiagnosticOk = { fg = ui.success.hex },
    DiagnosticUnderlineError = { undercurl = true, sp = ui.error.hex },
    DiagnosticUnderlineWarn = { undercurl = true, sp = ui.warning.hex },
    DiagnosticUnderlineInfo = { undercurl = true, sp = ui.info.hex },
    DiagnosticUnderlineHint = { undercurl = true, sp = syn.green.hex },
    DiagnosticUnderlineOk = { undercurl = true, sp = ui.success.hex },

    -- LSP refs (base)
    LspReferenceText = { bg = selection_bg },
    LspReferenceRead = { bg = selection_bg },
    LspReferenceWrite = { bg = selection_bg },

    -- Diff
    DiffAdd = { fg = ui.git_added.hex, bg = style.blend(ui.git_added.hex, 0.1, bg.bg_primary.hex) },
    DiffChange = { fg = ui.git_modified.hex, bg = style.blend(ui.git_modified.hex, 0.08, bg.bg_primary.hex) },
    DiffDelete = { fg = ui.git_deleted.hex, bg = style.blend(ui.git_deleted.hex, 0.08, bg.bg_primary.hex) },
    DiffText = { fg = ui.git_modified.hex, bg = style.blend(ui.git_modified.hex, 0.15, bg.bg_primary.hex), bold = true },

    -- Git signs (defaults; plugins can override specifics)
    GitSignsAdd = { fg = ui.git_added.hex },
    GitSignsChange = { fg = ui.git_modified.hex },
    GitSignsDelete = { fg = ui.git_deleted.hex },

    -- Terminal ANSI
    Terminal = { fg = bg.fg_primary.hex, bg = bg.bg_primary.hex },
    TermCursor = { fg = bg.bg_primary.hex, bg = ui.accent.hex },
  }
end

return M
