-- Palette definition for the Frevo colorscheme.
-- Generated from .dev_docs/frevo_theme.yaml. Do not edit values manually.
-- All colors include HEX and OKLCH metadata for reference.

local palette = {
  meta = {
    name = "Frevo",
    description = "Vibrant dark theme inspired by Pernambuco's carnival nights, Brazil",
    author = "Renato Barros",
    version = "1.0.0",
    variant = "dark",
    accent = "blue",
  },

  base = {
    bg_primary = { hex = "#1A1F2E", oklch = { 0.15, 0.008, 260 }, name = "Background Primary" },
    bg_secondary = { hex = "#21283A", oklch = { 0.18, 0.01, 260 }, name = "Background Secondary" },
    bg_tertiary = { hex = "#2A3447", oklch = { 0.22, 0.015, 260 }, name = "Background Tertiary" },
    bg_elevated = { hex = "#2F3D5C", oklch = { 0.24, 0.015, 260 }, name = "Background Elevated" },
    fg_primary = { hex = "#F2F4F8", oklch = { 0.95, 0.01, 260 }, name = "Foreground Primary" },
    fg_secondary = { hex = "#B0B8CC", oklch = { 0.75, 0.02, 260 }, name = "Foreground Secondary" },
    fg_tertiary = { hex = "#6B7589", oklch = { 0.55, 0.03, 260 }, name = "Foreground Tertiary" },
  },

  syntax = {
    blue = { hex = "#4B9AFF", oklch = { 0.70, 0.22, 260.5 }, name = "Blue" },
    purple = { hex = "#D966FF", oklch = { 0.65, 0.26, 302.0 }, name = "Purple" },
    cyan = { hex = "#00A3E5", oklch = { 0.70, 0.158, 235.9 }, name = "Cyan" },
    green = { hex = "#7AD96A", oklch = { 0.75, 0.14, 142.0 }, name = "Green" },
    yellow = { hex = "#F0B000", oklch = { 0.75, 0.178, 91.3 }, name = "Yellow" },
    orange = { hex = "#FF6700", oklch = { 0.697, 0.203, 43.8 }, name = "Orange" },
    red = { hex = "#FF5B5F", oklch = { 0.65, 0.22, 26.7 }, name = "Red" },
  },

  ui = {
    accent = { hex = "#4B9AFF", oklch = { 0.70, 0.22, 260.5 }, name = "Accent Blue" },
    accent_hover = { hex = "#7AB6FF", oklch = { 0.80, 0.20, 260.5 }, name = "Accent Hover" },
    accent_active = { hex = "#2470D5", oklch = { 0.58, 0.24, 260.5 }, name = "Accent Active" },
    success = { hex = "#5FD94F", oklch = { 0.75, 0.20, 142.0 }, name = "Success" },
    warning = { hex = "#DAA445", oklch = { 0.78, 0.16, 75 }, name = "Warning" },
    error = { hex = "#FF5B5F", oklch = { 0.65, 0.22, 26.7 }, name = "Error" },
    info = { hex = "#00B7FF", oklch = { 0.737, 0.158, 235.9 }, name = "Info" },
    selection = { hex = "#2B4A7A", oklch = { 0.40, 0.10, 260 }, alpha = 0.4, name = "Selection Background" },
    find_highlight = { hex = "#C7A340", oklch = { 0.60, 0.15, 90 }, alpha = 0.5, name = "Find Match Highlight" },
    current_line = { hex = "#0F2851", oklch = { 0.20, 0.05, 260 }, alpha = 0.5, name = "Current Line Highlight" },
    border_subtle = { hex = "#1F3D68", oklch = { 0.30, 0.04, 260 }, name = "Border Subtle" },
    border_strong = { hex = "#3D5A8F", oklch = { 0.45, 0.08, 260 }, name = "Border Strong" },
    line_number = { hex = "#4A6083", oklch = { 0.45, 0.05, 260 }, name = "Line Numbers" },
    indent_guide = { hex = "#1A3558", oklch = { 0.28, 0.03, 260 }, name = "Indent Guides" },
    git_added = { hex = "#5FD94F", oklch = { 0.75, 0.20, 142.0 }, name = "Git Added" },
    git_modified = { hex = "#4B9AFF", oklch = { 0.70, 0.22, 260.5 }, name = "Git Modified" },
    git_deleted = { hex = "#FF5B5F", oklch = { 0.65, 0.22, 26.7 }, name = "Git Deleted" },
    git_conflict = { hex = "#D966FF", oklch = { 0.65, 0.26, 302.0 }, name = "Git Conflict" },
  },

  ansi = {
    black = { hex = "#0D2449", name = "ANSI Black", index = 0 },
    red = { hex = "#FF5B5F", name = "ANSI Red", index = 1 },
    green = { hex = "#5FD94F", name = "ANSI Green", index = 2 },
    yellow = { hex = "#F0B000", name = "ANSI Yellow", index = 3 },
    blue = { hex = "#4B9AFF", name = "ANSI Blue", index = 4 },
    magenta = { hex = "#D966FF", name = "ANSI Magenta", index = 5 },
    cyan = { hex = "#00A3E5", name = "ANSI Cyan", index = 6 },
    white = { hex = "#F2F4F8", name = "ANSI White", index = 7 },
    bright_black = { hex = "#6B7589", name = "ANSI Bright Black", index = 8 },
    bright_red = { hex = "#FF8A8D", name = "ANSI Bright Red", index = 9 },
    bright_green = { hex = "#8EFF7D", name = "ANSI Bright Green", index = 10 },
    bright_yellow = { hex = "#FFE566", name = "ANSI Bright Yellow", index = 11 },
    bright_blue = { hex = "#7AB6FF", name = "ANSI Bright Blue", index = 12 },
    bright_magenta = { hex = "#EA9BFF", name = "ANSI Bright Magenta", index = 13 },
    bright_cyan = { hex = "#5DD4FF", name = "ANSI Bright Cyan", index = 14 },
    bright_white = { hex = "#FFFFFF", name = "ANSI Bright White", index = 15 },
  },

  textmate_scopes = {
    comment = { scope = "comment", color = "green", font_style = "italic" },
    string = { scope = "string", color = "cyan" },
    number = { scope = "constant.numeric", color = "orange" },
    boolean = { scope = "constant.language.boolean", color = "orange" },
    keyword = { scope = "keyword", color = "blue", font_style = "bold" },
    keyword_control = { scope = "keyword.control", color = "purple", font_style = "bold" },
    function_name = { scope = "entity.name.function", color = "cyan" },
    function_call = { scope = "meta.function-call", color = "cyan" },
    class_name = { scope = "entity.name.class", color = "yellow", font_style = "bold" },
    type = { scope = "entity.name.type", color = "yellow" },
    constant = { scope = "constant", color = "green" },
    variable = { scope = "variable", color = "fg_primary" },
    operator = { scope = "keyword.operator", color = "orange" },
    punctuation = { scope = "punctuation", color = "fg_secondary" },
    tag = { scope = "entity.name.tag", color = "blue" },
    attribute = { scope = "entity.other.attribute-name", color = "cyan" },
    property = { scope = "support.type.property-name", color = "cyan" },
    invalid = { scope = "invalid", color = "red", font_style = "bold" },
  },
}

return palette
