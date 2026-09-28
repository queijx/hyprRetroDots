require("conf.animations")
require("conf.autostart")
require("conf.keybinding")
require("conf.misc")
require("conf.setup")
require("conf.theme")
require("conf.windowrules")



hl.env("XCURSOR_SIZE", "14")
hl.env("HYPRCURSOR_SIZE", "14")



hl.config({
  ecosystem = {
    enforce_permissions = true,
  },
})

hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")