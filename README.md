# Baby Cloud

## Governing Documentation Principle

**The future must know what the past was thinking.**

Baby Cloud shall preserve not only what was done, but what was intended, what was understood at the time, why decisions were made, and what evidence supported them.

All documentation shall be understandable to an intelligent reader without an engineering background. Our practical standard is simple: **write so that the project author's mother can follow the work.**

Technical accuracy and human readability are equally required. Corrections shall preserve historical context rather than silently rewriting earlier decisions.

See the [project documentation policy](docs/documentation-policy.md) for detailed requirements.

## Project Overview

Baby Cloud is a personal Linux infrastructure and distributed-computing engineering project, with a long-term goal of building an eight-node Raspberry Pi cluster inspired by Beowulf computing systems.

The project is designed to develop practical expertise in Linux administration, networking, distributed computing, virtualization, infrastructure automation, monitoring, and system recovery.

Baby Cloud also serves as a hands-on learning environment for Red Hat certifications and advanced Linux study.

## Original Engineering Vision

The original objective is to build an interconnected eight-node Raspberry Pi computing system capable of running distributed workloads.

The original implementation plan called for beginning with four physical nodes and expanding toward eight. That original intention is preserved here; the current two-node starting scope and its funding rationale are documented separately.

Final node assignments, cluster software, operating systems, scheduling architecture, and resource allocation remain under evaluation.

## Current Project Status — 2026-10-21

**Current implementation milestone:** Plan to acquire **two Raspberry Pi 4 nodes** first, establish a working Linux/networking foundation, then expand to four nodes and ultimately pursue the original eight-node goal. This smaller first purchase was chosen because available funding initially constrained the four-node starting plan; it does not replace the original vision. **On 2026-10-21, the author ordered two Vilros Raspberry Pi 4 4GB Complete Starter Kits and, separately, a TP-Link TL-SG116E switch and five Cat6 cables from Amazon.** Both orders are confirmed; delivery, assembly, deployment, and testing remain pending. The two-node scope protects the author's cash reserve while funding is uncertain.

See the [dated decision record](docs/decisions/2026-10-21-two-node-initial-build.md) and [current procurement checklist](docs/procurement/current-two-node-procurement.md). The earlier Pi 5 estimate was a documentation error; Raspberry Pi 4 was intended throughout.

**Phase labels:** The phase names below describe the original architecture roadmap, not completed milestones. The two-node start is the current foundation sub-milestone. A separate use of “phase two” has not yet been reconciled with these roadmap labels; no phase completion is asserted.

## Node naming convention — clarified 2026-10-26

The proposed first three node names use the canonical *Neon Genesis Evangelion* MAGI spellings: **Casper-1**, **Balthasar-2**, and **Melchior-3**. The numeric suffixes identify the Baby Cloud node order, not the fictional MAGI numbering. Only the first two physical kits have been received; no hostnames have been configured. See the [dated naming correction](docs/decisions/2026-10-26-magi-naming-correction.md). The original October 23 record is preserved with an explicit appended correction.

## Primary Engineering Objectives

- Build and administer a multi-node Linux environment.
- Study Beowulf-style distributed computing and parallel processing.
- Develop proficiency in networking and remote administration.
- Explore containerization and virtualized workloads.
- Implement monitoring, logging, backups, and recovery.
- Learn infrastructure automation and reproducible configuration.
- Build a documented technical portfolio using GitHub.

## Applied Workloads: Radio Free Redoubt

Baby Cloud is intended to support Radio Free Redoubt, a separate radio-reception and amateur-radio learning project.

Potential workloads include:

- Software-defined radio data collection
- Radio signal logging and metadata processing
- Scheduled monitoring and automation
- Database and storage services
- Radio reception statistics and dashboards
- Support for the proposed Baby Cloud DX League

These capabilities are planned, not yet deployed.

## Linux Engineering and Certification Track

Baby Cloud supports practical Linux education extending beyond basic system administration.

Learning objectives include:

- Red Hat Enterprise Linux administration
- RHCSA and RHCE preparation
- Advanced Red Hat certification studies
- Gentoo Linux installation and configuration
- Linux From Scratch experimentation
- Linux boot processes, kernels, filesystems, libraries, and system services
- Troubleshooting, recovery, and infrastructure automation

Linux From Scratch and Gentoo are proposed learning environments, not confirmed operating-system assignments for specific Raspberry Pi nodes.

The RHCSA training track remains separate from the Baby Cloud infrastructure repository, although practical skills from that training may be applied here.

## Development Strategy

**Phase 1 — Foundation**

Begin with a documented, working **two-node Raspberry Pi 4** Linux environment; expand to the originally intended four-node foundation milestone when feasible.

**Phase 2 — Expansion**

Explore the architecture and requirements for an eight-node Beowulf-style cluster.

**Phase 3 — Operational Workloads**

Introduce appropriate monitoring, distributed-computing experiments, and Radio Free Redoubt services.

**Phase 4 — Advanced Systems Engineering**

Develop virtualization experiments, Linux From Scratch and Gentoo learning environments, advanced automation, and recovery procedures.

Phases describe intended development priorities, not completed work or fixed deadlines.

## Repository Structure

- `docs/` — Architecture, decisions, services, and technical documentation
- `diagrams/` — Infrastructure and networking diagrams
- `scripts/` — Infrastructure setup and automation scripts
- `journal/` — Dated engineering notes, experiments, and troubleshooting records

## Engineering Documentation Standard

Development records should distinguish clearly between:

- Proposed designs
- Decisions approved
- Work actually performed
- Results verified
- Problems encountered
- Remaining questions

The purpose of the repository is not merely to present a finished system. It is to document the engineering process used to create, understand, maintain, and improve it.


## Engineering Development and Competency Demonstration

Baby Cloud is both an operational infrastructure project and a record of learning to administer that infrastructure independently. Preserve the progression from requirements and design decisions through implementation, observed failures, troubleshooting, verified results, and improved procedures. A successful deployment alone is not evidence that every operation was completed without help; distinguish guided work, assisted work, and independently demonstrated work in dated engineering journal entries.

The separate [RHCSA practical administration lab framework](https://github.com/Dtalarico/rhca-training/blob/main/docs/PRACTICAL_LAB_FRAMEWORK.md) develops individual Linux administration skills through controlled, progressively independent tickets. Baby Cloud provides a larger, integrated environment in which those skills can be applied to real nodes, networking, services, automation, and recovery. Cross-reference relevant learning when useful, but keep certification exercises and Baby Cloud deployment records in their respective repositories.

**Portfolio standard:** demonstrate not only what was built, but how engineering competence was developed, tested, verified, and improved through actual work. Record only work that has been performed; mark proposed activities and future templates as proposed.

## Instructional Continuity and Documentation Ownership

**The engineer-in-training is the intended author of the engineering record.** The assistant serves as instructor, reviewer, and documentation coach—not a permanent ghostwriter. Earlier records may have been drafted by the assistant from the student's descriptions; this is a starting point for learning documentation, not evidence that the student independently authored those entries.

Gradually transfer authorship: **demonstrate → co-write → student drafts with feedback → student writes and verifies independently**. For each journal entry, the student should learn to state the objective, starting state, decisions, commands/actions, authentic evidence, errors and troubleshooting, verification, and lessons learned. Record the current level of assistance honestly and do not invent outcomes.

**Cross-conversation handoff:** Conversation context can be incomplete or unavailable in a new thread. The repository is the durable source of project decisions and documented evidence, not a reproduction of the assistant's private internal state. Before advising on new work, consult the current README, relevant architecture/decision documents, and latest dated journal entries; identify the last verified state, open questions, immediate next step, and any instructions about how the student is learning. Ask the student to confirm live system state rather than assuming an old record remains current. Update durable records when material decisions or progress occur, without overwriting historical evidence. Do not put secrets or sensitive personal details into the repository.

The objective is not to have the assistant produce polished entries indefinitely. **It is to teach the student to independently write accurate, professional engineering documentation and maintain continuity across work sessions.**

## Long-Term Objective

Develop Baby Cloud into a functioning eight-node Linux engineering laboratory that demonstrates practical systems administration, distributed computing, useful radio-related workloads, and progressively deeper understanding of Linux architecture.


---

## Cross-project documentation and operational verification — 2026-10-27

Baby Cloud's historical engineering principle remains **“The future must know what the past was thinking.”** Under the author's approved documentation synthesis with LinuxLingo, [BC-DOC-001](docs/documentation-policy.md) now includes a dated **additive** extension emphasizing operational purpose, observable success and failure, partial system outcomes, genuine system-generated evidence, explicit verification, and progressively independent technical documentation.

The extension draws on [LinuxLingo's LL-DOC-001](https://github.com/Dtalarico/LinuxLingo/blob/main/docs/documentation-policy.md), its existing instructional architecture, and Adaptive Infrastructure Tutoring Prompt v11. These concepts improve how Baby Cloud records physical builds, service configuration, troubleshooting, and commissioning without turning this infrastructure project into a quiz application. The two repositories retain their distinct design purposes and historical records.

**Historical preservation:** Earlier README text, engineering journals, procurement records, decisions, and phase descriptions above remain unchanged. This dated addition does not assert that an untested Raspberry Pi or network service has been commissioned. Refer to the latest dated engineering journal for actual verified state.
