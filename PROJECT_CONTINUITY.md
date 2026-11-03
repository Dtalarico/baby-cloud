# Baby Cloud — Project Continuity

**Established:** 2026-11-01
**Purpose:** Durable operational handoff and next-action index for the Baby Cloud project. This is an additive index of the existing README, BC-DOC-001, architecture, decisions, procurement and dated journals. It does not replace or rewrite any historical record.

## Mandatory start-of-session protocol
Before proposing work or changing this repository, read this entire continuity document, the current README, `docs/documentation-policy.md`, `docs/architecture.md`, applicable decision and procurement records, and the latest dated engineering journals. Inspect relevant scripts and diagrams before discussing their execution or meaning. When the author asks for an archival read, inventory and read **every** current repository file, not a selective sample. Recheck GitHub and live device state instead of treating prior chat context as proof. If any required source cannot be read, disclose that limitation and do not proceed on unsupported assumptions.

## Mandatory end-of-session handoff
After every substantial approved session, append a dated entry with: objective; starting verified state; authorizations and decisions; exact changes/actions; observations and safe evidence references; errors, partial results and open risks; distinction between PROPOSED, APPROVED, EXECUTED and VERIFIED; authorship/assistance; and the **next exact task** with prerequisites, verification and authorization gate. Keep the document readable to an intelligent nontechnical reader and sufficiently precise for a new engineer. Never silently rewrite earlier history. If current-state summaries become stale, add dated superseding notes and retain earlier entries.

## Governing engineering doctrine
Follow BC-DOC-001 and the approved 2026-10-27 cross-project synthesis with LinuxLingo LL-DOC-001: historical intent and provenance; operational purpose before syntax; atomic instruction; observable success, failure and partial outcomes; evidence separate from interpretation; progressive independent competence; privacy and coherent, approved Git changes. The founding Baby Cloud objective remains a real multi-node Beowulf-style compute cluster, not merely a generic services lab.

## Current documented state — as of 2026-11-01
- Original ambition: eight Raspberry Pi compute nodes. Initial affordable hardware milestone: two Raspberry Pi 4 kits, received and visually inventoried on 2026-10-26; visual receipt is **not** proof of functional commissioning.
- Planned naming: Casper-1 and Balthasar-2 for the initial nodes, Melchior-3 for a future node, then Spike Spiegel, Jet Black, Faye Valentine, Ein and Edward Wong (Ed). Names are plans, not verified configured hostnames.
- The 2026-10-31 microSD inspection journal documents reading the supplied card through Windows and identifying its image; the later OS decision addendum directs preservation and initial inspection of the supplied image rather than immediate reimaging.
- The 2026-10-31 NERV switch journal documents the TP-Link TL-SG116E powered, named, linked to the AT&T gateway on port 1, browser-accessible, and a local configuration export. This does **not** prove Pi boot, SSH, cluster networking or distributed computation.
- No verified Pi SSH session, multi-node workload, or completed Beowulf milestone is established in the reviewed journals.
- Historic RHEL/VM lab entries and older topology documents are retained as historical records; they must not be confused with the currently commissioned physical cluster.

## Immediate next exact task
With the author, reread `docs/decisions/2026-10-31-os-commissioning-strategy.md`, `journal/2026-10-31-microsd-reader-first-inspection.md`, and `journal/2026-10-31-nerv-switch-commissioning.md`. Confirm current physical and network state. Then plan the first **safe headless Raspberry Pi boot and verified SSH login** using the supplied OS image, without unapproved flashing, formatting, credential exposure or irreversible changes. Explain each operation before asking the author to execute it; document actual outcomes afterward. Do not claim a successful boot until observed.

## Safety and change boundaries
This document is a continuity-only addition. No hardware command was run, no configuration changed, no software tested and no prior file modified by this addition. Any subsequent configuration, credential, network or storage changes require the author's specific authorization and evidence of results.

## Next handoff entry template
### YYYY-MM-DD — Session topic
**Goal:**

**Starting verified state:**

**Approvals and decisions:**

**Actions and observed evidence:**

**Failures, uncertainties, risks:**

**Current verified state:**

**Next exact task / prerequisites / approval gate:**

**Author and assistance provenance:**


---

## Mandatory complete-repository archival reading gate — 2026-11-02

**Status: Author-directed, mandatory.** Before **each new Baby Cloud work session or resumption of engineering operations**, the assistant must obtain a fresh inventory of the current repository and read **every current file in full**, including README, continuity, documentation policy, architecture, decisions, procurement, journals, scripts, and diagram source files. This is an **archival reading of the repository**, not a selective retrieval, summary, cached memory, or assumption that earlier reading remains current. Read through the GitHub connection; **do not clone the repository** merely to satisfy this requirement.

**Auditable completion gate:** Record the repository/ref or commit inspected, the complete path inventory, which files were successfully read, and any inaccessible, binary, oversized, or otherwise unreviewable content. For nontext files, inspect their metadata and contents using a suitable supported method and explicitly distinguish what was and was not inspected. **Do not claim “entire repository read” unless the inventory and every file have been accounted for.** If the tool cannot provide a reliable complete inventory or a file cannot be inspected, mark the archival gate **INCOMPLETE**, disclose the exact limitation, and do not proceed with engineering instructions or changes until the author resolves the gate or explicitly approves a narrower exception. The author must not have to audit the assistant to discover omitted files.

**Operational discipline:** After the reading gate passes, reconcile historical documentation with the latest author-provided evidence; distinguish PROPOSED, APPROVED, EXECUTED, and VERIFIED. Before a hardware, storage, networking, or Git write, identify the exact target, risk, rollback/recovery path, expected evidence, and approval. Never infer integrity or successful execution from a filename, folder size, screenshot, or prior assistant statement alone. Preserve history by dated, additive corrections. Re-run this archival gate at the next session even if it passed previously.

**Reason for this rule:** On 2026-11-02 the assistant repeatedly proceeded with Casper-1 backup guidance without being able to certify a complete current-file inventory and full archival reading, forcing the author to audit the assistant. This is a documented process failure, **not** proof of damage to the microSD or backup. The user-reported raw backup exists; the photographed backup **folder** contained one file totaling 64,088,965,120 bytes, consistent with but not proof of a valid full-card image. Individual image identity, readability, and source fidelity remain **UNVERIFIED**. Do not repeat the same incomplete review as a completed prerequisite.
