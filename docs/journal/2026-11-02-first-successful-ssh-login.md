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
