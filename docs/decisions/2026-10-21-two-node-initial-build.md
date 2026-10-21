# Decision record — Two-node initial build

**Recorded:** 2026-10-21  
**Status:** Approved planning decision; purchase and deployment not yet verified  
**Topic:** Initial hardware scope and historical clarification

## Original intention

Baby Cloud's original engineering vision called for an eight-node, Beowulf-inspired Raspberry Pi cluster, with four physical nodes as the initial implementation milestone. That historical intention remains part of the record; it was not a mistake to want four nodes first.

## Constraint and decision

Available resources made buying all four intended nodes at once impractical at the time the initial scope was reconsidered. Rather than abandon the project or the eight-node goal, the project author chose to begin with **two Raspberry Pi 4 nodes**, establish a working Linux and networking foundation, and expand to four nodes when feasible. The long-term eight-node objective remains unchanged.

On 2026-10-21 the project author reported that purchase funds are now available and expressed intent to purchase the two starter kits, a switch, and necessary ancillary equipment on the same calendar date where practical. This is a purchasing plan, **not** evidence that any order has been placed or that a system has been deployed.

## Separate correction: Pi 4 versus Pi 5

The 2026-10-12 procurement estimate lists Raspberry Pi 5, 8 GB boards and Pi 5-specific accessories. **That is a documentation/specification error, not a historical decision to switch hardware from Pi 5 to Pi 4.** Raspberry Pi 4 was the intended platform. The earlier estimate remains discoverable through Git history; its prices and Pi 5 accessory list must not be used as an approved shopping cart.

## Hardware selection and open questions

- Planned first purchase: **two Vilros Raspberry Pi 4 Complete Starter Kits, 4 GB**, vendor SKU `VR4B4GBCK008_A`.
- Vendor support confirmed that the kit includes a 32 GB microSD card preloaded with Raspberry Pi OS. This is vendor-provided information, not a delivery or boot verification.
- The included OS may be used for initial hardware checking; the intended Linux environment is RHEL or a suitable RHEL-adjacent ARM64 distribution. The final OS choice and compatibility tests remain open.
- A network switch, Ethernet cables, and any additional necessary accessories must be selected and price-checked before checkout. An SG2218-class managed switch is a *candidate*, not a verified selected product.
- Purchasing on one date is a documentation preference, not permission to falsify timestamps or substitute unverified parts.

## Phase terminology

The README historically names **Phase 1 — Foundation** (four-node starting milestone) and **Phase 2 — Expansion** (toward eight nodes). These are architecture-stage labels, not evidence of completed work. The two-node procurement is the immediate foundation sub-milestone. The author's separate reference to being “in phase two” has not yet been mapped conclusively to those older README labels; do not assert a completed phase or silently renumber phases.

## Verification and recordkeeping

Before ordering: confirm current vendor listings, compatibility, quantities, taxes, shipping, and the author's approval of the cart. After ordering: create a dated procurement event log, separate vendor transactions, preserve redacted receipt references, and later record delivery, inventory, boot tests, and SSH access as separate verified events.

**Related records:** `README.md`, `docs/architecture.md`, `docs/procurement/initial-estimated-procurement-list.md`, `docs/documentation-policy.md`.
