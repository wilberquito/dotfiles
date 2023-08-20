### Export and save shortcuts in GNOME

The file this is stored in is: ~/.config/dconf/user

There is an extension, [Extensions Sync - GNOME Shell Extensions](https://extensions.gnome.org/extension/1486/extensions-sync/)

You can also do this manually with `dconf` or `gsettings`...

For example to backup my custom keyboard shortcuts: (Keyboard > Keyboard Shortcuts > Custom Shortcuts)

```bash
$ dconf dump /org/gnome/ > gnome.custom.txt
```

To restore them:

```bash
cat gnome.custom.txt | dconf load /org/gnome/
```
