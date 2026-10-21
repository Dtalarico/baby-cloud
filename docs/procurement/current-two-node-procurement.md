# Current two-node procurement checklist

**Created:** 2026-10-21  
**Status:** PRE-PURCHASE — no transactions or physical tests recorded  
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

## Price and compatibility gate

For every line, record: seller, exact product title, SKU/model, URL, quantity, unit price, shipping, tax, total, and whether it is approved. Do not copy prices from the 2026-10-12 estimate. Check that the switch supports the intended network, that its ports are ordinary Ethernet (not assumed PoE power for the Pis), that kits include suitable Pi 4 power/cooling, and that cable counts and lengths match the setup.

**Cart review is pending. No vendor order has been placed by this document.**

## One-day procurement event record (fill in after checkout)

**Event date:** Pending actual first order  
**Purpose:** Initial two-node Baby Cloud hardware procurement  
**Purchaser confirmation:** Pending

| Vendor | Actual order date/time | Order reference (redacted) | Items/SKUs | Subtotal | Tax | Shipping | Total | Status |
|---|---|---|---|---:|---:|---:|---:|---|
| Pending | Pending | Pending | Pending | — | — | — | — | Not ordered |

**Overall spend:** Pending  
**Exceptions / orders on later dates:** None recorded yet; document if they occur.  
**Private evidence:** Retain full receipts and payment information outside public GitHub; include only sanitized references here.

## Delivery and acceptance (separate later records)

Record delivery date, received quantities and actual kit contents, physical damage, inventory identifiers where safe to publish, boot checks, OS image used, network connectivity, and SSH access. Never equate a confirmed order with delivery or a successful deployment.

## Historical context

The [2026-10-12 estimate](initial-estimated-procurement-list.md) remains in version history with an explicit warning. Its Pi 5 selection was a **documentation error**, not a Pi 5-to-Pi 4 design change. Four nodes remain the intermediate goal; eight remain the long-term vision.
