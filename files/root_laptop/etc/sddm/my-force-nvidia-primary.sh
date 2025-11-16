#!/bin/sh
# https://docs.fedoraproject.org/en-US/quick-docs/set-nvidia-as-primary-gpu-on-optimus-based-laptops/
# value taken from `xrandr --listproviders`
xrandr --setprovideroutputsource modesetting NVIDIA-G0
xrandr --auto