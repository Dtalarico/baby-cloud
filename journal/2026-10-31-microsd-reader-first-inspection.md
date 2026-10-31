# 2026-10-31 — MicroSD USB reader: first physical inspection (in progress)

**Status:** OBSERVED / NOT YET FUNCTIONALLY VERIFIED  
**Author:** Project owner, assisted with contemporaneous documentation by AI.  
**Project context:** First non-destructive media inspection for Baby Cloud's Raspberry Pi 4 commissioning; see [2026-10-31 OS commissioning strategy](../docs/decisions/2026-10-31-os-commissioning-strategy.md).

## Objective

Before using Raspberry Pi Imager or modifying either supplied 64 GB microSD card, identify the Vilros USB 3.0 microSD reader's card slot; then, in later separate tests, check whether the reader and a laptop USB port detect the card, and inspect the card's existing partitions/files without modifying them. The author has also considered testing the laptop's built-in card slot, but has not committed to doing so.

## Observation 1 — Finding the card slot

The author opened the small Vilros USB reader and removed its cap. Two photos shared during the session show the miniature black reader, its exposed USB Type-A plug, and the removed cap. The author initially could not tell where the microSD card should go and asked whether its opening was underneath the USB connector.

**Actual observation:** The reader's microSD insertion slot was not immediately obvious from the tiny design. On the photographs, a narrow dark opening is visible near the USB connector, but insertion direction and correct seating have **not yet been independently verified**. Do not treat the assistant's visual interpretation as a passed physical test.

**Why this matters:** Identifying the correct insertion slot and card orientation before applying force is particularly important for delicate removable media and connectors. The objective is to avoid damaging the card or reader during initial inspection.

## Tests not yet performed or reported

- microSD inserted and correctly seated: **not verified**
- USB reader recognized by Windows: **not tested**
- laptop built-in card reader recognized: **not tested**
- 64 GB card partitions/files or preload status: **unknown**
- any operating-system image flashed, Raspberry Pi powered on, or MPI workload executed: **not performed**

## Immediate safe next action

Visually confirm the microSD slot and card alignment without forcing insertion. Once the card is inserted correctly, test one reader/USB path at a time. Do not format, initialize, erase, or image the card during inspection; cancel any Windows format prompt. Record what Windows actually reports, including partition information from Disk Management when appropriate.

## Documentation boundary

This is an **in-progress observation**, not a successful hardware commissioning or completed test. Later outcomes should be added as dated, evidence-based observations, preserving this initial uncertainty.

**Governing principle:** The future must know what the past was thinking.

---

## Observation 2 — Card seating and Windows read-only file access (2026-10-31)

**Evidence source:** Author's sequential photographs/screenshots during this commissioning session. Image originals remain with the author and are **not yet present in this repository**; they may be attached to a later evidence manifest. This journal records only what is visible or reported, not full photo provenance.

- The author reported successfully inserting one supplied microSD card into the small Vilros USB reader; a follow-up photograph shows the card in its recessed slot. The user observed that the card fits in only one orientation. Mechanical seating is reported successful; no separate insertion-force measurement was made.
- The author plugged the reader into the old ASUS VivoBook laptop. A Windows 11 File Explorer screenshot displays **`bootfs (E:)`**, a populated directory listing, and **38 items** indicated in the details pane.
- Visible file names include **`overlays`**, multiple Raspberry Pi device-tree `.dtb` files, **`bootcode.bin`**, and **`cmdline.txt`**. The visible timestamps include dates in December 2023; these are file timestamps, **not conclusive evidence of OS installation date or release version**.
- **Verified from screenshot:** Windows can enumerate and read a visible FAT-style Raspberry Pi boot filesystem through the external USB reader. This supports a working USB-port/reader/card read path, but does **not** establish write operation, performance, total microSD capacity, partition scheme, complete Linux root filesystem, installed OS variant, successful Pi boot, or the condition of the laptop's internal SD slot.
- **Interpretation:** The card is **not blank**; it has Raspberry Pi boot files. A preloaded Pi OS image is plausible, but its exact version and completeness remain unknown.
- **Safety:** No formatting, initialization, partition deletion, flashing, or writes have been reported. Continue with **read-only Windows Disk Management observation**; cancel any initialize/format prompt and identify the approximately 64 GB removable disk by size/volume before interpreting its partition map.

**Current result:** External reader **PASS for Windows recognition and read access**; bootability and OS contents **UNVERIFIED**. Internal laptop reader **NOT TESTED**. The previous "not tested" lines above remain as the historical state at the time they were written; this dated update records the later evidence.

---

## Observation 3 — Windows Disk Management partition inspection (2026-10-31)

**Evidence:** Author-supplied photo of Windows Disk Management on the old ASUS VivoBook. Original photograph retained by author, not yet committed to this repository. This is a read-only observation; no modification was authorized or reported.

The screenshot shows **Disk 2**, removable, **59.69 GB**, online, identified as the microSD reader/card. Its partition map is visible:

| Disk 2 region | Displayed size | Windows observation |
|---|---:|---|
| `bootfs (E:)` | 512 MB | FAT32, Healthy (Primary Partition) |
| Next partition | 4.93 GB | Healthy (Primary Partition); Windows does not display a recognized filesystem |
| Remaining region | 54.25 GB | Unallocated |

**Interpretation, not yet verified:** This layout, together with the previously observed Raspberry Pi boot files, is consistent with a prewritten Raspberry Pi OS image whose Linux root partition has not yet been expanded. It does **not** prove which OS version is present, that the second partition is ext4, or that the card boots. The manufacturer's 64 GB nominal card size is consistent with Windows' reported 59.69 GB capacity due to differing GB/GiB units.

**Important disk identity:** Disk 1 is the author's separate **Extreme SSD (D:)**, approximately 931.48 GB, containing important existing work. It must **not** be selected for any card imaging, formatting, initialization, or partition operation. This screenshot documents why explicit target-device verification is mandatory before any destructive imaging step.

**Outcome:** USB reader/card recognition and readable boot partition **PASS**; partition table observed **PASS**; Linux filesystem type, bootability, installed OS release, initial setup and eventual filesystem expansion **NOT VERIFIED**. The built-in SD card slot remains **UNTESTED**. No writes or changes were performed as part of this inspection.

**Next planned stage:** Determine a safe way to verify the operating-system image and prepare for first boot without modifying the preserved evidence prematurely. Preserve original photographs for later attachment; do not imply they were uploaded to GitHub.
