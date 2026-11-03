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
