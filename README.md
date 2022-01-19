# Rofi Metro
Windows 8-like theme for Rofi

## Start Screen
![Screenshot of Rofi mimicking Windows 8's Start Screen](screenshot1.png?raw=true "Start Screen")

A Rofi theme that mimicks Windows 8's Start screen UI.

```
rofi -show drun -theme start-screen.rasi
```

The tiles currently don't work because there isn't a script that handles their custom keyboard triggers. Pretty sure I have to write a script that functions *closely* to `drun` and use that as a modi or something.

TL;DR tiles don't work, yet.

## Charms

![Screenshot of Rofi with the Charms-like bar open](screenshot2.png?raw=true "Charms bar")

A Charms bar-like Rofi theme with clickable and configurable buttons to launch programs.

```
chmod +x charms.sh
sh charms.sh
```

The time also doesn't update by the minute. Somehow Rofi doesn't support dynamic/changing variables nor does it have an interval for refreshing results with inputs.

## How to install
```
git clone https://github.com/Dartegnian/rofi-metro ~/.config/rofi/rofi-metro
```

You may launch the start screen using:
```
rofi -show drun -theme ~/.config/rofi/rofi-metro/start-screen.rasi
```

Enable the charms bar by:
```
chmod +x charms.sh
```

Open the charms bar by:
```
sh ~/.config/rofi/rofi-metro/charms.sh
```

Ideally, you should have keybindings for these; or not, your choice.

## Why
I like Windows 8.
