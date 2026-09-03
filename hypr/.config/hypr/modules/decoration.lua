local colors = dofile("/home/ardchst/.cache/matugen/hyprland.lua")

hl.config({
  decoration = {
    rounding = 5,
  },
  general = {
    col = {
      active_border = colors.accent;
      inactive_border = colors.outline_variant;
    }
  }
})
