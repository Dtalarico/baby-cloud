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


## 2026-11-03 — CASPER-01 verification handoff

The author rebooted CASPER-01 over SSH and successfully reconnected at 192.168.1.76. A local hostname warning was corrected by changing the 127.0.1.1 mapping in /etc/hosts from raspberrypi to CASPER-01; sudo whoami then returned root without warning. The ip -br addr output showed eth0 UP with 192.168.1.76/24 and wlan0 DOWN. See docs/journal/2026-11-03-casper-reboot-and-hostname.md for the detailed record. Windows .local resolution remains unresolved. Re-read the full repository before the next engineering session. These actions were performed by the author with AI guidance.


---

## 2026-11-08 — BALTHASAR-2 first-boot headless preparation handoff

The author reports that Node 2's **original, never-booted** Vilros microSD is inserted through the USB card reader in the older Windows computer, and File Explorer displays **`bootfs (E:)`**. This is a report of the mounted volume label/drive letter, not yet verification of image version, card identity, SSH configuration, first user, or boot. The author reaffirmed the decision to preserve the preloaded image and specifically requested rigorous, dated documentation of reasoning, choices, commands, evidence, and failures as work proceeds.

**Archival reading completed:** The assistant inventoried the nontruncated recursive Git tree on `main` at `417d438de7c1b5c90e762715776a777a477ef7c3` and read all **24 tracked files**, including `diagrams/baby-cloud-conceptual-eight-node-topology.svg` and `scripts/setu-rhel.sh`. No tracked file was inaccessible. This gate is specific to this session and must be repeated before the next new engineering session.

**Current state:** Read-only planning; no Node 2 card write, reflash, account provisioning, SSH enablement, boot or SSH login. No credentials stored. **Next exact action:** inspect `bootfs (E:)` for `issue.txt`, `ssh`, and `userconf.txt` and verify card/disk identity before any write. See `docs/journal/2026-11-08-balthasar-2-headless-preparation.md` for the detailed decision and evidence record. Raspberry Pi OS first-boot SSH and secure user provisioning remain conditional on verification of this image.


---

## 2026-11-08 — END-OF-WEEK HANDOFF: two SSH-accessible Raspberry Pis; MPI next

**AUTHOR-DECLARED STOPPING POINT:** The author completed the desired initial network/headless provisioning work for this week and explicitly deferred further architecture decisions to next week. The next major deliverable is an **MPI (Message Passing Interface) / Beowulf architecture decision**, followed by demonstrating real inter-node parallel work. Do not treat MPI or Beowulf as already implemented. Additional future nodes depend on available funding. Full details and chronology are appended in `docs/journal/2026-11-08-balthasar-2-headless-preparation.md`.

**NODE 1 — CONFIRMED:** Raspberry Pi `CASPER-01`; login `david-talarico`; documented wired IPv4 `192.168.1.76`; current session screenshots confirm successful SSH from REAPER-ONE-PC using both the numeric IPv4 address and **`ssh david-talarico@CASPER-01`** (Windows resolved hostname by IPv6 link-local). Its original first-boot setup used directly attached display/keyboard before SSH was enabled.

**NODE 2 — FIRST HEADLESS BOOT VERIFIED:** Raspberry Pi 4 with original repaired preloaded microSD (FAT32 partition repaired using CHKDSK); first-boot `ssh` marker and `userconf.txt` containing username `david-talarico` plus a SHA-512-crypt password hash; WSL drive unmounted and Windows card ejected; card installed in Pi and powered via prewired Ethernet. REAPER-ONE-PC successfully resolved and pinged `raspberrypi.local` over IPv6 and SSH-authenticated to `david-talarico@raspberrypi.local`. A screenshot verified interactive `david-talarico@raspberrypi:~ $` prompt. Thus remote first-boot setup **without local monitor or keyboard** is demonstrated.

**NODE 2 NAMING — EXECUTED, FINAL RECONNECT STILL UNVERIFIED:** On Node 2, screenshot shows `sudo hostnamectl set-hostname BALTHAZAR-02`, then a locally displayed old `127.0.1.1 raspberrypi` hosts entry, then editing `/etc/hosts` with Nano. A final `cat /etc/hosts` photograph showed `127.0.1.1 BALTHAZAR-02`. The author clarified **two-digit `02`**, not `2`. The photographed literal uses **Z** (`BALTHAZAR-02`); prior historical naming proposal `Balthasar-2` used **S**, so preserve both without silent rewriting. The shell prompt in that existing SSH session still displayed `raspberrypi`; this can remain stale until a new shell. No verified fresh login as `ssh david-talarico@BALTHAZAR-02` or post-edit `hostnamectl` output is documented. Do not assert those final verification steps were completed.

**REQUIRED WHEN WORK RESUMES:** Read the full current repository under the established archival gate; reconcile the precise intended naming convention with author if needed; verify effective Node 2 hostname and new-name SSH resolution; confirm both devices can communicate directly; then decide MPI implementation, host inventory and shared-user conventions, authentication, minimal distributed test and acceptance criteria. Preserve one-action-at-a-time guidance and explicit evidence; do not overrun author's stopping point.


---

## 2026-11-08 — Additional end-of-session caveat: stale Avahi advertisement, teaching correction

**NEW EVIDENCE:** After renaming Node 2 to `BALTHAZAR-02`, Windows PowerShell failed to resolve `BALTHAZAR-02` or `balthazar-02.local`. `ping raspberrypi.local` still succeeded, and a new `ssh david-talarico@raspberrypi.local` login succeeded displaying `Linux BALTHAZAR-02` and prompt `david-talarico@BALTHAZAR-02:~ $`. `systemctl status avahi-daemon` on Node 2 reported **active (running)** but advertised `[raspberrypi.local]`, a stale mDNS advertisement. The author then ran `systemctl restart avahi-daemon` without sudo; graphical polkit authenticated the unit restart and the prompt returned with no visible error. **NOT YET VERIFIED:** Current post-restart Avahi name, Windows resolution of `balthazar-02.local`, and SSH by renamed hostname. Do not overwrite the earlier statement that hostname-based SSH under the new name remains pending.

**CRITICAL TUTORING CONTINUITY:** The author explicitly directed documenting instructional mistakes and corrected teaching methods in **GitHub**, instead of promising future improvement in an ephemeral chat. A dated additive policy is now present in `docs/documentation-policy.md`, and a corresponding incident in today's journal. The assistant had omitted the Avahi/mDNS dependency from the rename procedure and introduced unfamiliar `printf` syntax too abruptly during provisioning. Read and apply these records during the next full-archive gate. A ChatGPT project organization alone does not guarantee full new-chat recall.

**NEXT RECOMMENDED ONE-STEP CHECK:** Observe `systemctl status avahi-daemon` after restart. Then exit remote shell, test `ssh david-talarico@balthazar-02.local` from Windows, and log the actual result. **NEXT MAJOR PROJECT DELIVERABLE:** author-led MPI/Beowulf design choice and later minimal genuine two-node test. No MPI installation or cluster execution is verified.


## 2026-11-08 — FINAL CLOSEOUT: Both nodes accessible by configured hostnames

**VERIFIED UPDATE superseding earlier pending/new-name-SSH wording:** The author independently ran `ssh david-talarico@BALTHAZAR-02` from REAPER-ONE-PC after Avahi's authenticated restart. Windows resolved it to an IPv6 address, SSH explicitly recognized the presented ED25519 key as already known under `raspberrypi.local`, and the authenticated session displayed `Linux BALTHAZAR-02` and `david-talarico@BALTHAZAR-02:~ $`. Successful remote first-boot provisioning and new-hostname login are now fully verified; prior name-resolution failure was resolved. Node 1 `CASPER-01` was independently verified by hostname in this session as well. Thus both installed Raspberry Pis are **SSH-accessible using their configured hostnames**. The author marked this as the end-of-week stopping point and explicitly requested durable documentation of assistant teaching omissions and independently acquired troubleshooting skills. Next deliverable: decide and implement minimum two-node MPI/Beowulf distributed job (not yet attempted); first apply fresh repository reading gate at next session. No need to troubleshoot hostname resolution further unless new evidence arises.


---

## 2026-11-09 — README current-status correction after author review

**Objective:** Ensure visitors, including the NOS-120 instructor, see the verified November 8 commissioning achievements without reading the full engineering journal. The author flagged that the README's old purchasing status obscured completed work.

**Starting evidence and archival gate:** A nontruncated recursive Git tree on `main` at `be6ea443450d2cd8195e9238b25548f2c11fb466` listed **25 tracked files**. All 25 files were fetched and inspected in this session, including the SVG diagram and shell script; no inaccessible tracked files were reported. This gate applies to this documentation session only and must be repeated for future engineering operations.

**Change executed:** Added a prominently positioned, explicitly dated November 9 current-status update to `README.md` and preserved the prior README content as historical planning information. The update links to this continuity record and the detailed November 8 journal, identifies the exact operational names `CASPER-01` and `BALTHAZAR-02`, summarizes the verified SSH and headless-boot accomplishments, and clearly states that MPI has **not** been implemented. Commit: `113f8184278eef55fd487cffee67086a9447d266`.

**Verification boundary:** GitHub confirmed the README file-update commit; no physical device was accessed or tested today, and no additional hardware, operating-system, MPI or network accomplishment is claimed. The user-provided November 8 findings remain the last documented hardware verification.

**Next exact task:** At the author's direction, repeat the current-repository reading gate, confirm live node state, and design the first minimum genuine two-node MPI workload; request approval before installing packages or changing network configuration. Preserve evidence, authorship and failure documentation.

**Provenance:** Documentation update by assistant in response to author's direct README currency concern, grounded in preexisting author-observed journals and continuity records.


---

## 2026-11-09 — Visual documentation requirement established

**Author request:** Use more clear, technically meaningful diagrams throughout Baby Cloud and persist that preference in GitHub for future work sessions. Do not confuse this with a request for busy infographics.

**Archival gate for this documentation session:** Re-inventoried the current nontruncated `main` Git tree at `159f9055fcb1ac81ebaec02db2809b507bccb92b`; all 25 tracked files, including the SVG topology source, were fetched and inspected with no failures. No devices were touched or independently tested.

**Git changes EXECUTED:** Added a dated, additive visual-engineering-documentation standard to `docs/documentation-policy.md` (commit `b570f531308f25ba645e053947ef9e8e7f343cbd`) and a diagram inventory and maintenance checklist to `diagrams/README.MD` (commit `708b0bbacd5cf74e53c26c97fd787cadf951202c`). Existing topology SVG was intentionally not altered. These commits record **policy and planning**, not a newly completed diagram or infrastructure change.

**Future assistant handoff requirement:** When reading this repository, consider diagrams at design, setup, change, troubleshooting and closeout; explicitly label proposed versus verified states; keep current diagrams and linked written records synchronized; date, link, and version source-editable SVG/Mermaid where useful; document when visuals are deferred. Do not silently imply the eight-node diagram reflects actual eight-node deployment. Follow the full reading gate at the next new engineering session.

**Next exact project task remains:** With author authorization, independently verify current node state and plan the minimum two-node MPI experiment. Before changes, determine whether a concise proposed MPI workflow or verified wiring diagram would clarify the work, and record any visual update honestly.


---

## 2026-11-09 — Hiring-readiness evidence roadmap created

**Author instruction:** Make Baby Cloud a hiring-relevant portfolio artifact and document the specific technical demonstrations still needed, while preserving its Beowulf-computing mission. These milestones are evidence goals, not a promise of employment or a blanket definition of Red Hat/Kyndryl hiring criteria.

**Archive review:** The nontruncated recursive `main` tree at `d91e4ddec4c3c5045df44a2d84e4d71d01d073aa` contained 25 tracked files. All 25 were successfully fetched and inspected before documentation changes, including the SVG and shell script. No live hardware check or new technical test was performed.

**EXECUTED documentation changes:** Created `docs/portfolio-readiness.md` (commit `ef9669c9a5381d932b1fc8cc1a6d32b283539f34`) and added its link to `README.md` (commit `84b081149fbb912d7f2d360665538cb7e68a5585`). The evidence roadmap identifies verified existing work versus open deliverables: real MPI job and timing comparisons, Linux/Rocky administration, repeatable automation, proven restoration, monitoring/security/incident recovery, multi-node scale-out, and a reproducible reviewer-facing demonstration. Each proposed milestone requires explicit observable acceptance evidence and accurate attribution.

**VERIFICATION BOUNDARY:** GitHub writes succeeded; no MPI job, deployment, backup restoration, security baseline, or new code implementation was completed by this change. Previously documented two-node commissioning remains the physical baseline. No host/network secret or credential was added.

**Next action:** At the next author-directed engineering session, read the refreshed entire repository, confirm live state, use portfolio BC-P1 as the evidence specification when planning the first two-node MPI computation, and request separate approval before device changes.


---

## 2026-11-09 — Current-first README reorganization and durable navigation rule

**Author instruction:** Reorganize the growing repository now so a new engineer or hiring reviewer sees the newest verified state and where to go next, rather than scrolling through historical addenda. The author explicitly required that future documentation sessions consistently follow this approach.

**Archive gate:** Re-inventoried the nontruncated recursive main Git tree at full tree SHA \`ddc639ddf80063432f8df713ec17e826018e5d6d\`); all 26 tracked files were fetched for inspection, including the SVG topology source, shell script, project continuity, decisions, journals and policies. No files were inaccessible; no physical-device operations were performed.

**Original README preserved:** Created \`README-HISTORY.md\` as an unchanged copy of the then-current 19,407-character README (commit \`51a57844fffa0a68b810691c3197ad98fa6e026a\`). Re-fetched the archive and confirmed its length and original opening/closing material. Because this archive remains at repository root, the original relative paths retain their base location. Git history also preserves the earlier original.

**Current README reorganized:** Replaced the former 19,407-character README with a ~6,647-character current-first landing page (commit \`47d4ca97062b2ddf51604a4a73cd0dfaab5ee422\`). It includes: project mission; dated deployed/verified status with precise operational names CASPER-01 and BALTHAZAR-02; clear *not-yet-implemented* MPI boundary; architecture/conceptual SVG; next accepted engineering milestone; portfolio evidence roadmap; documentation navigation; future proposals; and a conspicuous link to the full original history.

**Permanent documentation rule recorded:** Appended a dated section 'Current-first documentation and navigable history standard' to \`docs/documentation-policy.md\` (commit \`312e1c0d434a5db5724e75094b14d312d841bcc4\`). Future sessions are to keep the README concise and newest-first, place historical details in indexed journals and decisions, update links/continuity/appropriate diagrams with actual milestones, preserve prior intent, and never claim unverified capabilities.

**Evidence boundary:** GitHub writes and subsequent reads verified the README and archive exist and the policy addition is present. No new MPI job, backup restoration, device commissioning, automation, or benchmark was carried out. Existing November 8 SSH checks remain the last recorded physical-cluster verification.

**Next exact project task:** Under a fresh full-repository archival read and author approval, verify live two-node communication and design the first genuine two-node MPI workload with acceptance criteria per BC-P1. Keep the current-first front page and supporting evidence synchronized; do not append chronological details directly to the README.

**Authorship and assistance:** The author directed the information architecture and demanded durable future adherence; assistant performed the repository documentation restructuring and evidence-linked handoff.
