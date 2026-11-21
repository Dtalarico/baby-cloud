# Current documented physical topology — 2026-11-20

The diagram below describes the **last documented** two-node physical network; it is not a live retest. [View the version-controlled SVG](../diagrams/baby-cloud-as-documented-two-node-network-2026-11-20.svg).

- AT&T BGW620-700 gateway **LAN 3** connected by Ethernet to **port 1** of the TP-Link TL-SG116E 16-port Gigabit switch (NERV), as documented October 31.
- Two Raspberry Pi 4 (4 GB) nodes, **CASPER-01** and **BALTHAZAR-02**, documented wired to the switch and independently SSH-accessible from Windows as of November 8.
- **REAPER-ONE-PC** is a documented Windows SSH client. Its current physical connection type is not established by the repository, so the diagram shows a **logical** LAN path, not an invented Ethernet or Wi-Fi cable.
- The individual switch port numbers for the Raspberry Pis are not documented. No VLAN isolation, MPI job, NAS, or additional physical nodes are verified.

**Historical material follows unchanged:** The original description below concerns an earlier virtualized RHEL lab concept. It must not be read as the current as-built physical topology.

---

# Network Topology

## Overview

The Baby Cloud lab network is designed as a small internal infrastructure environment used to practice Linux system administration networking and container deployment.

The environment is isolatedWithin a virtualized Network and simulates a small production infrastructure.

## Network Layout

Components include:

- Router / Gateway
- RHEL host server
- Internal lab network
- Containerized Services

## Example Structure:
```
Internet
      |
Router / Gateway
      |
Lab Network
      |
RHEL Host
      |--------Containers
      |--------Services	
```
## Future Expansion 

- Additional VM nodes
- Reverse proxy
- Load balancing
- Monitoring stack

