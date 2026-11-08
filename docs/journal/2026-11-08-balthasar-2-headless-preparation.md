# BALTHASAR-2 — Headless commissioning preparation, 2026-11-08

**Status:** Preparation and read-only investigation in progress. No evidence of first boot, SSH configuration change, or successful connection.

## Purpose and project context
Prepare the second Raspberry Pi 4 4 GB Baby Cloud node, provisionally named Balthasar-2, for a fully headless first boot and remote administration, preserving its original vendor-preloaded Raspberry Pi OS card. CASPER-01 was previously commissioned by local first-run configuration followed by SSH; the author wishes to practice the headless-first provisioning route on Node 2.

## Starting evidence and actions
- **AUTHOR-REPORTED:** The Node 2 Samsung 64 GB microSD card is the original Vilros-supplied card and has **never been booted**. The card is inserted in a USB microSD reader attached to the author's older Windows computer.
- **AUTHOR-REPORTED WINDOWS OBSERVATION:** File Explorer identifies the mounted removable volume as **`bootfs (E:)`**. This does not alone prove exact physical disk identity, bootability, installed OS release, filesystem writeability, or the state of SSH and first-user configuration.
- **DOCUMENTARY EVIDENCE:** Vilros supported a preloaded Raspberry Pi OS microSD with the kit, but the original expected 32 GB differed from the two observed 64 GB cards. Node 1's earlier inspection showed a preloaded Raspberry Pi OS-derived image. Node 2's individual image has not yet been inspected.
- **ARCHIVAL GATE:** Using connected GitHub, assistant obtained the complete recursive `main` tree at `417d438de7c1b5c90e762715776a777a477ef7c3` (nontruncated, 24 tracked blobs) and read all 24 current repository files by path, including the SVG diagram and shell script. No inaccessible or unreviewable tracked items were reported.
- **NO HARDWARE CHANGE EXECUTED:** No marker file, user credential, imaging step, format, boot, or SSH login has been performed in the Node 2 setup in this session.

## Decisions and reasoning
- **APPROVED/RECONFIRMED by author:** Preserve and inspect the vendor-installed OS; do **not** reflash merely to enable SSH. The author wants to learn and perform the steps, with the assistant explaining each operation and documenting observations, questions, alternatives, and actual results.
- **PROPOSED, not executed:** If Node 2 proves to have a compatible Raspberry Pi OS image, use an empty no-extension `ssh` file in the FAT `bootfs` partition to enable SSH at first boot. Determine and use a supported first-user provisioning route (potentially `userconf.txt` with a secure password hash), rather than assuming the SSH marker establishes a login account. Official documentation and image specifics must be checked before writing.
- **Security:** No plaintext passwords, credentials, hash secrets, SSH private keys, or sensitive machine identifiers should be committed to this public repository.
- **Rollback:** Preserve the supplied card; a byte-for-byte backup may be appropriate before the first write if exact as-shipped restoration is desired. Do not infer backup fidelity from filename or size alone.

## Risks and unresolved questions
- `E:` identifies a mounted volume in this Windows session, not guaranteed unchanged across reinsertion. Confirm the physical removable disk, its capacity and partition layout, and inspect `issue.txt` and existing files before modifying it.
- The vendor image's OS version, initial account provisioning behavior, and SSH marker compatibility are **not yet verified on Node 2**.
- Device names and addresses remain unconfigured/unobserved; do not assume Balthasar-2 already uses a particular hostname or IP.
- The assistant cannot access the user's local USB card reader or filesystem; verification requires author-provided observations.

## Next exact task / authorization gate
**Read-only inspection:** In File Explorer inspect `bootfs (E:)` and check whether `issue.txt`, `ssh`, and `userconf.txt` exist; if available, open `issue.txt` and report its image identification line (without changing anything). Before any write, confirm the target is Node 2's microSD by Windows Disk Management removable disk size/partition map. Then review official first-boot configuration support for this specific image. Request separate confirmation before creating files. **No overwrite/format/reimage authorization has been given.**

## Authorship and assistance
The author supplied physical state and explicit preservation/documentation decisions. Assistant performed the connected GitHub archival review and drafted this engineering note. Device inspection beyond the mounted volume label remains author-led and unverified.


## 2026-11-08 — Read-only bootfs file-presence check

**AUTHOR-REPORTED WINDOWS OBSERVATION:** At mounted `bootfs (E:)` for presumed BALTHASAR-2 microSD, `issue.txt` is present; no file named `ssh` is visible; the author also reports no `user.conf.txt` (spoken filename). The expected Raspberry Pi first-user configuration file convention is **`userconf.txt` (no dot between `user` and `conf`)**; confirm the precise filename when reviewing the directory. These are file-presence observations, not proof that SSH is disabled or that no user exists. No file contents were provided.

**NEXT READ-ONLY CHECK:** Open `issue.txt` and report its nonsecret image-identification text. Confirm that `userconf.txt` (exact spelling) is absent. Before writes, positively verify removable disk identity; no microSD modifications have occurred in this session.


## 2026-11-08 — Image identification and voice-transcription correction

**AUTHOR-REPORTED FILE CONTENT (read-only):** `bootfs (E:)/issue.txt` contains:

```
Raspberry Pi reference 2023-12-05
Generated using pi-gen, https://github.com/RPi-Distro/pi-gen, 70cd6f2a1e34d07f5cba7047aea5b92457372e05, stage4
```

This matches the image identification recorded on CASPER-01's original card, but does not alone prove that Node 2 has precisely identical partition contents, boot health or account configuration. `stage4` is a pi-gen build stage, not an instruction to install a different OS.

**Author correction:** The previous report's phrase `user.conf.txt` was an *inaccurate voice-to-text transcription*. The author confirms the actual filename checks were correctly stated/performed. Do not treat the transcription as a misunderstanding of the `userconf.txt` spelling. Author reports neither the empty `ssh` marker nor `userconf.txt` was found in the visible bootfs directory. No data about those files' contents exists, because neither was observed present.

**Next safe verification before modifications:** Use Windows Disk Management to confirm which physical removable disk owns `bootfs (E:)`, verify approximate 64-GB-card capacity and boot partition, and explicitly exclude other attached disks. Proceed with headless first-user configuration planning only after identity and support are checked. No microSD files have been modified in this session.


## 2026-11-08 — Windows Disk Management identification

**AUTHOR-REPORTED, READ-ONLY OBSERVATION:** Windows Disk Management shows the card mounted as `bootfs (E:)` on **Disk 2**, total **59.69 GB**, with **512 MB FAT32 primary** (bootfs), **4.93 GB Healthy primary partition** (likely Linux root; Windows has not independently identified its filesystem), and **54.25 GB unallocated**. Layout is numerically consistent with the prior CASPER-01 original-card inspection, but this is not a byte-for-byte comparison or proof of device/card identity outside the present Windows session. The unallocated region must NOT be formatted; it is plausibly space reserved for first-boot root-filesystem expansion, which remains unverified until boot.

**EXTERNAL DOCUMENTATION CHECK:** Raspberry Pi official *Getting started* headless manual setup documents an empty `ssh` bootfs marker and `userconf.txt` with `username:encrypted-password`, where an appropriate encrypted password hash can be generated using `openssl passwd -6`; this method does not require overwriting the vendor-installed image. Reference: https://www.raspberrypi.com/documentation/computers/getting-started.html . Plan is to follow this supported method only after author authorization and availability of a safe local password-hash generator; never ask to transmit credentials or hashes to the assistant.

**CURRENT STATUS:** inspection only, no card write, no boot and no authenticated remote connection. **NEXT GATE:** author chooses whether to preserve an as-shipped full raw image before first modification or to accept modifying the original card; then configure SSH and user account on the verified `E:` boot partition with appropriate precautions and verification.


## 2026-11-08 — Author accepts proceeding without Node 2 raw-card backup

**APPROVED DECISION (author):** Proceed with preparation of BALTHASAR-2's original vendor-preloaded card **without first making a separate full-card image**. The author explicitly considered a backup, chose not to wait for another lengthy imaging operation, and cited possession of an earlier CASPER-01 backup and the two cards' matching image-identification text/partition layouts.

**TECHNICAL QUALIFICATION:** Matching `issue.txt` image build information and partition geometry do **not** prove cards are byte-for-byte identical. CASPER-01's earlier reported raw image has not been verified for source fidelity or restorability, and cannot be represented as a validated BALTHASAR-2 backup. Without a Node 2 as-shipped backup, exact recovery of its original individual contents may be unavailable if provisioning damages the card; reinstalling a compatible Raspberry Pi OS image is a possible rebuild path but not identical restoration.

**SCOPE OF AUTHORIZATION:** Author accepted omitting the backup and proceeding with cautious SSH-first boot preparation; this does **not** authorize flashing, formatting, repartitioning, or modifying unrelated storage. No Node 2 writes were observed or claimed at this checkpoint. Next operation should be narrowly specified, with correct target confirmed as Windows `bootfs (E:)`, and result verified by the author. Never place credentials or password hashes in the public repository.


## 2026-11-08 — SSH boot marker created on BALTHASAR-2

**EXECUTED, author-reported:** On old Windows workstation with Node 2 vendor microSD mounted at `bootfs (E:)`, author ran PowerShell `New-Item -Path E:\\ssh -ItemType File` (the prior guided command; exact command entry is inferred from the immediately preceding step and success report, not independently captured). The author reports PowerShell file listing with mode `-a---`, `LastWriteTime` around 4:11 PM local, `Length` **0**, and name **`ssh`** (speech transcription capitalization may differ). PowerShell output supports successful creation of an empty regular file with the requested name on the mounted volume. This is a **file-provisioning success**, NOT confirmation the Pi has booted or SSH listens on TCP 22.

**STATUS:** SSH marker creation EXECUTED and observed by author; first-user provisioning NOT YET EXECUTED; remote boot, network assignment and SSH login remain UNVERIFIED. No user credential or password hash recorded here. **NEXT:** Choose a supported secure on-Windows method for producing a Raspberry Pi OS-compatible `userconf.txt` username and password hash without pasting passwords or hashes into chat or committing them to GitHub. Verify the generated file's presence and safe contents locally before ejecting the card.


## 2026-11-08 — Existing WSL Ubuntu 24.04 launched for local credential preparation

**AUTHOR-REPORTED:** On the older Windows workstation, `wsl --list --verbose` showed default `Ubuntu-24.04`, state `Stopped`, version `2` (Windows Subsystem for Linux 2). The author launched it using `wsl -d Ubuntu-24.04`. After a blinking cursor, Ubuntu displayed an error substantially equivalent to `Failed to start the systemd user session for 'david-talarico'. See journalctl for more details`, followed by a once-daily login-message note about `~/.hushlogin`. A Bash shell prompt then appeared in the WSL filesystem view of `C:\Windows\System32` (`/mnt/c/Windows/System32`). Exact warning text and prompt are transcribed from author speech, not terminal capture.

**INTERPRETATION:** An interactive Linux shell appears available despite a user-level systemd session warning. This is not proof that all services started correctly or that OpenSSL is installed. The `.hushlogin` note is informational. The working directory is the Windows system directory because WSL inherited the PowerShell starting location; use `cd ~` before further commands. No password, password hash, or sensitive key is shared, and no provisioning file has yet been created.

**NEXT:** From inside WSL, check `openssl` availability without changing the Windows system directory or Node 2's microSD. Diagnose the systemd warning separately only if it interferes with the current goal.
