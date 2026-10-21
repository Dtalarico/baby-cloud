# Baby Cloud Architecture

## Overview

Baby Cloud is a personal infrastructure and distributed-computing laboratory intended to develop Linux administration, networking, automation, and systems-engineering skills. The original long-term vision is an eight-node Raspberry Pi Beowulf-style cluster, with four physical nodes originally planned as the first build. The current initial build is two Raspberry Pi 4 nodes because the four-node starting scope was constrained by funding; the four- and eight-node objectives remain. See [the dated decision record](decisions/2026-10-21-two-node-initial-build.md).

The project also includes a separate RHEL-based virtual-machine learning environment and planned applications associated with Radio Free Redoubt.

## Engineering Goals

- Administer Linux systems and networked services
- Build, measure, and troubleshoot distributed workloads
- Explore virtualization and containers
- Implement monitoring, logging, storage, and recovery
- Practice infrastructure automation and reproducible deployment
- Support practical radio-reception workloads as appropriate
- Maintain evidence-based architecture and engineering records

## Existing Work and Documentation

Earlier lab work documented installation and configuration of RHEL virtual machines, including a baseline snapshot and clone. The repository also includes initial plans, documentation, and placeholder automation scripts.

These virtual-machine exercises are **not** evidence that the proposed Raspberry Pi hardware cluster, container services, or eight-node Beowulf architecture have been deployed.

## Architecture Under Evaluation

A **Beowulf-style compute cluster** uses networked machines for distributed computation and can employ tools such as MPI (Message Passing Interface). A **virtualization cluster** manages virtual-machine workloads on host machines. A **general-purpose infrastructure or cloud lab** may provide containers, web services, storage, networking, monitoring, and application workloads.

Baby Cloud may explore all three approaches. Their roles must not be conflated, and no final combined architecture is approved at this stage.

### Initial hardware milestone

- First acquire, assemble, and bring online **two Raspberry Pi 4 nodes**; expand to the originally intended four-node milestone when feasible
- Establish networking, remote administration, consistent identities, and repeatable baseline configuration
- Measure actual resources and capabilities before fixing workload assignments
- Keep the environment recoverable and document verified results

**Current status (2026-10-21):** Two Vilros Raspberry Pi 4 4GB starter kits and a TP-Link TL-SG116E 16-port Gigabit Easy Smart switch with five 3-foot Cat6 cables have been ordered and confirmed. No equipment has yet been verified as delivered, installed, or operational. The initial switch choice is settled for this purchase; the exact ARM64 Linux distribution and final cluster software remain under evaluation. The 2026-10-12 Pi 5 procurement listing was a documentation error, not an actual change in hardware intent. The 2026-10-12 Pi 5 procurement listing was a documentation error, not an actual change in hardware intent.

## Eight-node target

The eight-node Beowulf-style system is the original long-term ambition. Roles for Nodes 5–8, cluster software, job scheduling, storage, network fabric, and compute workloads remain **undecided**.

### Virtualization and Linux internals

Gentoo and Linux From Scratch are future educational experiments. Potential virtual-machine hosting on Baby Cloud requires assessment of the actual Raspberry Pi model, ARM64 guest compatibility, memory, storage performance, and hypervisor capabilities. A VM generally consumes the resources of its host node; a cluster does not automatically pool CPU and RAM for a single VM.

Linux From Scratch and Gentoo have **not** been selected as permanent node operating systems or installed as part of the physical cluster.

### Proposed application workloads

Radio Free Redoubt and the Baby Cloud DX League are potential consumers of cluster services: SDR-related logging, ingestion, databases, monitoring, scheduled jobs, analysis, dashboards, and backups. Application requirements and which processes meaningfully benefit from parallel computation remain to be determined.

## Open Design Questions

1. What exact hardware models, RAM capacities, boot media, power and cooling arrangements will be used?
2. What cluster topology and network fabric will meet compute and management needs?
3. Which workloads need distributed computation versus ordinary network services?
4. What software stack should provide MPI, scheduling, monitoring, and configuration management?
5. Where, if anywhere, should virtual machines run, and how will ARM64 compatibility be managed?
6. Which services should remain stable while experimental systems are rebuilt?
7. How will backup, restore, documentation, and test evidence be maintained?

## Documentation Discipline

Record proposals separately from approved decisions, completed actions, and verified results. Document commands executed, observed outcomes, problems, recovery steps, and design tradeoffs in dated journal entries.

See `journal/2026-10-10-design-review.md` for this planning discussion.
