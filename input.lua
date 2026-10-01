-- Touchpad tipo macOS para Hyprland (config Lua / Omarchy).
hl.config({
  input = {
    touchpad = {
      -- Use natural (inverse) scrolling, like macOS.
      natural_scroll = true,

      -- Tap to click (one-finger tap = left click), like macOS.
      tap_to_click = true,
    },
  },
})

-- Three-finger horizontal swipe changes workspaces.
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
