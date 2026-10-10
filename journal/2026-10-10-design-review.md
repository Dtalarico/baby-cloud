# Design Review — 2026-10-10

## Session Type

Architecture discussion and documentation planning. **No Raspberry Pi hardware deployment, cluster reconfiguration, Gentoo installation, or Linux From Scratch build occurred as part of this discussion.**

## Original Vision Reaffirmed

The project's original goal is an **eight-node Raspberry Pi Beowulf-style cluster**, with an initial four-node build. The user wants a real distributed-computing system rather than a collection of unrelated single-board computers.

## Intended Practical Purpose

Radio Free Redoubt was connected to Baby Cloud to give the computing system meaningful work. Potential applications include radio-signal logging and processing, data storage, automation, and the proposed Baby Cloud DX League's services and dashboards.

These applications are conceptual or planned, not claims of implementation.

## Learning and Certification Objectives

The project is intended to deepen Linux knowledge alongside formal Red Hat certification preparation:

- RHCSA administration skills
- RHCE-level automation and engineering skills
- Further advanced Red Hat certification study toward the user's 2029 goal
- Gentoo experience
- Linux From Scratch experimentation
- Kernel, boot, filesystem, process, service, and toolchain understanding

The separate RHCSA study track remains distinct from the Baby Cloud engineering repository.

## Discussed Architecture Options — Not Yet Decided

- Four initial Raspberry Pi nodes and an eventual eight-node compute system
- Beowulf-style distributed computing versus clustered virtualization
- Future virtual-machine experiments hosted on capable Raspberry Pi hardware
- Potential Gentoo and Linux From Scratch laboratories
- Allocating some future capacity to radio workloads and some to experiments

**No final node-by-node role assignment, Linux distribution selection, hypervisor choice, or cluster scheduling stack was made.**

## Important Technical Constraints

- Distributed computation and virtualization are different architectural patterns.
- A VM normally runs using the CPU and RAM of a particular host; a cluster does not automatically combine all resources into one large VM.
- Raspberry Pi ARM64 architecture matters for guest operating systems and Linux From Scratch instructions.
- Hardware specifications and actual performance must be established before deciding what can be hosted.

## Agreed Documentation Action

Update the project README and architecture notes to capture the original eight-node vision and reflect the proposed directions accurately, without labeling plans as completed infrastructure.

## Next Practical Steps

1. Complete current Linux coursework and midterm preparation.
2. Acquire and establish the initial four-node Raspberry Pi environment.
3. Record hardware, topology, installation, administration, and test evidence in the repository.
4. Revisit cluster software, compute workloads, virtualization, and Nodes 5–8 only after the initial system's capabilities are known.

## Session Outcome

An updated statement of project intent and open design questions. **Documentation change only.**
