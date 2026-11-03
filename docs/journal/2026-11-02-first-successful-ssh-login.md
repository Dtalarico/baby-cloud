# First successful remote SSH login — 2026-11-02

## Verified milestone
REAPER-ONE-PC connected to the first Raspberry Pi node at 192.168.1.76 using SSH. Screenshot shows a successful interactive Linux shell with prompt `david-talarico@raspberrypi:~ $`. The hostname is still `raspberrypi`; Casper-1 is the intended project name.

## Troubleshooting observations
The first attempt had an extra digit in the IP address, producing a hostname-resolution error. After correcting the address, the SSH server presented an ED25519 host-key fingerprint and a first-use trust prompt. The user accepted the host key; the initial connection then closed. Instead of escalating to verbose diagnostics, the user insisted on repeating the original command. The repeat reached password authentication. One password attempt was rejected; the next succeeded. No passwords are recorded.

## Learning questions and conclusions
The author asked how to discover service ports from another computer, how SSH host-key fingerprints are obtained, why a remote client should verify server identity, and how to proceed when the fingerprint is not already known. Lessons: remote discovery differs from local socket inspection; the host-key fingerprint helps identify the server; an impostor server can mislead the connecting administrator; and an independently trusted reference provides stronger verification than simply accepting the fingerprint presented over the same connection.

## Engineering method
The author explicitly prefers systematic, minimal troubleshooting: repeat the simplest command and inspect the result before adding diagnostic complexity. Baby Cloud serves as both a capstone infrastructure project and a learning journal; preserve questions, errors, corrections, and verified evidence.

## Next tasks
Configure the intended hostname and continue hardening and node provisioning in later sessions. The initial SSH commissioning objective is achieved.


## 2026-11-02 — First remote administrative change: hostname

**Observed evidence:** From the authenticated SSH session on REAPER-ONE-PC, the author executed `sudo hostnamectl set-hostname CASPER-01` and then `hostnamectl`. The output explicitly displayed `Static hostname: CASPER-01`, confirming the system hostname change. The same output identified Debian GNU/Linux 12 (bookworm), Linux kernel 6.12.109+rpt-rpi-v8, and arm64 architecture. The shell prompt continued to display `david-talarico@raspberrypi:~ $` in the existing session; this is not evidence that the static hostname change failed.

**Naming discrepancy to resolve:** The canonical node name in the repository is **Casper-1** (normally `casper-1` as a lowercase Linux hostname), whereas the actual configured static hostname shown is **`CASPER-01`** (uppercase and zero-padded). Preserve this observation; do not silently normalize or claim that the desired canonical hostname is already configured. A follow-up deliberate correction and verification is pending.

**Learning milestone:** This was the first verified administrative change to the Raspberry Pi performed remotely through SSH, rather than using its directly attached keyboard and screen. The author explicitly requested the result be recorded in the engineering and learning journal.
