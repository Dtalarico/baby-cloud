# 2026-10-31 — Initial OS commissioning and future multi-distribution cluster design

**Record type:** Design decision and open-questions review  
**Author/decision owner:** Baby Cloud project author  
**Drafting assistance:** Prepared with AI assistance from the author's October 31 discussion; implementation remains unperformed unless separately verified.  
**Governing policy:** [BC-DOC-001](../documentation-policy.md) — preserve original intent, status, and evidence.

## Context and mission

Baby Cloud's primary mission remains the Beowulf-style parallel-computing cluster clarified in the [architecture document](../architecture.md) on 2026-10-28: multiple real computers must execute parts of one coordinated workload and combine a verifiable result. Simply connecting machines to a network is not enough. The current initial hardware is two Raspberry Pi 4 Model B 4 GB kits, with a TP-Link TL-SG116E wired Ethernet switch. The original eight-node ambition is retained, and the possibility of a sixteen-node future was mentioned only as exploratory.

The author has two 64 GB microSD cards received with the kits; whether either card came with an operating system preloaded has **not been verified**. The kit's generic documentation and card packaging do not establish this. No conclusion about OS image installation or first boot is drawn from the packaging. Additional cards have not been purchased.

## Approved initial commissioning strategy (plan, not execution)

1. **Known-good baseline:** Prepare the two current cards with Raspberry Pi OS Lite **64-bit**, subject to checking their existing contents and the exact currently offered image. This is a minimal, headless Debian-family Linux environment for initial hardware and network validation.
2. **Physical nodes:** Initially commission **Casper-1** and **Balthasar-2**, using the previously documented hostnames. Connect them by **wired Gigabit Ethernet** through the existing switch; Wi-Fi is not part of the planned cluster network.
3. **Functional evidence:** Verify reliable boot, storage, interface/link and addressing, SSH access, and basic system health. Install an MPI implementation such as Open MPI only after compatibility and configuration are checked. Execute a **single real computation distributed across both nodes**, verify a combined correct result, and record a single-node baseline, multi-node runtime, and communication overhead. Do not presume a speedup.
4. **Preserve the baseline:** **Do not overwrite the original known-good cards** when trying another OS. Once verified, retain the Raspberry Pi OS cards intact as physical rollback media and document their contents/configuration, software versions, tests and limitations. Two **additional microSD cards** are proposed for the Rocky Linux experiment, to be purchased when funds permit. Preserve proper shutdown and power-off procedures before swapping cards.
5. **Rebuild and reverify separately:** Test an appropriate Raspberry Pi 4-compatible Rocky Linux ARM64 image on the new cards, initially on the same physical two-node hardware. Repeat networking, SSH, MPI, correctness and performance verification; compare with the Raspberry Pi OS baseline. A successful boot alone does not establish cluster success.

**Rationale:** Raspberry Pi OS provides a well-supported starting environment to distinguish hardware/network failures from operating-system porting and packaging issues. Separate removable storage allows rollback without destroying the sole working reference. Deliberate repetition on Rocky Linux develops RHEL-style administration skills and provides comparable engineering evidence.

## Proposed future eight-node OS arrangement — NOT approved as final implementation

The former six-RHEL-family-plus-Gentoo-plus-LFS concept was revisited **without erasing the earlier record**. The author discussed the following alternative role mapping:

| Node | Proposed future OS | Proposed role |
| --- | --- | --- |
| Casper-1 | Ubuntu Server ARM64 | Radio Free Redoubt USB SDR acquisition / reception; cluster participation subject to MPI compatibility |
| Balthasar-2 | Gentoo | Source-based Linux laboratory and possible cluster participation |
| Melchior-3 | Linux From Scratch | Linux internals / build laboratory and possible cluster participation |
| Spike Spiegel | Rocky Linux ARM64 | Beowulf compute node |
| Jet Black | Rocky Linux ARM64 | Beowulf compute node |
| Faye Valentine | Rocky Linux ARM64 | Beowulf compute node |
| Ein | Rocky Linux ARM64 | Beowulf compute node |
| Edward Wong | Rocky Linux ARM64 | Beowulf compute node |

The MAGI naming follows the [2026-10-26 naming correction](2026-10-26-magi-naming-correction.md). This proposed mapping preserves the theme of three distinct MAGI environments and a five-node Bebop compute backbone. **It is not evidence that the eight nodes exist or that these operating systems have been installed.** Initial Casper-1/Balthasar-2 Raspberry Pi OS and later Rocky experiments do not depend on making this final layout decision now.

## Radio Free Redoubt integration — unresolved

The separate radio campaign document names the **SDRplay RSP1B** as the preferred receive-only USB software-defined radio hardware, chosen substantially for broad frequency coverage. It has **not been reported purchased**. SDR application choice, ARM64 driver support, whether SDRconnect's supported headless/server-client deployment runs on the specific Pi 4 environment, antenna choices and acquisition/processing data flow remain unresolved. A radio-specific Ubuntu node is a **proposal**, not a verified requirement: SDR capture need not run on every compute node. A graphical user interface on the radio node is **not automatically required** merely because the operator wants a graphical control/display on another computer.

## Compatibility and design risks to test

- **RHEL vs. Rocky:** RHEL's supported ARM64 architecture is not equivalent to official Raspberry Pi hardware support. Rocky Linux provides Raspberry Pi-specific ARM64 builds, but their exact release, firmware and Pi 4 suitability must be checked against current project documentation before installation. Rocky Linux is highly RHEL-compatible for much system administration, but is not identical to RHEL; RHCSA work remains in the separate actual-RHEL training environment.
- **Mixed-distribution MPI:** Ubuntu, Gentoo, LFS, and Rocky nodes can share IP networking and potentially participate in coordinated workloads; common ARM64 hardware alone does not ensure matching MPI versions, runtime libraries, ABI, application builds, launch configuration, filesystems or reproducible jobs. Eight-node compatibility is **a target to prove**, not a fact.
- **SDR/software:** Confirm Linux distribution, architecture and driver/software support before selecting the radio node's permanent OS. Avoid buying unnecessary receivers or changing the Beowulf goal to accommodate untested assumptions.
- **Storage:** The current microSD cards are the boot media. Future external USB SSDs and network-attached storage were discussed as possibilities, not procurement or layout commitments; adding SSD storage would not automatically stop OS writes to the SD cards.
- **Reliability:** A working card is a useful recovery reference but not a substitute for independent backups or a documented reproducible build.

## Immediate next steps

1. Finish reading the Raspberry Pi manual and inspect existing card contents **without overwriting or formatting**.
2. Review Raspberry Pi Imager's device and OS selections, initial user/SSH settings, and target-device identification; protect unrelated external storage.
3. Prepare and commission the first two nodes on Raspberry Pi OS Lite 64-bit, recording observed output and verified state in dated engineering journal entries.
4. Demonstrate, document and benchmark a real two-node MPI workload.
5. When funding allows, acquire two separate cards for Rocky Linux testing while keeping the initial verified baseline intact.
6. Verify the intended SDR application's Pi 4 / ARM64 / headless support before committing to Ubuntu as the future radio node.

## Change boundaries

**Approved now:** two-node Raspberry Pi OS Lite 64-bit commissioning plan, real two-node MPI proof requirement, wired networking, and preserving the baseline cards before Rocky Linux experiments.  
**Preferred candidate:** Rocky Linux ARM64 as a RHEL-compatible OS for later compute-node work.  
**Proposed only:** five Rocky Bebop nodes; Ubuntu radio MAGI node; Gentoo and LFS MAGI nodes; future SSD/NAS architecture; later expansion.  
**Not executed or verified by this record:** any new OS flash, Pi boot, network test, MPI run, Rocky installation, SDR connection, purchase of additional SD cards or expansion hardware.

This new dated decision record adds context without modifying or replacing earlier files. **The future must know what the past was thinking.**

---

## Same-day decision addendum — inspect and boot the supplied OS before any reimage (2026-10-31)

**Authority:** Project author. **Status:** Approved next commissioning approach; **not yet implemented**. This addendum changes the **immediate sequence**, without erasing the earlier approved longer-term Raspberry Pi OS Lite and Rocky Linux experiments.

During today's first physical inspection, one supplied 64 GB card was read through the Vilros USB reader on Windows. Its FAT32 `bootfs` partition was readable, and `issue.txt` showed `Raspberry Pi reference 2023-12-05` and a `pi-gen` build ending in `stage4`. The partition layout included a 512 MB FAT32 boot partition, an approximately 4.93 GB second partition, and approximately 54.25 GB unallocated space. This is good evidence of a preloaded Raspberry Pi OS-derived image, **not** yet evidence of successful boot, precise OS/architecture identification or SSH readiness.

**The author's explicit correction:** Do **not** reflash the original card merely to perform initial setup. The immediate goal is to **test the existing vendor-preloaded OS headlessly on the existing card**, preserving the installed system rather than replacing it. Using a monitor/keyboard/mouse was discussed as a possible alternative but is **not** the author's preferred next method. The author wants to prepare the existing image for remote first boot from Windows, connect one Pi via Ethernet to NERV, and gain SSH access. No microSD card has been reflashed, and no Pi has been powered on.

**Proposed technical sequence (requires verification before any write):**
1. Reinsert the previously inspected card in the Vilros reader and positively identify the intended removable disk and `bootfs` volume; protect the separate Extreme SSD and all unrelated disks.
2. Determine the appropriate **first-boot user provisioning** mechanism for this actual preloaded image, and verify the availability/behavior of SSH enablement. Historically a boot-partition `ssh` marker and `userconf.txt` with a correctly hashed password were supported for Raspberry Pi OS, but **compatibility with this specific preinstalled image is not independently proven**. Do not write account secrets in plaintext, guess at the current user's password, or assert that the SSH marker alone establishes an authorized user account.
3. If the original as-shipped image must be recoverable byte-for-byte, decide whether to capture a full image backup **before the first write or boot**. This is an explicit preservation choice, not permission to erase, format or reimage the card. The user has not yet approved a card write.
4. Once the provisioning method is verified and approved, apply only the minimal required setup on the existing card; record each file and setting changed. Safely eject it, install it into the first Pi, connect Ethernet to NERV, then power up.
5. Observe the Pi's appearance in the AT&T gateway's DHCP/device list, locate its actual IP, connect by SSH and verify host identity, OS release, architecture, kernel, disk/partition expansion, memory and network. Record the observed commands/output without claiming functionality in advance.
6. Only after the original image is tested should the author decide whether/when to install Raspberry Pi OS Lite 64-bit on this or separate media. The earlier plan to retain known-good media and later explore Rocky Linux ARM64 on additional cards remains in effect as a future decision, not authorization to overwrite today's supplied image.

**Why:** A preloaded OS is part of the as-delivered test baseline. Replacing it before trying to boot it destroys information and adds unnecessary uncertainty. Headless commissioning can still be conducted while retaining the installed image, subject to appropriate initial account/SSH preparation. First boot and initial provisioning may write to the card or expand the filesystem; it is therefore incorrect to describe a successfully booted card as byte-for-byte unchanged.

**Next session gate:** Finish coursework or take a break first; the author may resume this headless preparation later on October 31 or another day. Before acting, check the card's present state and the image-specific procedure. The first operational milestone is a verified SSH login to the first physical Raspberry Pi; the longer-term Beowulf milestone still requires a single coordinated workload across at least two actual nodes.

**Documentation provenance:** The change in approach and preservation concern were proposed and insisted upon by the author; AI assisted in recording the decision. This addendum supersedes the earlier *immediate flashing sequence only*, without altering the past record or declaring any future installation completed.
