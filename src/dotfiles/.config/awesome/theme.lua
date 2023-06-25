---------------------------
-- Default awesome theme --
---------------------------

-- foreground #979eab
-- background #282c34 cursor #cccccc
-- color0 #282c34
-- color1 #e06c75
-- color2 #98c379
-- color3 #e5c07b
-- color4 #61afef
-- color5 #be5046
-- color6 #56b6c2
-- color7 #979eab
-- color8 #393e48
-- color9 #d19a66
-- color10 #56b6c2
-- color11 #e5c07b
-- color12 #61afef
-- color13 #be5046
-- color14 #56b6c2
-- color15 #abb2bf
-- selection_foreground #282c34
-- selection_background #979eab
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = {}

theme.font          = "Hack 10"

theme.bg_normal     = "#282C34"
theme.bg_focus      = "#979EAB"
theme.bg_urgent     = "#E06C75"
theme.bg_minimize   = "#C678DD"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#979EAB"
theme.fg_focus      = "#282C34"
theme.fg_urgent     = "#282C34"
theme.fg_minimize   = "#ABB2BF"

theme.useless_gap   = dpi(10)
theme.border_width  = dpi(1)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
