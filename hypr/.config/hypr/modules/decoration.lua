local colors = dofile("/home/ardchst/.cache/matugen/hyprland.lua")

hl.config({
  decoration = {
    rounding = 5,
  },
  general = {
    gaps_out = 5, 15, 10, 5,
    col = {
      active_border = colors.accent;
      inactive_border = colors.outline_variant;
    }
  }
})
