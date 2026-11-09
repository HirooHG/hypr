---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER"
local config = "~/dotfiles/source/hypr"

hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("discord"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obs"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("bitwarden"))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("firefox & steam & discord"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("Ryujinx"))

hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(config .. "/scripts/wallpaper_picker"))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + E", hl.dsp.exit())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + CTRL + A", hl.dsp.exec_cmd("hyprctl dispatch fullscreen 1"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("hyprctl dispatch fullscreen 2"))

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
  local key = i % 10
  local code = "code:" .. key + 9
  hl.bind(mainMod .. " + " .. code, hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. code, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"),
  { locked = true, repeating = true })
