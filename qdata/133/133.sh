#!/bin/zsh
echo '@reboot /bin/sleep 180 && /sbin/poweroff' |
  sudo crontab
