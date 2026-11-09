# Baby Cloud — Portfolio Readiness and Evidence Roadmap

**Established:** 2026-11-09  
**Status:** Author-directed **portfolio objectives**, not a claim that all milestones are achieved or that a particular employer will hire the author.  
**Audience:** Linux / cloud / infrastructure operations interviewers, including potential Red Hat and Kyndryl reviewers.  
**Authority:** Author-approved career orientation; technical milestones remain subject to scope, funding, safety and individual approval.  
**Project identity:** Baby Cloud is *first* an expandable Beowulf-style parallel-computing cluster. Portfolio goals must strengthen, not replace, that mission.

## Why this exists

The repository already has meaningful evidence of real hardware, networking, Linux SSH administration, documented diagnosis and recovery, version control, and careful engineering notes. **Its missing hiring evidence is not primarily more documentation.** An interviewer should also see working, repeatable administration and computing results: independently understandable demonstrations, automated reproduction, validated recovery, and test artifacts.

These objectives are *signals of relevant skills*, not employer-specific hiring criteria, certification guarantees or a requirement to finish all eight nodes before applying. Do not inflate assisted execution into unaided mastery.

## Starting evidence — 2026-11-09

| Capability | Current evidence | Honest status |
|---|---|---|
| Two Raspberry Pi 4 nodes / LAN / SSH | CASPER-01 and BALTHAZAR-02 commissioned; independent Windows SSH hostname login observed; November 8 journal | **DOCUMENTED / VERIFIED in earlier session**; not retested today |
| Real Beowulf compute | MPI selection and cross-node computation not yet executed | **OPEN** |
| Enterprise Linux practice | Existing RHEL/VM course work; future Rocky Linux rollout proposed | **PARTIAL / separate labs**; do not claim operating Rocky physical nodes |
| Automation | Scripts and repeatability are aims; no cluster rebuild by automation verified | **OPEN** |
| Recovery | Card image/backup discussion exists; restoration fidelity and functional recovery unverified | **OPEN** |
| Observability & security | Architecture possibilities documented; implemented baseline and operator runbooks not demonstrated | **OPEN** |
| Reproducible public demonstration | Documentation and journal exist; short verified demonstration and repeatable independent test not yet packaged | **OPEN** |

## Priority portfolio milestones and acceptance evidence

### BC-P1 — Verified two-node MPI computation (highest near-term priority)
**Goal:** Two physical nodes participate in one computation and produce one correct, verifiable combined result.

**Acceptance:** Capture software versions, host inventory, command/program, observed participating nodes, checked output, single-node baseline, two-node runtime, communication overhead and errors. Record whether the run was guided or independent. Include a small source-controlled program or script and a nonsecret reproduction guide. A successful SSH ping alone does **not** pass.

### BC-P2 — Reproducible enterprise Linux administration
**Goal:** Demonstrate practical Rocky Linux or RHEL-style administration, first in an appropriate supported test environment, then on physical nodes only after ARM compatibility has been validated.

**Acceptance:** Evidence for account/group and permission controls; services/boot policy; network configuration and diagnostics; package management; storage/filesystems; and troubleshooting. Include commands, observed verification, side effects and rollback. Cross-reference external RHCSA practice where appropriate without claiming certification.

### BC-P3 — Automation and repeatable node setup
**Goal:** Automate a bounded baseline configuration using reviewed shell scripts or Ansible, without obscuring the commands' operational meaning.

**Acceptance:** Source-controlled configuration, documented prerequisites, idempotent/repeated run results, before/after evidence and a controlled failed-run/recovery example. Record exact compatible OS/hardware and limitations. Do not run unreviewed automation on the working cluster.

### BC-P4 — Backup, restore and fault recovery
**Goal:** Prove recovery, not merely creation of a backup file.

**Acceptance:** Document what is protected, independent backup location and integrity check; perform an approved sample restore to spare/test media or an isolated environment; verify the restored system or files actually work; record time, failures and rollback. Never overwrite a working microSD without explicit approval and a validated protection plan.

### BC-P5 — Monitoring, security and operations
**Goal:** Make a small but credible operational environment.

**Acceptance:** Document basic CPU/memory/storage/network monitoring, service status, logs and alert behavior; least-privilege remote access and update strategy; one simulated service failure with detection, diagnosis, restoration and a plain-English incident report. Avoid publishing credentials or private network identifiers.

### BC-P6 — Four-node scale-out and performance evidence
**Goal:** Expand to four nodes when funded; test how the same MPI job scales on one, two and four nodes.

**Acceptance:** Verify each new node independently, including any proposed Rocky Linux hosts; execute the same workload with controlled inputs and comparable measurement methodology; publish results, limitations and a clear small diagram of the **verified** configuration. Do not confuse more nodes with guaranteed speedup.

### BC-P7 — Hiring-manager demonstration package
**Goal:** Let a reviewer understand the real problem, implementation and evidence quickly.

**Acceptance:** README entry point with a one-minute summary, current status and limits; link to architecture diagram, reproducible demo, sanitized outputs/results, two or three concise troubleshooting case studies, and a skills-to-evidence matrix. A reader should not need to trawl every journal. Show authorship/AI assistance accurately.

## Future optional evidence (not a blocker for applications)

Eight-node completion; DX League; NAS; Gentoo and Linux From Scratch nodes; virtualization comparison. These strengthen scope only if implemented and validated. Do not make the entire project's completion a prerequisite for seeking entry-level work.

## Operating rules

- Maintain status as **PROPOSED / APPROVED / EXECUTED / VERIFIED**, never infer completion.
- Use documented real-system results and meaningful tests over unvalidated promises.
- Align diagrams to verified versus conceptual systems; update only when useful.
- Follow the existing complete-repository archival read, author approval, safe-change, security and continuity gates.
- After each meaningful milestone, update the status/evidence links in this document and surface the most important results in the README; preserve dated historical context.
- This document is a plan, **not proof** that the listed future tests, code or recovery tasks have been performed.
