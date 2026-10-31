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
