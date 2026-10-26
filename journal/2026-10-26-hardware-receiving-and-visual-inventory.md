# Engineering receiving and visual inventory — 2026-10-26

## Objective and acceptance decision
Record physical receipt and visual inspection of the initial two-node Baby Cloud hardware without conflating receipt with functional commissioning.

**Decision by project author:** The equipment is **accepted for receiving** as of 2026-10-26. **Functional acceptance is deferred** until subsequent commissioning. No Raspberry Pi enclosure was disassembled; neither node was powered on or configured during this inspection.

## Evidence and chronology
- **2026-10-21:** Vilros confirmed order SHV-161663 for **two Raspberry Pi 4 preassembled Complete Starter Kits, 4 GB variant**, totaling **$222.58**, with free economy shipping originally estimated at 12–18 days.
- **2026-10-21:** Vilros support, ticket **#2804**, stated SKU `VR4B4GBCK008_A` included a **32 GB microSD preloaded with Raspberry Pi OS**, case, power supply, and cables. This was a **vendor statement**, not an independently verified card image.
- **2026-10-22:** Vilros notified the purchaser that the shipment was on its way.
- **2026-10-26:** Vilros sent an out-for-delivery notice and then a **delivered** notification for both kits. The author independently unpacked and photographed the two kits and confirmed physical receipt. Original emails and photographs are retained privately; private address, tracking number, and authenticated links are omitted from this public record.
- The TP-Link switch and Cat6 cables were reported delivered on **2026-10-22**, as documented in the [October 23 journal](2026-10-23-hardware-receiving-and-workstation-setup.md).

## Visual inventory: two Vilros kits
The author inspected and photographed **both** preassembled kits separately. Each had:
- One black, preassembled Raspberry Pi 4-compatible aluminum enclosure, with visible cooling-fan vent, USB, Ethernet, USB-C, micro-HDMI, audio, and microSD openings.
- One boxed Vilros USB-C power supply with inline power switch.
- One Samsung microSD card in retail packaging **marked 64 GB**.
- One Vilros USB microSD adapter/reader in retail packaging.
- One bagged micro-HDMI cable.
- One Raspberry Pi Quick Start Guide.
- One black zippered carrying pouch.

**Receiving result:** The author confirms that both kits were repacked with their respective accessories, nothing was missing, and no visible damage was found. The external cases were visually examined; internal boards, memory capacity, fan/heatsink installation, and internal electrical connections were **not** independently inspected. Purchased **4 GB RAM** remains a vendor/order specification pending device-level verification.

**Delivered-media variation:** Both photographed microSD labels indicated **64 GB**, whereas Vilros support had specified **32 GB**. Record this as a delivered variation; do not call it a defect or assume the cards contain a verified bootable OS image. Actual capacity and contents require later testing.

**Reader/writer packaging:** The Vilros adapter packaging identifies **model VILP221**, **USB 3.0**, and transfer **to/from** microSD cards. This supports the manufacturer's description of read/write capability, but operation with the new Dell and boot-image writing have **not** been tested.

## Networking equipment and storage state
- **TP-Link TL-SG116E 16-port Gigabit Easy Smart switch:** Its box is open. The author confirms the power supply is beside the switch and the instructions are on top. No switch power-on, firmware, link, or VLAN testing has been completed.
- **Cable Matters Cat6 3-foot 5-pack:** Received and still bagged; no individual cable/link verification is claimed.
- Both Vilros kits are repacked separately with their own accessories. No cluster assembly, cabling, or commissioning was attempted today.

## Next gates and schedule
The author's Linux coursework takes priority. The separate laptop migration is to be managed in its **own repository and conversation**, over approximately one to two weeks. Initial Baby Cloud commissioning is **tentatively deferred until the coming weekend**, contingent on coursework. Thereafter the working target is **one verified functional step per week**, not advancement by an arbitrary deadline.

At commissioning, verify hardware identity and RAM, microSD actual capacity and contents, power/cooling, switch model and power, physical cable count and network links, selected operating system, and later remote administration. Record procedures, results, failures, and evidence in new dated entries. **No operational milestone is claimed here.**

## Provenance and assistance
Physical observations and acceptance were supplied by the project author through photographs and explicit confirmation. Vilros dates, quantities, prices, and stated kit specifications were checked against the purchaser's private vendor emails. This entry was drafted with AI assistance from those sources; the assistant did not physically inspect or test the hardware.
