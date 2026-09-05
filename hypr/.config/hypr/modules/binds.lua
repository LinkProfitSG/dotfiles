local mod = "SUPER "

-- Opening apps
hl.bind(mod .. "+ Q", hl.dsp.exec_cmd("alacritty"))
hl.bind(mod .. "+ O", hl.dsp.exec_cmd("brave-browser-stable"))

-- Actions
hl.bind("CONTROL + ALT + Q", hl.dsp.exit())
hl.bind("CONTROL + SHIFT + Q", hl.dsp.window.close())
hl.bind(mod .. "+ SHIFT + W", hl.dsp.exec_cmd("wallpaper-changer"))
hl.bind(mod .. "+ SHIFT + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
hl.bind(mod .. "+ CONTROL + SHIFT + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | tee ~/Pictures/Screenshots/$(date +%F-%T).png | wl-copy"))

-- Focus navigations
hl.bind(mod .. "+ H", hl.dsp.focus({ direction = "l" }))
hl.bind(mod .. "+ L", hl.dsp.focus({ direction = "r" }))
hl.bind(mod .. "+ J", hl.dsp.focus({ direction = "d" }))
hl.bind(mod .. "+ K", hl.dsp.focus({ direction = "u" }))
-- Window navigations
hl.bind(mod .. "+ CONTROL + SHIFT + H", hl.dsp.window.move({ workspace = "r-1"}))
hl.bind(mod .. "+ CONTROL + SHIFT + L", hl.dsp.window.move({ workspace = "r+1"}))
hl.bind(mod .. "+ CONTROL + ALT + L", hl.dsp.window.move({ monitor = "eDP-1" }))
hl.bind(mod .. "+ CONTROL + ALT + H", hl.dsp.window.move({ monitor = "HDMI-A-1" }))
hl.bind(mod .. "+ SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mod .. "+ SHIFT + L", hl.dsp.window.swap({ direction = "r" }))
hl.bind(mod .. "+ SHIFT + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind(mod .. "+ SHIFT + K", hl.dsp.window.swap({ direction = "u" }))

-- Change workspaces
hl.bind(mod ..  "+ CONTROL + H", hl.dsp.focus({ workspace = "r-1" }))
hl.bind(mod ..  "+ CONTROL + L", hl.dsp.focus({ workspace = "r+1" }))

-- Services
hl.bind(mod .. "+ SHIFT + Q",
  hl.dsp.exec_cmd("sh -c 'systemctl --user reset-failed waybar && systemctl --user restart waybar'")
)

-- Hardwares
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
