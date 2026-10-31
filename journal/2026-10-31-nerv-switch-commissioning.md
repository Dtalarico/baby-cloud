# NERV switch commissioning — 2026-10-31

Status: Initial power, gateway uplink, DHCP assignment and web management access verified. This is not a complete switching or cluster acceptance test.

Device description shown after Apply: `NERV_TL-SG116E_SWITCH`.

- Hardware: TP-Link TL-SG116E version 2.20, 16-port Gigabit Easy Smart switch.
- Firmware reported in System Info: `1.0.0 Build 20230505 Rel.70817`.
- Management IPv4: `192.168.1.74`, obtained via DHCP.
- Subnet mask: `255.255.255.0`; default gateway: `192.168.1.254`.
- Physical connection: AT&T BGW620-700 gateway LAN 3 to TP-Link port 1 with a 3-foot Cat6 patch cable.
- AT&T device list reported 1000 Mbps full-duplex link and switch status on.
- A Windows laptop connected to AT&T Wi-Fi successfully opened the TP-Link web management pages.

The laptop initially connected to the old Spectrum Wi-Fi, causing a misleading default gateway of `192.168.1.1`. The user identified this by opening the Spectrum management page, then switched to AT&T Wi-Fi. The AT&T-connected laptop had IPv4 `192.168.1.64` and default gateway `192.168.1.254`. This is a useful example of validating the network actually in use before troubleshooting device reachability.

The author selected NERV as the device identity for the planned MAGI cluster backbone. The author reports that spaces were not accepted by the Device Description field, and used underscores. A later screenshot shows `NERV_TL-SG116E_SWITCH` as the current description in the System Info table.

The author reports changing initial administrator credentials; no credentials are stored in this public file. No Pi was powered on or connected during this session. Future work: verify setting persistence, check a real wired client's traffic forwarding, and record any further network configuration only after a test.

Provenance: Physical work and photographs supplied by the project author. Documentation drafted with AI assistance under BC-DOC-001. Photographs are retained privately and have not been committed to the repository.

## Backup export — 2026-10-31 (later observation)

The author used the TL-SG116E web interface under **System Tools → Backup and Restore → Backup Config** to request a configuration export. Chrome warned about an insecure download; the author chose to retain the intended configuration export from the local HTTP management session. The Save As dialogue showed the destination inside the external SSD under `D:\GOOGLE DRIVE MIRROR\BABY CLOUD PROJECT MASTER\NERV_TLSG116E-SWITCH`.

The author then opened File Explorer at that folder and supplied a photograph displaying one saved file with a name beginning `NERV_TLSG116E_SWITCH_2026-10-31_INI...` and an October 31 modification timestamp. This establishes **local file presence**. The full filename, nonzero byte count, successful remote cloud synchronization, file integrity and ability to restore the configuration are **not independently verified from this screenshot**. The author reports that the parent folder participates in an existing Google Drive mirror, but cloud synchronization was not checked during this step.

**Security and provenance:** The exported switch configuration may contain sensitive settings; keep its raw contents private rather than adding it to the public GitHub repository. This journal entry records the operation, evidence and storage location only. The user performed the operation and captured the evidence; this append was prepared with AI documentation assistance. Later steps: inspect file Properties to verify byte count and full name, confirm backup synchronization if desired, and inspect the remaining switch features without modifying configuration inadvertently.

## End-of-session supplemental inspection and handoff — 2026-10-31

This section is **additive**: the initial commissioning record and earlier uncertainty are preserved.

**User account and browser:** The switch's web interface showed the User Account configuration page. The project author reported applying account changes and retaining the credentials through Chrome's password manager. A screenshot during the session showed `admin` as the username in the edit form; the actual username to be used at the next login must be confirmed by a new login rather than inferred from an earlier edit screen. No password values are captured in this public record.

**System Info and description:** The applied device description remains `NERV_TL-SG116E_SWITCH`. System Info displayed hardware version `TL-SG116E 2.20` and firmware `1.0.0 Build 20230505 Rel.70817`. The management IPv4 `192.168.1.74` was allocated by DHCP, so it is not a permanent guarantee.

**Switching / Port Configuration:** The author inspected the port-configuration page, reporting that port 1 was enabled, with speed/duplex configured Auto, actual `1000MF` (1000 Mbps full duplex), and Ethernet flow control configured Off / actual Off. Other unplugged ports were administratively enabled but showed Link Down. The distinction between enabled, physically connected, and forwarding traffic was explained. No settings were changed on this page.

**Additional read-only menu exploration:** The author examined the IGMP Snooping, Static LAG, and Monitoring/Port Statistics screens. IGMP Snooping observes IPv4 multicast group membership to constrain forwarding where configured; Static LAG can logically combine compatible physical links; Port Statistics is for observing network-port counters. Screenshots were used to discuss their roles, but no particular IGMP membership, LAG membership, or traffic-counter totals are independently asserted here. No feature changes are recorded.

**Backup exported and retained locally:** The author initiated **System Tools → Backup and Restore → Backup Config**. Chrome warned about the HTTP download; the author explicitly kept their requested export. They selected the existing synchronized-folder location on their external drive: `D:\\GOOGLE DRIVE MIRROR\\BABY CLOUD PROJECT MASTER\\NERV_TLSG116E-SWITCH`. The author-specified filename was `NERV_TLSG116E_SWITCH_2026-10-31_INITIAL_BASELINE.cfg`; File Explorer subsequently displayed a matching, truncated name in that directory. Thus **local existence is verified**, while the full on-disk filename, nonzero byte count, successful cloud upload, and tested restoration remain unverified. Neither the configuration file nor credentials are committed to public GitHub.

**Power and cabling constraints:** The 3-foot patch cables were sufficient to establish the first link but shorter than ideal for final arrangement. The author intends to remove obsolete Spectrum equipment once the AT&T migration is stable, making room and outlets; no removal or power change is asserted.

**End-of-session state:** NERV is powered, named, connected to the AT&T gateway on port 1, reachable by browser, and has an exported local configuration file. Physical Pi nodes and any SSH session remain **untested**. Follow-up after coursework or a break: verify configuration persistence only when convenient; safely prepare the supplied microSD card for first headless Raspberry Pi boot without replacing its preinstalled OS, according to the newer decision-record addendum.

**Assistance:** The author performed physical, browser, and filesystem operations and proposed the OS commissioning approach. The assistant explained concepts, suggested tests, interpreted screenshots, and drafted this record. The photographic originals remain with the author.
