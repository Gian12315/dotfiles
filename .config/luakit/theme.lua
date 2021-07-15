--------------------------
-- Dracula luakit theme --
--------------------------

local theme = {}

local dracula = {
    background = "#282a36",
    currentline = "#44475a",
    selection = "#44475a",
    foreground = "#f8f8f2",
    comment = "#6272a4",
    cyan = "#8be9fd",
    green = "#50fa7b",
    orange = "#ffb86c",
    pink = "#ff79c6",
    purple = "#bd93f9",
    red = "#ff5555",
    yellow = "#f1fa8c"
}

-- Default settings
theme.font = "12px monospace"
theme.fg = dracula.foreground
theme.bg = dracula.background

-- Genaral colours
theme.success_fg = dracula.green
theme.loaded_fg = dracula.cyan
theme.error_fg = dracula.fg
theme.error_bg = dracula.red

-- Warning colours
theme.warning_fg = dracula.orange
theme.warning_bg = dracula.background

-- Notification colours
theme.notif_fg = dracula.foreground
theme.notif_bg = dracula.background

-- Menu colours
theme.menu_fg = dracula.foreground
theme.menu_bg = dracula.background
theme.menu_selected_fg = dracula.foreground
theme.menu_selected_bg = dracula.purple
theme.menu_title_bg = dracula.background
theme.menu_primary_title_fg = dracula.cyan
theme.menu_secondary_title_fg = dracula.cyan

theme.menu_disabled_fg = dracula.comment
theme.menu_disabled_bg = theme.menu_bg
theme.menu_enabled_fg = theme.menu_fg
theme.menu_enabled_bg = theme.menu_bg
theme.menu_active_fg = dracula.green
theme.menu_active_bg = theme.menu_bg

-- Proxy manager
theme.proxy_active_menu_fg = "#000"
theme.proxy_active_menu_bg = "#FFF"
theme.proxy_inactive_menu_fg = "#888"
theme.proxy_inactive_menu_bg = "#FFF"

-- Statusbar specific
theme.sbar_fg = dracula.foreground
theme.sbar_bg = dracula.background

-- Downloadbar specific
theme.dbar_fg = dracula.foreground
theme.dbar_bg = dracula.background
theme.dbar_error_fg = dracula.red

-- Input bar specific
theme.ibar_fg = dracula.foreground
theme.ibar_bg = dracula.background

-- Tab label
theme.tab_fg = "#888"
theme.tab_bg = "#222"
theme.tab_hover_bg = "#292929"
theme.tab_ntheme = "#ddd"
theme.selected_fg = "#fff"
theme.selected_bg = "#000"
theme.selected_ntheme = "#ddd"
theme.loading_fg = "#33AADD"
theme.loading_bg = "#000"

theme.selected_private_tab_bg = "#3d295b"
theme.private_tab_bg = "#22254a"

-- Trusted/untrusted ssl colours
theme.trust_fg = "#0F0"
theme.notrust_fg = "#F00"

-- Follow mode hints
theme.hint_font = "10px monospace, courier, sans-serif"
theme.hint_fg = "#fff"
theme.hint_bg = "#000088"
theme.hint_border = "1px dashed #000"
theme.hint_opacity = "0.3"
theme.hint_overlay_bg = "rgba(255,255,153,0.3)"
theme.hint_overlay_border = "1px dotted #000"
theme.hint_overlay_selected_bg = "rgba(0,255,0,0.3)"
theme.hint_overlay_selected_border = theme.hint_overlay_border

-- General colour pairings
theme.ok = {fg = "#000", bg = "#FFF"}
theme.warn = {fg = "#F00", bg = "#FFF"}
theme.error = {fg = "#FFF", bg = "#F00"}

-- Gopher page style (override defaults)
theme.gopher_light = {bg = "#E8E8E8", fg = "#17181C", link = "#03678D"}
theme.gopher_dark = {bg = "#17181C", fg = "#E8E8E8", link = "#f90"}

return theme

-- vim: et:sw=4:ts=8:sts=4:tw=80
