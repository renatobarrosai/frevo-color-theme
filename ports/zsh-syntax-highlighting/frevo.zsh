# Frevo colors for zsh-syntax-highlighting
# Source: theme/frevo-theme.yaml (palette unchanged)

# Core palette
local fg_primary="#F2F4F8"
local fg_secondary="#B0B8CC"
local fg_tertiary="#6B7589"
local accent="#4B9AFF"
local accent_hover="#7AB6FF"
local accent_active="#2470D5"
local success="#5FD94F"
local warning="#DAA445"
local error="#FF5B5F"
local info="#00B7FF"
local selection="#2B4A7A"
local border_subtle="#1F3D68"

# Map to zsh-syntax-highlighting styles
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Main highlighter groups
ZSH_HIGHLIGHT_STYLES[default]="fg=${fg_primary}"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=${error},bold"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=${accent},bold"
ZSH_HIGHLIGHT_STYLES[alias]="fg=${accent_hover}"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=${accent}"
ZSH_HIGHLIGHT_STYLES[function]="fg=${info}"
ZSH_HIGHLIGHT_STYLES[command]="fg=${fg_primary}"
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=${fg_primary}"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=${accent_active},bold"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=${border_subtle}"
ZSH_HIGHLIGHT_STYLES[autodirectory]="fg=${accent_hover}"
ZSH_HIGHLIGHT_STYLES[path]="fg=${info}"
ZSH_HIGHLIGHT_STYLES[path_prefix]="fg=${info}"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=${accent_active}"
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=${warning},bold"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=${accent}"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=${accent}"
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="fg=${fg_secondary}"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=${info}"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=${info}"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=${accent_active}"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=${accent_active}"
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="fg=${accent_active}"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=${accent_active}"
ZSH_HIGHLIGHT_STYLES[assignment]="fg=${accent_hover}"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=${warning}"
ZSH_HIGHLIGHT_STYLES[comment]="fg=${success},italic"
ZSH_HIGHLIGHT_STYLES[named-fd]="fg=${accent_hover}"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=${error},bold"
ZSH_HIGHLIGHT_STYLES[variable]="fg=${fg_primary}"
ZSH_HIGHLIGHT_STYLES[parameter-expansion]="fg=${accent_hover}"
ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=${accent}"
ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=${accent_hover}"
ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=${accent_active}"
ZSH_HIGHLIGHT_STYLES[bracket-level-4]="fg=${info}"
ZSH_HIGHLIGHT_STYLES[bracket-level-5]="fg=${success}"
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]="fg=${selection},bg=${fg_primary},bold"

# Pattern highlighter (example matches)
ZSH_HIGHLIGHT_PATTERNS+=('TODO|FIXME' "fg=${warning},bold")
ZSH_HIGHLIGHT_PATTERNS+=('ERROR|FAIL' "fg=${error},bold")
