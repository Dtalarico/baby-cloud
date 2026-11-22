# Operational Start — Baby Cloud

**Status:** APPROVED operational navigation standard, 2026-11-22  
**Purpose:** Start bounded work without re-reading unrelated archival history, while keeping that history preserved and discoverable.

## Use this record first

This file is the operational entry point for routine work. It tells an operator or assistant what is currently documented, what narrow evidence to read next, and where the boundaries are.

It does **not** replace the project archive. It prevents the archive from becoming an obstacle to simple, authorized operations.

## Reading modes

| Mode | Required reading | Use it for |
|---|---|---|
| **Routine bounded operation** | This file; the current README; the relevant latest journal or task record; and any file explicitly named below | SSH reconnects, a single status check, one documented troubleshooting task, or another narrowly scoped operation |
| **Substantial engineering or documentation change** | Current README, this file, PROJECT_CONTINUITY.md, BC-DOC-001, task-relevant architecture/decision/procurement/journal records, and every file affected by the change | Installing software, changing network/storage/OS configuration, MPI design or implementation, changing architecture, or editing current documentation |
| **Archival review** | Complete tracked-file inventory and every current file | Explicit archive request, substantial repository reorganization, reconciliation of conflicting history, or when the author expressly directs a full review |

A full archival review is **not** the default prerequisite for a routine bounded operation. When evidence suggests that the operational record is stale, incomplete, or contradicted, stop and escalate to the appropriate broader mode.

## CASPER-01 access profile

**Current documented evidence (not a live retest):**

- Node: `CASPER-01` (Raspberry Pi 4, Raspberry Pi OS)
- Account: `david-talarico`
- Last documented wired IPv4: `192.168.1.76`
- Last documented SSH result: accessible from REAPER-ONE-PC by both the configured hostname and numeric IPv4
- Last documented physical-node verification: 2026-11-08
- Network context: wired Ethernet through the TP-Link TL-SG116E switch to the existing AT&T gateway
- Project boundary: MPI and multi-node computation are not implemented or verified

**Minimum evidence for a routine Casper reconnect:**

1. This profile and the current README.
2. `docs/journal/2026-11-03-casper-reboot-and-hostname.md` for the prior hostname/IP evidence.
3. The current observed screen or command output.

Do not pull unrelated procurement, historical planning, or Node 2 commissioning records into a simple reconnect unless the evidence points there.

**Safe operating rule:** inspect the actual prompt/error first; identify whether the failure is name resolution, reachability, SSH authentication, host-key verification, or a remote-shell problem; then make only the smallest authorized change and verify the intended end-to-end result.

## Keeping this record current

After a material verified change to a node's access method, address, hostname, account, network path, or operating boundary:

1. Add dated evidence to the proper journal.
2. Update this profile and README current-status links only where the verified state actually changed.
3. Preserve earlier facts in their dated records; do not silently rewrite history.
4. If an update changes the project architecture or documentation structure, use the broader reading mode above.

**Verification boundary:** This file records a navigation and operating standard. It does not claim a live test on 2026-11-22.
