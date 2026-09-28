local mainMod = "SUPER"

hl.bind(mainMod .. " + Return",     hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + Space",      hl.dsp.exec_cmd("pkill wofi || wofi --show drun"))
hl.bind(mainMod .. " + O",          hl.dsp.exec_cmd("kitty -e yazi"))


hl.bind(mainMod .. " + Backspace",  hl.dsp.window.close())

hl.bind(mainMod .. " + Comma",      hl.dsp.window.pseudo())
hl.bind(mainMod .. " + Period",     hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Semicolon",  hl.dsp.layout("togglesplit"))



hl.bind(mainMod .. " + Escape",         hl.dsp.exec_cmd("pkill waybar || waybar"))
hl.bind(mainMod .. " + SHIFT + Escape", hl.dsp.exec_cmd("pkill hyprpaper || hyprpaper"))

hl.bind(mainMod .. " + SHIFT + M",      hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(" ALT + F4 ",  hl.dsp.exec_cmd("pkill nwg-bar || nwg-bar"))



hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))



for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + P",          hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + P",  hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + ALT + up",     hl.dsp.focus({ workspace = "+1" }))
hl.bind(mainMod .. " + ALT + down",   hl.dsp.focus({ workspace = "-1" }))



hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })



hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })