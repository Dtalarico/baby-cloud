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
