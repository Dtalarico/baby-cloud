> **HISTORICAL BASELINE — SUPERSEDED FOR PURCHASING (2026-10-21).** This October 12 estimate is retained below as evidence of what was recorded at the time, **not** as a current shopping list. It incorrectly specifies Raspberry Pi 5 and Pi 5 accessories, although Raspberry Pi 4 was always intended. The current initial scope is **two Raspberry Pi 4, 4 GB Vilros starter kits** (SKU `VR4B4GBCK008_A`) with a separately verified switch, cables, and any required accessories. Do **not** purchase from the prices, quantities, or compatibility assumptions below. See [the dated decision record](../decisions/2026-10-21-two-node-initial-build.md) and [the current procurement checklist](current-two-node-procurement.md). The author reports funds available; no purchase is recorded here.

---

# Initial Estimated Procurement List

**Project:** Baby Cloud Raspberry Pi Cluster  
**Baseline:** v0.1 — 2026-10-12  
**Status:** PLANNING ONLY — financial aid pending; no purchase authorized.

## Purpose and architecture

Build a four-node Raspberry Pi 5 Linux laboratory with the intended capability to expand to eight nodes. Provisionally specify **8 GB RAM per node**. Use a **16-port managed Gigabit Ethernet switch** from the start, allowing eight nodes plus one home-router uplink and seven free copper ports. The existing home router provides LAN connectivity. The eight-node/Beowulf-inspired objective and documentary engineering process remain unchanged.

## Estimated total costs (USD)

| Scenario | Initial 4 nodes | Expanded 8 nodes |
|---|---:|---:|
| Vilros-led / mixed sourcing | **$1,443** | **$2,643** |
| Amazon-led planning allowance | **$1,570** | **$2,870** |

The two scenarios are **planning estimates, not verified comparative retail carts**. Vilros-led means the Pi board was priced from Vilros while other components have preliminary allowances; the Amazon-led column consists of unverified allowances. Shipping and taxes are excluded. Add an optional ~15% contingency when deciding available funds.

## Four-node line-item baseline

| Hardware / supply | Qty | Vilros-led unit | Amazon-led unit | Vilros-led extended | Amazon-led extended |
|---|---:|---:|---:|---:|---:|
| Raspberry Pi 5, 8 GB | 4 | $175 | $180 | $700 | $720 |
| Compatible Pi 5 27 W USB-C power supply | 4 | $19 | $20 | $76 | $80 |
| Pi 5 active cooler | 4 | $13 | $15 | $52 | $60 |
| Pi 5 M.2 NVMe HAT+/adapter | 4 | $18 | $20 | $72 | $80 |
| ~256 GB NVMe SSD | 4 | $35 | $40 | $140 | $160 |
| Compatible case or node mount | 4 | $20 | $25 | $80 | $100 |
| 32–64 GB microSD card (staging/recovery) | 4 | $12 | $15 | $48 | $60 |
| 16-port managed Gigabit switch | 1 | $160 | $180 | $160 | $180 |
| Cat6 Ethernet patch cables | 5 | $8 | $10 | $40 | $50 |
| Surge-protected power strip | 1 | $35 | $40 | $35 | $40 |
| Labels, ties, adapters (allowance) | 1 lot | $40 | $40 | $40 | $40 |
| **Total** | | | | **$1,443** | **$1,570** |

## Eight-node expansion assumptions

Add four more of each node-specific line item (Pi board, supply, cooler, NVMe adapter, SSD, case, microSD) and **four additional Cat6 patch cables**; retain the original switch, power strip and consumables allowance. Incremental projection: **$1,200 Vilros-led or $1,300 Amazon-led**, yielding the totals above. Reassess power distribution and switch capacity at expansion.

## Network and design notes

- Router LAN Ethernet port -> managed switch; switch -> each Pi via an individual Ethernet cable.
- Four-node stage: **five cables**; eight-node stage: **nine cables**.
- A switch in the TP-Link Omada SG2218 class is a **candidate, not a selected SKU**. Confirm actual hardware revision, VLANs, link aggregation, SNMP, management access and availability before purchase.
- Standard SG2218-class unmanaged-power model **does not power Pi nodes over Ethernet**. Budget independent USB-C supplies unless a future PoE design is explicitly approved.
- Validate Pi 5 SSD/HAT compatibility, physical clearance, power draw and cooling as a complete system before purchasing.
- UPS, rack, dedicated firewall, NAS, spares, monitors and diagnostic tools are **not yet budgeted**.

## Sources and quote verification

- Raspberry Pi 5 / 8 GB Vilros catalog (initial planning reference; $175 observed when prior baseline was prepared): https://vilros.com/collections/raspberry-pi-5/products/raspberry-pi-5
- Vilros Pi 5 kits: https://vilros.com/collections/pi-5-kits
- TP-Link SG2218 model reference: https://www.tp-link.com/us/business-networking/omada-switch-access/sg2218/v1.30/

Except for the dated Vilros board reference, **all dollar figures are budgetary allowances**, not itemized live vendor quotes. Confirm SKUs, actual prices, availability, sales tax and shipping at purchase time.

## Procurement hold and change control

**HOLD: Do not place orders until the financial-aid situation is resolved and funds are available for eligible expenses.** Review any applicable aid and educational-use constraints before spending.

- **v0.1:** Initial estimated procurement baseline, 2026-10-12, *unspent*.
- **Next revision (proposed v0.2):** Validate vendor URLs, SKUs, actual quotes and compatibility; update estimates while preserving this baseline through Git history.
- **After purchase:** Record actual spend, order dates, receipts and inventory separately; do not represent estimates as transactions.

## Repository integration

This file belongs in `docs/procurement/` in the existing `Dtalarico/baby-cloud` repository. Physical builds, validation and troubleshooting belong in the engineering journal as they happen.
