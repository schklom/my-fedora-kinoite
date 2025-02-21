# Summary of files
- [/var/log/usbguard/usbguard-audit.log](root/var/log/usbguard/usbguard-audit.log) -> default log file otherwise `usbguard` crashes on start
- [/etc/systemd/journald.conf.d/max_size.conf](root/etc/systemd/journald.conf.d/max_size.conf) -> avoid a journald log file that grows large
- [/etc/sysctl.d/10-ip6-privacy.conf](root/etc/sysctl.d/10-ip6-privacy.conf) -> ipv6 privacy addresses
- [/etc/systemd/system/rpm-ostreed.service.d/lower_resources.conf](root/etc/systemd/system/rpm-ostreed.service.d/lower_resources.conf) -> stop freezing the system when `rpm-ostree upgrade`
- ~~[/etc/systemd/system/rpm-ostreed-automatic.timer.d/disable-auto-updates.conf](root/etc/systemd/system/rpm-ostreed-automatic.timer.d/disable-auto-updates.conf) -> disable system auto-updates. This one cannot be disabled (service not found) by a bluebuild module, so this will have to do~~ (file is commented)
- [/etc/rpm-ostreed.conf](root/etc/rpm-ostreed.conf) -> only check system updates
- [/etc/screenrc](root/etc/screenrc) -> Disable the alternate screen buffer to allow Konsole's scrollbar to function, and Increase the default scrollback buffer size to 10,000 lines
