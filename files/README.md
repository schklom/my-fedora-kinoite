# Summary of files
- [/var/log/usbguard/usbguard-audit.log](files/root/var/log/usbguard/usbguard-audit.log) -> default log file otherwise `usbguard` crashes on start
- [/etc/journald.conf.d/max_size.conf](files/root/etc/journald.conf.d/max_size.conf) -> avoid a journald log file that grows large
- [/etc/sysctl.d/10-ip6-privacy.conf](files/root/etc/sysctl.d/10-ip6-privacy.conf) -> ipv6 privacy addresses
- [/etc/systemd/system/rpm-ostreed.service.d/lower_resources](files/root/etc/systemd/system/rpm-ostreed.service.d/lower_resources) -> stop freezing the system when `rpm-ostree upgrade`
