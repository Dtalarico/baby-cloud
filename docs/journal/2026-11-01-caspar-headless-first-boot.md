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
