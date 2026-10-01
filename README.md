# Swipe de 3 dedos entre escritorios, tipo macOS (Hyprland / Omarchy)

Deslizá tres dedos en el touchpad hacia los costados para cambiar de escritorio (workspace), con el contenido siguiendo al dedo como en macOS.

No hace falta instalar nada: es configuración nativa de Hyprland.

## Omarchy / Hyprland con config en Lua

Agregá a `~/.config/hypr/input.lua` (ver [`input.lua`](input.lua)):

```lua
hl.config({
  input = {
    touchpad = {
      natural_scroll = true, -- scroll natural, como macOS
      tap_to_click = true,   -- tocar = clic
    },
  },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
```

## Hyprland con `hyprland.conf` (0.51+)

Ver [`gestures.conf`](gestures.conf):

```ini
input {
    touchpad {
        natural_scroll = true
        tap-to-click = true
    }
}

gesture = 3, horizontal, workspace
```

Hyprland recarga la configuración solo al guardar. Más opciones: <https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/>

## Licencia

MIT
