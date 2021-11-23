# Rofi Metro
Windows 8-like theme for Rofi

## Start Screen
![Screenshot of Rofi mimicking Windows 8's Start Screen](screenshot1.png?raw=true "Start Screen")

A Rofi theme that mimicks Windows 8's Start screen UI.

```
rofi -show drun -theme start-screen.rasi
```

## Charms

![Screenshot of Rofi with the Charms-like bar open](screenshot2.png?raw=true "Charms bar")

A Charms bar-like Rofi theme with clickable and configurable buttons to launch programs.

```
chmod +x charms.sh
sh charms.sh
```

## How to install
```
git clone https://github.com/Dartegnian/rofi-metro ~/.config/rofi/rofi-metro
```

You may launch the start screen using:
```
rofi -show drun -theme $XDG_CONFIG_HOME/rofi/rofi-metro/start-screen.rasi
```

The charms bar by:
```
sh $XDG_CONFIG_HOME/rofi/rofi-metro/charms.sh
```

Ideally, you should have keybindings for these; or not, your choice. If the XDG variables aren't properly set and the theme shows an error, set your XDG variables properly or just replace `$XDG_CONFIG_HOME` with `~/.config`
