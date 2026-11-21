# Infrastructure Diagrams

This directory contains diagrams representing the Baby Cloud lab infrastructure.

Diagrams may include:

- Network topology
- Service architecture
- Container layout
- Infrastructure components

These diagrams help visualize how the environment is structured and how services interact.


## Diagram index and maintenance — 2026-11-09

The project author requests **clear, purposeful diagrams throughout engineering development**. See [the dated visual-documentation standard](../docs/documentation-policy.md#2026-11-09--author-directed-visual-engineering-documentation-standard). At each significant milestone check whether architecture, wiring, system roles, data movement, or troubleshooting would benefit from a diagram; make new diagrams only when they clarify real engineering information.

### Existing diagram

- [Conceptual eight-node topology](baby-cloud-conceptual-eight-node-topology.svg) — **PROPOSED / conceptual**, not proof that all eight nodes exist or are operating. Consult [project continuity](../PROJECT_CONTINUITY.md) for current verified deployment state.

### Candidate diagrams as the project advances

- **Verified physical topology:** Installed nodes, NERV switch, AT&T gateway, and eventually the separately planned NAS; distinguish observed cabling from planned ports.
- **MPI compute and communication:** Launcher, participating nodes, message flow, job inputs/outputs, and measured results; mark untested designs as proposed.
- **Operating-system migration:** Distinguish current Raspberry Pi OS machines from proposed Rocky Linux, Gentoo, and Linux From Scratch experiments.
- **Storage, recovery, and services:** Backup flow, NAS data flows, fault boundaries, and later application workloads.

**Maintenance checklist:** Label state (PROPOSED / VERIFIED), date and scope; record evidence; use maintainable version-controlled source (SVG/Mermaid where suitable); keep visuals synchronized with actual changes; preserve historical reasoning; avoid secrets, excessive detail, and decorative infographics. Link diagrams from README and relevant engineering records.


## 2026-11-20 — As-documented physical network

- [Two-node as-documented network diagram](baby-cloud-as-documented-two-node-network-2026-11-20.svg) — reflects documented AT&T BGW620-700 LAN 3 → NERV TP-Link TL-SG116E port 1 and wired Raspberry Pi 4 nodes `CASPER-01` and `BALTHAZAR-02`; Windows `REAPER-ONE-PC` is shown as an SSH client with its current physical attachment **unverified**. Pi switch-port numbers are **not established**. This is a diagram of recorded evidence, **not a new live network test**. The most recent recorded node SSH verification is November 8, 2026. MPI is not implemented.

The earlier [eight-node topology](baby-cloud-conceptual-eight-node-topology.svg) remains **PROPOSED**, not an as-built representation.
