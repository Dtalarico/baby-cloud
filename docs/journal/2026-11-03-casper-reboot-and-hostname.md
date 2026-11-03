# CASPER-01 engineering journal — 2026-11-03

The author rebooted CASPER-01 over SSH using `sudo systemctl reboot`. The SSH connection closed as expected; the author reconnected successfully at `192.168.1.76`.

A warning from sudo said the hostname CASPER-01 could not be resolved. `hostnamectl` confirmed the static hostname was CASPER-01, but `/etc/hosts` still mapped `127.0.1.1` to raspberrypi. The author edited the hosts file to map `127.0.1.1` to CASPER-01. `sudo whoami` then returned `root` without the warning.

The author used `ip -br addr` to verify `eth0` was UP with `192.168.1.76/24` and `wlan0` was DOWN. We distinguished the SSH pseudoterminal from the local HDMI virtual console, and the loopback hostname mapping from the LAN address.

Unresolved: Windows `.local` name resolution and the second node's commissioning. The author's commands and screenshots supplied the evidence; this journal was drafted with AI assistance. No credentials are included.
