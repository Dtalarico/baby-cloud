# Current two-node procurement checklist

**Created:** 2026-10-21  
**Status:** FIRST PURCHASE CONFIRMED — two starter kits ordered; shipping, receipt, and physical tests pending  
**Decision basis:** [Two-node initial build](../decisions/2026-10-21-two-node-initial-build.md)

## Purchasing objective

Buy all necessary items on one calendar date, if feasible, to make the first Baby Cloud procurement event easy to audit. Preserve the **actual date and time of each vendor transaction**; a later order is an explicitly dated exception, not a backdated part of the first purchase.

## Proposed bill of materials — verify before checkout

| Item | Qty | Selection / verification required |
|---|---:|---|
| Raspberry Pi 4 Complete Starter Kit, 4 GB | 2 | **Vilros SKU `VR4B4GBCK008_A`**; confirm current listing, included power supply, case/cooling, and 32 GB preloaded microSD |
| Managed Gigabit Ethernet switch | 1 | Select an actual available SKU, port count, management features, power adapter, and price; TP-Link SG2218 class was a historical *candidate*, not an approved order |
| Cat5e/Cat6 Ethernet patch cables | At least 3 | One cable for each Pi and one for router-to-switch uplink; verify required lengths and existing usable cables before buying |
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

## Price and compatibility gate

For every line, record: seller, exact product title, SKU/model, URL, quantity, unit price, shipping, tax, total, and whether it is approved. Do not copy prices from the 2026-10-12 estimate. Check that the switch supports the intended network, that its ports are ordinary Ethernet (not assumed PoE power for the Pis), that kits include suitable Pi 4 power/cooling, and that cable counts and lengths match the setup.

**Vilros starter-kit order confirmed on 2026-10-21.** Switch, network cables, and other accessories remain to be selected and ordered; do not treat the full cart as complete.

## One-day procurement event record (fill in after checkout)

**Event date:** 2026-10-21 (first vendor order confirmed)  
**Purpose:** Initial two-node Baby Cloud hardware procurement  
**Purchaser confirmation:** Confirmed by checkout page supplied by the purchaser and starred Vilros confirmation email dated 2026-10-21 20:47:43 UTC.

| Vendor | Actual order date/time | Order reference (redacted) | Items/SKUs | Subtotal | Tax | Shipping | Total | Status |
|---|---|---|---|---:|---:|---:|---:|---|
| Vilros | 2026-10-21 20:47:43 UTC (confirmation email; exact checkout time not separately verified) | SHV-161663 (vendor order number) | 2 × Raspberry Pi 4 Complete Starter Kit, 4GB; SKU VR4B4GBCK008_A per pre-order support correspondence | $222.58 | $0.00 shown / no separate tax line | $0.00 | $222.58 | Confirmed, awaiting shipment |

**Overall spend recorded:** $222.58 (Vilros order only; further procurement pending)  
**Exceptions / orders on later dates:** None recorded yet; document if they occur.

**Additional purchase evidence:** The purchaser supplied checkout confirmation reference `500P5MZVU`; the separate merchant order confirmation email uses order number `SHV-161663`. Preserve both identifiers as distinct references rather than treating them as interchangeable. The email states the order is being prepared and that shipment will be notified later. Free Economy Shipping quotes 12–18 days, **not** a guaranteed delivery date. The purchaser starred the confirmation email, retained privately. Neither the personal checkout URL nor payment-card details are recorded here.  
**Private evidence:** Retain full receipts and payment information outside public GitHub; include only sanitized references here.

## Delivery and acceptance (separate later records)

Record delivery date, received quantities and actual kit contents, physical damage, inventory identifiers where safe to publish, boot checks, OS image used, network connectivity, and SSH access. Never equate a confirmed order with delivery or a successful deployment.

## Historical context

The [2026-10-12 estimate](initial-estimated-procurement-list.md) remains in version history with an explicit warning. Its Pi 5 selection was a **documentation error**, not a Pi 5-to-Pi 4 design change. Four nodes remain the intermediate goal; eight remain the long-term vision.
