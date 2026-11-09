local config = "~/dotfiles/config/hypr"
local background = "witch.gif"
------------------
---- MONITORS ----
------------------
hl.monitor({
  output   = "",
  mode     = "3440x1440@144",
  position = "auto",
  scale    = "auto",
})

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("dunst")
  hl.exec_cmd("wl-clip-persist --clipboard regular & wl-paste --watch cliphist store")
  hl.exec_cmd("pkill xdg-desktop-portal && dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("/usr/lib/xdg-desktop-portal & /usr/lib/xdg-desktop-portal-hyprland")
  hl.exec_cmd("pipewire & pipewire-pulse & wireplumber")
  hl.exec_cmd(
    "awww-daemon & awww img -t any --transition-bezier 0.0,0.0,1.0,1.0 --transition-duration .8 --transition-step 255 --transition-fps 60 " ..
    config .. "/wallpapers/" .. background)
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

require(config .. "/binds")
require(config .. "/config")
