# Current two-node procurement checklist

**Created:** 2026-10-21  
**Status:** TWO VENDOR ORDERS CONFIRMED — Vilros starter kits and Amazon networking equipment ordered; physical receipt and testing pending  
**Decision basis:** [Two-node initial build](../decisions/2026-10-21-two-node-initial-build.md)

## Purchasing objective

Buy all necessary items on one calendar date, if feasible, to make the first Baby Cloud procurement event easy to audit. Preserve the **actual date and time of each vendor transaction**; a later order is an explicitly dated exception, not a backdated part of the first purchase.

## Bill of materials — ordered items and remaining verification

| Item | Qty | Selection / verification required |
|---|---:|---|
| Raspberry Pi 4 Complete Starter Kit, 4 GB | 2 | **Vilros SKU `VR4B4GBCK008_A`**; confirm current listing, included power supply, case/cooling, and 32 GB preloaded microSD |
| 16-port Gigabit Easy Smart Ethernet switch | 1 | **Ordered from Amazon on 2026-10-21: TP-Link TL-SG116E.** Confirm hardware revision and supplied components on receipt. Supports VLAN, QoS, port mirroring; not PoE. SG2218 was evaluated and explicitly deferred on cost grounds; not ordered |
| Cat6 Ethernet patch cables | 1 × 5-pack | **Ordered from Amazon on 2026-10-21: Cable Matters Cat6 Snagless Ethernet Patch Cable, 3-foot, 5-pack.** Three cables needed initially (two Pis plus router uplink); two spare. Verify the uplink route is within 3 feet at installation |
| Surge-protected power distribution | As needed | Verify sufficient outlets, rating, and whether an existing suitable unit is available |
| Labels / cable organization | As needed | Confirm quantities after physical layout is planned |
| Additional storage or adapters | Not yet approved | Do not automatically purchase Pi 5 NVMe HAT+ parts or accessories from the superseded estimate |

**Important:** The two starter kits' exact contents must be verified at checkout. Vendor support has confirmed a 32 GB Raspberry Pi OS microSD card, but included components and actual shipment must still be checked. Raspberry Pi OS may serve for initial hardware verification; final RHEL or RHEL-adjacent ARM64 operating system remains undecided.

## Vendor correspondence — 2026-10-21 (pre-purchase evidence)

**Customer inquiry:** On October 21, 2026, the project author emailed Vilros Support to clarify a contradiction on the Raspberry Pi 4 Pre-Assembled Complete Starter Kit product page. The included-components list said a **32 GB microSD card preloaded with Raspberry Pi OS** was included, while a later page note said a microSD card was not included. The inquiry explicitly identified the **4 GB kit, SKU `VR4B4GBCK008_A`**, and stated intent to buy two.

**Vendor reply:** On October 21, 2026, **Kim, Vilros Support**, replied under support ticket **#2804** that the 32 GB preloaded microSD card **is included in the Complete Starter Kit**. The vendor attributed the contradictory FAQ statement to **Basic Starter Kits**, and also confirmed a **power supply, case, and cables** in the Complete Starter Kit.

**Evidence classification:** Direct vendor statement, **not** independently verified delivered contents. The original inquiry and reply are retained in the purchaser's private email account. Do not publish email authentication tokens or private ticket-access links. Check actual delivered components at receiving inspection.

**Public product page:** https://vilros.com/products/vilros-raspberry-pi-4-pre-assembled-complete-starter-kit

**Shopping-page observation (2026-10-21):** The public listing displayed SKU `VR4B4GBCK008_A` and an Add to Cart price of **$158.99** when reviewed. Confirm the selected **4 GB** variant and checkout total; a page price is not a paid price. The listing still contains a contradictory microSD exclusion note, resolved for this SKU by the vendor's direct email.

## Selected switch and cable references — 2026-10-21

The project discussion on 2026-10-20 identified **TP-Link TL-SG116E** (16-port Gigabit Easy Smart) and **Cable Matters Cat6 3-foot 5-pack** as the immediate network purchases, replacing the older SG2218-class candidate. This was initially a selection for purchasing review; **the subsequent Amazon order was confirmed on 2026-10-21**, as recorded below. The switch offers limited web-managed functions (including VLANs and port mirroring), not the full management feature set of the Omada SG2218. Its ports do not supply power to Raspberry Pi nodes. A 16-port switch has capacity for eight Pi nodes plus a router uplink, with ports remaining for other devices.

Manufacturer references: https://www.tp-link.com/us/business-networking/easy-smart-switch/tl-sg116e/v1.20/ and https://www.cablematters.com/pc-70-160-5-pack-cat6-snagless-ethernet-patch-cable.aspx .

Amazon product-search links for matching the exact model/pack (not yet verified as a specific seller offer):
- https://www.amazon.com/s?k=TP-Link+TL-SG116E+16+Port+Easy+Smart+Switch
- https://www.amazon.com/s?k=Cable+Matters+Cat6+3ft+5+Pack+Snagless

**Purchase verification and receiving checklist:** confirm switch model suffix **E** (not TL-SG116), 16 Gigabit ports, included power adapter, exact 3-foot cable length, quantity five, total prices, and adequate cable length from router to switch.

## Price and compatibility gate

For every line, record: seller, exact product title, SKU/model, URL, quantity, unit price, shipping, tax, total, and whether it is approved. Do not copy prices from the 2026-10-12 estimate. Check that the switch supports the intended network, that its ports are ordinary Ethernet (not assumed PoE power for the Pis), that kits include suitable Pi 4 power/cooling, and that cable counts and lengths match the setup.

**Vilros starter-kit and Amazon networking orders both confirmed on 2026-10-21.** Surge-protected power distribution and labeling remain conditional on actual setup; do not treat items as received or operational.

## One-day procurement event record (fill in after checkout)

**Event date:** 2026-10-21 (both vendor orders confirmed)  
**Purpose:** Initial two-node Baby Cloud hardware procurement  
**Purchaser confirmation:** Vilros checkout page and starred Vilros confirmation email dated 2026-10-21 20:47:43 UTC; Amazon 'Your Orders' page supplied by purchaser on 2026-10-21.

| Vendor | Actual order date/time | Order reference (redacted) | Items/SKUs | Subtotal | Tax | Shipping | Total | Status |
|---|---|---|---|---:|---:|---:|---:|---|
| Vilros | 2026-10-21 20:47:43 UTC (confirmation email; exact checkout time not separately verified) | SHV-161663 (vendor order number) | 2 × Raspberry Pi 4 Complete Starter Kit, 4GB; SKU VR4B4GBCK008_A per pre-order support correspondence | $222.58 | $0.00 shown / no separate tax line | $0.00 | $222.58 | Confirmed, awaiting shipment |\n| Amazon | 2026-10-21 (exact time not shown) | 111-1685721-1526626 | 1 × TP-Link TL-SG116E 16-port Gigabit Easy Smart Switch ($59.99); 1 × Cable Matters Cat6 3-foot 5-pack ($14.99) | $74.98 | $5.44 inferred from total minus cart subtotal; invoice breakdown not supplied | Free delivery indicated at cart; final shipping charge not separately itemized | $80.42 | Order confirmed; Amazon displayed 'Arriving tomorrow' (2026-10-22), not delivered |

**Overall spend recorded:** $303.00 ($222.58 Vilros + $80.42 Amazon; both confirmed orders, not delivery)  
**Exceptions / orders on later dates:** None recorded yet; document if they occur.

**Additional purchase evidence:** The purchaser supplied checkout confirmation reference `500P5MZVU`; the separate merchant order confirmation email uses order number `SHV-161663`. Preserve both identifiers as distinct references rather than treating them as interchangeable. The email states the order is being prepared and that shipment will be notified later. Free Economy Shipping quotes 12–18 days, **not** a guaranteed delivery date. The purchaser starred the confirmation email, retained privately. Neither the personal checkout URL nor payment-card details are recorded here.  
**Amazon evidence and decision:** The purchaser's Amazon Orders page dated 2026-10-21 showed one order with both exact approved items, total $80.42, and 'Arriving tomorrow.' The earlier $74.98 cart subtotal was not the final charge. The $5.44 difference is arithmetic, not a verified tax line; obtain invoice breakdown if needed. The more expensive Omada SG2218 was reconsidered and deliberately deferred: the initial two-node cluster should be brought online within budget before purchasing advanced management features. The selected TL-SG116E remains suitable for initial networking and has 16 Gigabit ports for planned expansion. No claim of future-proofing or advanced enterprise switch capabilities is made.\n\n**Private evidence:** Retain full receipts and payment information outside public GitHub; include only sanitized references here.

## Delivery and acceptance (separate later records)

Record delivery date, received quantities and actual kit contents, physical damage, inventory identifiers where safe to publish, boot checks, OS image used, network connectivity, and SSH access. Never equate a confirmed order with delivery or a successful deployment.

## Historical context

The [2026-10-12 estimate](initial-estimated-procurement-list.md) remains in version history with an explicit warning. Its Pi 5 selection was a **documentation error**, not a Pi 5-to-Pi 4 design change. Four nodes remain the intermediate goal; eight remain the long-term vision.
