# Caspar first headless boot — inspection and provisioning log

Date: 2026-11-01
Status: INSPECTED; provisioning PROPOSED, not executed; first boot NOT VERIFIED.

## Objective
Attempt the first headless boot of Caspar (Raspberry Pi 4) using its supplied/preinstalled microSD card, while preserving the original installation and recording decisions and evidence for future review.

## Observed / user-confirmed evidence
- User reports microSD is currently in a Windows laptop; File Explorer identifies the visible FAT boot partition as `bootfs (E:)`.
- Screenshots show `overlays/`, Raspberry Pi device-tree files, `bootcode.bin`, and `cmdline.txt` in the root of `E:\`; File Explorer reports 38 root items.
- A Windows search of `bootfs (E:)` for `userconf` returned zero matches. User also reports no `ssh` or `ssh.txt` file. These observations do NOT prove whether SSH or a login account is configured on the Linux root partition.
- File Explorer's **File name extensions** option appeared enabled in the screenshot.
- User confirms Ethernet cabling is already connected to the network switch (NERV); Pi power remains off and microSD has not been inserted into the Pi.
- User states the microSD came preinstalled, and Raspberry Pi Imager was not used by the user.
- Previously inspected boot-files archive was approximately 71.9 MB; this is **not** the whole OS installation. The Linux root filesystem is expected on another partition not ordinarily readable in Windows.
- Earlier inspection noted `cmdline.txt` includes `init=/usr/lib/raspberrypi-sys-mods/firstboot`; first-boot behavior and success are not yet verified.

## Engineering reasoning
- Use wired Ethernet first to avoid introducing Wi-Fi provisioning as another variable.
- Avoid reimaging or modifying the supplied microSD until its state and the account/SSH provisioning path are understood.
- A boot-partition `ssh` marker may enable SSH on Raspberry Pi OS, but by itself does not guarantee that an account with known credentials exists.
- The power supply's inline switch controls power but is not a graceful Linux shutdown. Once running, shut down Linux before removing power.

## Proposed next operations (not yet performed)
1. Identify a supported first-boot account and SSH provisioning method for this specific OS image/version.
2. Preserve a backup or appropriate evidence of the original microSD state before any write.
3. With user approval, make the minimal verified provisioning changes and record exact filenames/commands.
4. Safely eject microSD, insert into Caspar, power on, observe network/DHCP presence, and attempt SSH.
5. Record command output, results, errors, troubleshooting decisions, and final verified state. Do not claim success until observed.

## Evidence and limitations
Screenshots were reviewed in chat on 2026-11-01. They are not yet attached to this repository. This log distinguishes user reports and visible observations from untested assumptions.

## Disk Management verification — 2026-11-01
- Screenshot of Windows Disk Management shows **Disk 2**, removable, online, **59.69 GB** total. This is the Caspar microSD based on the matching `bootfs (E:)` volume.
- Disk 2 layout: **512 MB FAT32 `bootfs (E:)`**, **4.93 GB healthy primary partition** (filesystem type not confirmed in Windows), **54.25 GB unallocated**. The unallocated space may reflect an image awaiting first-boot expansion, but that is a hypothesis, not a verified fact.
- **Disk 1** is `Extreme SSD (D:)`, **931.48 GB exFAT**, with approximately **602.37 GB free**; selected as the proposed image backup destination.
- Planned backup: create a raw full-device image of Disk 2 on D:, expected to occupy roughly 59.69 GiB before compression. Verify source device identity and destination filename before initiating a read operation. No imaging operation performed yet.

## Backup destination created — 2026-11-01
- User screenshot verifies a directory on the external SSD: `D:\BABY CLOUD PROJECT\CASPAR PRE-INITIAL BOOT BACKUP\`.
- This user-chosen naming convention supersedes the earlier proposed `D:\Baby-Cloud-Backups\Caspar\` path. No renaming is needed.
- Rationale: searchable hierarchy with an explicit **pre-initial-boot** lifecycle state, distinguishing an untouched supplied image from later operational images.
- Proposed image filename: `caspar-pre-initial-boot-2026-11-01-v01.img` (proposal only; not yet created).
- **Status:** destination directory verified by screenshot; full-card image backup NOT YET CREATED or verified.

## Commissioning strategy clarification — 2026-11-01
**User-approved mission distinction:** Headless first-boot commissioning is a deliberate *learning objective* (SSH, network discovery, remote provisioning, diagnosis), not a hard dependency for the *mission objective* of bringing Caspar online. If headless commissioning is unsuccessful after reasonable troubleshooting, document evidence, lessons, and the decision to fall back to local monitor/keyboard setup; then enable remote administration afterward. Do not let the optional learning path derail operational commissioning. No boot attempt or fallback has yet been performed.


## 2026-11-02 — First powered boot, Ethernet reachability, and SSH diagnostic

**Status:** Raspberry Pi OS boot and network reachability OBSERVED; SSH login NOT ACHIEVED. This is a dated update to earlier pending statuses, not a rewrite of the November 1 observations.

### Backup evidence and accepted risk
- Author confirmed the backup was made using **Win32 Disk Imager**. Windows Properties screenshot showed the individual file `CASPAR_2026-11-01_PRE-INITIAL-BOOT.img`, type Disc Image File (`.img`), under `D:\BABY CLOUD PROJECT\CASPAR PRE-INITIAL BOOT BACKUP\`, size **64,088,965,120 bytes**, created November 1 at 1:46 PM and modified at 3:29 PM. The screenshot establishes the file's identity, size, and presence, **not** a byte-for-byte verified recovery image.
- Author explicitly chose to proceed with initial boot without completing backup integrity verification, accepting that risk. No image restoration or card reflash was reported.

### First boot and power troubleshooting
- Initial attempts showed no visible status indication, switch-port link light, or TV signal. The author traced this to **lack of power from the initially used surge protector/power source**; changing to a working power connection resolved the problem. **Do not classify the Pi or Vilros kit as defective.**
- Casper-1 subsequently displayed **Welcome to Raspberry Pi Desktop**, with first-boot activity and spoken screen-reader/accessibility prompts. This is observed evidence of a bootable OS and functional video output; completion of the first-run wizard and creation of login credentials remain **UNVERIFIED**.
- A TV was temporarily connected for diagnostics. The author prefers eventual **headless SSH administration** and deferred further local keyboard setup until ready.

### Network and SSH observations
- AT&T gateway device list screenshot identified hostname **`raspberrypi`**, DHCP IPv4 **`192.168.1.76`**, status **on**, **Ethernet LAN-3**, negotiated **1000 Mbps full duplex**. This is consistent with the path through the already commissioned NERV switch, but is not a direct measurement of every intermediate link.
- NERV switch remained visible separately as `NERV_TL-SG116E_SWITCH` at `192.168.1.74`.
- From Windows laptop **REAPER-ONE-PC** (`192.168.1.64`, Wi-Fi), the author ran:
  ```powershell
  Test-NetConnection 192.168.1.76 -Port 22
  ```
  Screenshot showed **`PingSucceeded : True`**, **`PingReplyDetails (RTT) : 3 ms`**, **`TcpTestSucceeded : False`** and warning that TCP connection to port 22 failed. This verifies IP reachability and that TCP/22 was **not reachable at test time**; it does not by itself prove the exact cause (SSH disabled, setup incomplete, or other).
- Earlier boot-partition inspection found no `ssh`/`ssh.txt` marker and no `userconf` file. No marker creation, SSH enablement, successful authentication, or remote shell is reported.

### Decision, next checkpoint, and documentation boundary
- **Author's revised near-term plan:** prioritize getting Casper-1 through local first-run setup using TV/keyboard when ready; return to enabling SSH and headless login in a subsequent session. **Deliverable still open:** successful SSH login from REAPER-ONE-PC.
- The assistant's earlier focus on backup verification delayed the opportunity to prepare SSH and account provisioning before first boot. Record this as a workflow lesson; avoid treating the backup screenshot as proof of integrity or the absent marker as definitive proof of SSH service state.
- All evidence here is based on author statements and screenshots in conversation; original image and screenshots are not committed to the public repository. No passwords or credentials are recorded.


## 2026-11-02 — Local first-run account setup and update progress (later session)

**Status:** Local provisioning progressed through first-run wizard; updates IN PROGRESS at last report. SSH activation and remote login remain UNVERIFIED.

- Author connected a USB keyboard and used the TV to complete the Raspberry Pi OS first-run wizard instead of continuing to attempt headless-first provisioning. This was an explicit pragmatic fallback: get the first node operational, then apply the lessons to a planned headless setup of Balthasar-2.
- First-run **Set Country** screen showed United States, American English, Eastern time zone, and US keyboard selection.
- First-run **Create User** screen was reached. Author chose a familiar local username and password to avoid losing access. **No username was independently verified in this log and no password is recorded.** Do not commit credentials, even if provided in conversation.
- Wi-Fi setup was **skipped intentionally** because wired Ethernet through NERV was already functioning.
- Browser-selection screen was reached. Author chose **Firefox** as preferred browser; earlier discussion favored keeping Chromium installed as a compatibility fallback. Final browser removal state was not independently verified.
- The first-run wizard began installing software updates. Author repeatedly reported that the progress bar **continued moving**, though slowly. Completion and reboot were **not yet reported**.
- Working hypothesis: the supplied Samsung 64 GB microSD's random-write performance may contribute to lengthy package installation. This was **not measured**; no I/O, thermal, or network bottleneck was established.
- Future design preference stated by author: move the operating system to a **dedicated USB 3.0 SSD per node** when appropriate, then compare performance and retain an appropriate recovery path. This is a **proposal**, not implemented or approved procurement.
- Scope discipline: author prioritizes making nodes available as remotely administered Linux infrastructure, not hobbyist hardware assembly. Preassembled Vilros cases/heatsinks were deliberately chosen to avoid unnecessary tinkering.
- Engineering lesson: preserve intended-versus-observed state, document first-node friction, and use that knowledge to provision the next node more efficiently. Avoid claiming SSH works until a successful remote shell is observed.
- Conversation continuity note: author reported a phone conversation display issue, recovered the thread using the computer, and requested this repository update to preserve the operational checkpoint.


## 2026-11-02 — SSH enabled; administrator learning questions and remote-discovery objective

**Latest observed status:** The author reports that Raspberry Pi OS `raspi-config` displayed **“The SSH server is enabled”** after selecting Interface Options → SSH → Yes. This confirms the configuration utility's success message, **not yet a verified remote TCP connection or authenticated SSH session**. First-run OS updates finished, the machine rebooted, the desktop became available, and the author changed the compositor from Wayfire to Labwc as prompted. The local Linux terminal displayed `david-talarico@raspberrypi:~ $`. The machine is still using the hostname `raspberrypi` at this checkpoint; Casper-1 is the intended node identity.

### Questions raised by the author (preserve as instructional requirements)
1. **How would I independently discover that SSH uses TCP port 22, rather than relying on being told or memorizing it?**
2. **How would I discover the ports/services exposed by Casper-1 from REAPER-ONE-PC, without physically accessing Casper-1 or already knowing which port to probe?**
3. **What is the difference between a service listening locally and that service being reachable from another computer?**
4. **How do I learn practical diagnostic methods rather than merely following a predetermined command sequence?**

### Teaching and diagnostic methods discussed (examples, not claimed as executed)
- Local service-name registry: `grep '^ssh[[:space:]]' /etc/services` — indicates the *conventional* SSH port, not necessarily the actual listening port.
- Local Linux socket inspection: `sudo ss -tlnp` — shows listening TCP sockets and, with privileges, associated processes. The author understood this but deliberately deferred local inspection to prioritize remote administration.
- Remote Windows reachability test: `Test-NetConnection 192.168.1.76 -Port 22` — tests a **specified** TCP port; earlier result was `TcpTestSucceeded: False` **before** SSH enablement. No post-enablement result has yet been observed.
- Remote discovery tool discussed: `nmap -sV 192.168.1.76` — when Nmap is installed, scans common TCP ports and attempts service identification; **not executed or confirmed installed**.
- Intended remote login from REAPER-ONE-PC: `ssh david-talarico@192.168.1.76` — **not yet reported as executed successfully**. Passwords must never be committed.

### Learning objective and next verification
The author emphasized that the primary practical skill is **discovering and administering a remote host from another workstation**, not simply checking its services while physically present. Continue with the first SSH connection from REAPER-ONE-PC; inspect and verify the initial host-key prompt as appropriate, authenticate, and record observed command output before declaring remote commissioning complete. The author wishes to stop for the night after the first successful SSH login.

**Documentation principle:** Record the author's *questions and reasoning* alongside commands, failures, and verified results. Preserve earlier chronological entries without retroactively rewriting their historical status.


## 2026-11-02 — First SSH connection: troubleshooting, host-key trust, and learning journal

**Observed checkpoint:** On Windows REAPER-ONE-PC, the author attempted SSH to the Raspberry Pi at `192.168.1.76`. An initial command-entry typo placed an extra digit in the IP address (`1912.168.1.76` instead of `192.168.1.76`), causing a `Could not resolve hostname ... No such host is known` error. The author recognized this as human error after examining the command and error message. This was **not** evidence of a Raspberry Pi service or network failure.

After correcting the command to:
```powershell
ssh david-talarico@192.168.1.76
```
PowerShell displayed the first-connection SSH warning: **“The authenticity of host '192.168.1.76' can't be established”**, an ED25519 host-key fingerprint, and **`Are you sure you want to continue connecting (yes/no/[fingerprint])?`**. This is evidence that an SSH-speaking endpoint at that address responded and presented a host key. **No host-key acceptance, password authentication, or remote shell success has yet been reported.**

### Author's instructional questions and reasoning
- What does the `yes/no/[fingerprint]` prompt mean? Is `fingerprint` a third choice?
- What is a cryptographic host-key fingerprint, and why would an administrator compare it?
- If I have never accessed a remote machine before, **how would I know its fingerprint?**
- In a legitimate IT operation, would a trusted fingerprint or verification mechanism be provided?
- Why should I, as the person initiating an SSH session, worry about the identity of the *remote* machine? The author initially viewed the client as the active party and the remote computer as passive, reflecting a security-testing mindset.
- How can the process be explained clearly without burying the practical lesson under advanced terminology?

### Lessons distilled
1. The SSH host-key fingerprint is a compact identifier derived from the server's public host key. It is **not a password** and does not authenticate the human user.
2. The first-connection prompt offers `yes` (accept/store presented host key), `no` (reject), or the **actual fingerprint value** (not the literal word `fingerprint`) to confirm the displayed key.
3. Reading the fingerprint **from the same unverified SSH connection** does not independently establish the server's identity. A trusted second source is needed for stronger verification: local console, trusted provisioning record, provider management console, or trusted administrative channel.
4. A legitimate first-time connection may not have a preexisting trusted fingerprint record; a professional process should establish a trustworthy verification method or explicitly accept a trust-on-first-use decision.
5. The risk to the connecting administrator is an **impostor server**: a redirected connection could solicit credentials, mislead command execution, or receive data intended for the legitimate host. Host-key checking is about ensuring the *client* connects to the intended server; it is separate from the server checking the user's login credentials.
6. The author expressed comfort accepting the presented key on this self-controlled home network after the explanation. This is **an intention**, not yet evidence that `yes` was entered.
7. The Linux hostname remains `raspberrypi`; **Casper-1** is the planned node name and has not yet been applied as a hostname.

### Engineering-documentation principle
The author explicitly reaffirmed: **Baby Cloud is a learning journal as much as a capstone infrastructure project.** Preserve not just final working commands but the questions, wrong assumptions, troubleshooting decisions, corrected understanding, and boundaries of verification. Never record login passwords. Do not declare SSH commissioning complete until an authenticated remote shell is observed.


## 2026-11-02 — Authenticated SSH, CASPER-01 naming, and first visible remote-console demonstration

**Status: SSH REMOTE LOGIN VERIFIED; hostname change VERIFIED; remote console display change OBSERVED.** This dated entry supersedes the earlier pending checkpoints without rewriting them. Evidence consists of author-reported actions and screenshots reviewed during the session.

### SSH connection and authentication — REAPER-ONE-PC to Raspberry Pi
- Windows SSH client connected to `192.168.1.76` with `ssh david-talarico@192.168.1.76`.
- The author accepted the first-use ED25519 host key; Windows reported the host was permanently added to known hosts. The first attempt immediately after host-key acceptance closed on port 22; repeating the **same SSH command** reached the password prompt. The author insisted on repeating the simplest previously known command before escalating troubleshooting, a successful diagnostic choice.
- A first password entry returned `Permission denied, please try again`; a subsequent entry succeeded. The remote Debian GNU/Linux login banner and shell prompt `david-talarico@raspberrypi:~ $` were visible. This is verified **authenticated SSH access**, not merely network reachability. No passwords or private keys are recorded.
- SSH host-key acceptance is a trust-on-first-use action, not proof that the key was independently verified. Future professional practice: compare against a trusted fingerprint source when available.

### First remote administrative configuration — hostname
- From the authenticated remote Linux shell, the author executed:
  ```bash
  sudo hostnamectl set-hostname CASPER-01
  hostnamectl
  ```
- Screenshot of `hostnamectl` showed `Static hostname: CASPER-01`, Debian GNU/Linux 12 (bookworm), kernel `6.12.109+rpt-rpi-v8`, and `arm64` architecture. A later `hostname` command independently printed `CASPER-01`.
- The existing shell prompt continued to display `raspberrypi` in that session; the prompt is not the authoritative test of the updated hostname. Later `sudo` commands produced `sudo: unable to resolve host CASPER-01: Name or service not known`. **Outstanding issue:** investigate local hostname resolution (e.g., `/etc/hosts`) during a future session; the warning did not prevent the observed commands from running.
- Naming decision: **CASPER-01** is the applied, author-selected system hostname, even though earlier historical journal filenames and design references used *Caspar*. Preserve historical naming as written; append clarifying decisions rather than silently editing old records.

### Demonstration objective and failed attempts
**Actual user-defined objective:** Type commands on REAPER-ONE-PC and produce an unmistakably visible effect on the separate television physically connected to CASPER-01, to demonstrate remote control to Maggie. Merely displaying output in the SSH client's laptop terminal does **not** meet this objective.

The assistant repeatedly failed to keep that objective in focus, proposing unnecessarily complex or unsuitable commands. Preserve this as a process failure and teaching lesson:
- A proposed `DISPLAY=:0 notify-send ...` command was malformed/incorrectly entered and yielded `-bash: notify-send: command not found`; `which notify-send` returned no path. The author installed Debian package `libnotify-bin` using `sudo apt install libnotify-bin`.
- A later notification attempt using `DISPLAY=:0` and `DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus` executed `notify-send` but returned `org.freedesktop.DBus.Error.ServiceUnknown`: the `org.freedesktop.Notifications` service was not provided by any service file. **Do not claim the notification appeared.** Installing the CLI did not establish that a desktop notification service was available.
- An earlier `wall` broadcast visibly appeared in the SSH terminal and `who` showed the local console session and remote session from `192.168.1.64`; however, this did not meet the requested physical-TV demonstration.
- `echo $XDG_SESSION_TYPE` returned `tty` within the SSH shell. The author learned that an SSH terminal session is not automatically attached to the desktop graphical session.
- The assistant should have established a testable visual acceptance criterion first, checked installed utilities and the actual session environment, and chosen the simplest viable mechanism. The author explicitly requested a repeatable **discovery and troubleshooting method**, not only ready-made commands.

### Successful physical-console demonstration
From the authenticated SSH session on REAPER-ONE-PC, the author ran:
```bash
sudo sh -c 'echo "HELLO MAGGIE! BABY CLOUD IS ALIVE!" > /dev/tty1; chvt 1'
```
- This writes text to the Raspberry Pi's first virtual console (`/dev/tty1`) and switches the Pi's active physical virtual terminal to console 1 (`chvt 1`). A photograph showed the television changed from the graphical desktop to a black text-console display. **Physical display switching was observed**; the photograph was taken from a distance, so exact legibility of every displayed line was not independently confirmed.
- The author then **independently modified and repeated** the same working command with a personalized affectionate message to Maggie, retaining the redirection and `chvt 1` mechanism. Screenshot showed the modified command returned to the remote shell prompt, again with the nonfatal hostname-resolution warning. This is an important progression from copying a command to adapting it.
- A virtual console is not a desktop popup. Remote SSH commands run on CASPER-01, but their output normally returns to the SSH client; explicit redirection or control of the remote display is needed to affect the TV.
- **Future restoration consideration:** The command switched the Pi away from its graphical desktop; a future session should determine the active graphical virtual terminal before switching back. Do not assume a specific VT number without checking.

### Learning objectives and professional practice to retain
1. Begin with a plain-language acceptance criterion: what observable result counts as success, and **where** must it appear?
2. Distinguish client-side output, remote shell execution, remote text consoles, and the remote graphical desktop.
3. Investigate tool availability with `command -v <name>` or `which <name>`, identify the supplying package, and verify the relevant background service before relying on it.
4. Treat error text as diagnostic evidence: `command not found` (tool unavailable), `ServiceUnknown` (D-Bus service unavailable), and `unable to resolve host` (local name-resolution issue) point to different subsystems.
5. Explain **how an administrator would discover a command**, consult documentation, choose the least-complex test, interpret its output, and escalate only if necessary.
6. Maintain append-only chronology with observed facts separated from assumptions, attempts from successes, and unresolved follow-ups from completed work.
7. Record this session as both an infrastructure milestone and a learning milestone: first authenticated remote administration, first verified hostname change, first remote-induced physical display change, and first independent adaptation of a successful remote-display command.

**End-of-night checkpoint:** CASPER-01 remotely accessible over SSH at last verified test; hostname configured; remote physical display control demonstrated. Follow-up tasks (not completed): investigate hostname resolution, restore/check graphical display state as needed, and develop a reproducible remote desktop/notification method only if genuinely required. No credentials are committed.
