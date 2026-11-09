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
