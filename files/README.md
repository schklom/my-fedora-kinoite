# Summary of files
## Disk / CPU usage

- [/etc/systemd/journald.conf.d/max_size.conf](root/etc/systemd/journald.conf.d/max_size.conf) -> avoid a journald log file that grows large
- [/etc/systemd/system/rpm-ostreed-automatic.service.d/lower_resources.conf](root/etc/systemd/system/rpm-ostreed-automatic.service.d/lower_resources.conf) -> use less CPU and disk resources on `rpm-ostree upgrade`
- [/etc/systemd/system/flatpak-system-update.service.d/lower_resources.conf](root/etc/systemd/system/flatpak-system-update.service.d/lower_resources.conf) -> use less CPU and disk resources on the automatic `flatpak --system update`
- [/etc/systemd/system/flatpak-system-helper.service.d/lower_resources.conf](root/etc/systemd/system/flatpak-system-helper.service.d/lower_resources.conf) -> use less CPU and disk resources on `flatpak update`

## Not needed anymore, but nice to have available
- [/var/log/usbguard/usbguard-audit.log](root/var/log/usbguard/usbguard-audit.log) -> default log file otherwise `usbguard` crashes on start (not needed anymore since using Audit in usbguard configuration)
- [/etc/rpm-ostreed.conf](root/etc/rpm-ostreed.conf) -> ~~only check~~ stage system updates (not needed, stage is already the default)
- ~~[/etc/systemd/system/rpm-ostreed-automatic.timer.d/disable-auto-updates.conf](root/etc/systemd/system/rpm-ostreed-automatic.timer.d/disable-auto-updates.conf) -> disable system auto-updates. This one cannot be disabled (service not found) by a bluebuild module, so this will have to do~~ (file is commented)

## Miscellaneous
- [/etc/sysctl.d/10-ip6-privacy.conf](root/etc/sysctl.d/10-ip6-privacy.conf) -> ipv6 privacy addresses
- [/etc/screenrc](root/etc/screenrc) -> Disable the alternate screen buffer to allow Konsole's scrollbar to function, and increase the default scrollback buffer size to 10,000 lines
- [/usr/share/ublue-os/firstboot/yafti.yml](root/usr/share/ublue-os/firstboot/yafti.yml) -> YAFTI for first boot to remove Fedora Flatpak repository
- [/usr/lib/systemd/system/setup-grub.service](systemd/setup-grub.service) -> Custom GRUB configurations (currently only for timeout of 10 instead of 5s)
