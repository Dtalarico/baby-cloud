# BC-DOC-001 — Documentation, Provenance, and Human Readability

**Status:** Approved project policy, 2026-10-21  
**Priority:** Highest  
**Scope:** README, architecture, decisions, procurement, journals, scripts, and commits

## Governing principle

**The future must know what the past was thinking.**

Document not only what happened, but what was intended, understood, assumed, uncertain, and decided at the time. Truth may evolve; history must not be silently erased.

## Write for the author's mother

An intelligent non-engineer should be able to follow what the project is, what changed, why it matters, and what comes next. Explain unfamiliar terms on first use, retain technical precision, and prefer direct language over unexplained acronyms. The practical review question is: *Could the author's mother understand this without an engineering education?*

## Preserve intent and evidence

For each meaningful decision or change, record, as applicable:
- Date and responsible decision-maker
- Original intention and previous documented state
- Constraint, problem, or evidence prompting the decision
- Alternatives considered and why the chosen path was preferred
- Decision, authority, and effects on dependent work
- Unknowns, risks, and next verification steps
- References to prior records and supporting evidence

Distinguish **proposed**, **approved**, **executed**, and **verified**. A vendor claim is not a verified test; an estimate is not an actual purchase. A documentation error is not a design change.

## History and corrections

Use forward-moving, intelligible Git commits; do not rewrite published history through force pushes, rebases, or squashes. One commit should represent one coherent logical change. Explain corrections explicitly, linking to the earlier record rather than concealing it. Preserve conflicting evidence and record how a conflict was resolved. Git history helps, but does not alone guarantee TokChain's envisioned preservation of meaning.

## Authorship and continuity

The project author owns decisions and the engineering record. Disclose assistant-supported drafting when material; do not portray assisted work as independently performed. Future contributors should be able to reconstruct the project without access to an assistant's ephemeral conversational context. Review the README, architecture, decision records, and latest journal before new work.

## Procurement and privacy

Preserve vendor, exact SKU, quantity, transaction date, actual prices, shipping, tax, order status, and acceptance tests. Keep unredacted receipts, payment credentials, addresses, and other sensitive data outside the public repository; reference privately retained evidence without exposing secrets. Never record an order, delivery, installation, or test as complete before it occurs.

## Review test

Before approving a material change, ask:
1. Can a nontechnical reader understand what happened and why?
2. Are original intent, current decision, and actual work clearly distinguished?
3. Can another person trace the evidence and chronology?
4. Are uncertainties and pending verification visible?
5. Could someone continue the work without inventing missing history?


---

## BC-DOC-001 — Additive operational-evidence extension (2026-10-27)

**Status:** Approved by the project author; appended without changing the original BC-DOC-001 text.

**Source and purpose.** The project author directed a reciprocal synthesis with [LinuxLingo's LL-DOC-001](https://github.com/Dtalarico/LinuxLingo/blob/main/docs/documentation-policy.md), the [LinuxLingo Master Spec](https://github.com/Dtalarico/LinuxLingo/blob/main/LINUXLINGO_MASTER_SPEC.md), and Adaptive Infrastructure Tutoring Prompt v11 (2026-10-18). This extension strengthens the existing Baby Cloud engineering record; it does not make Baby Cloud a command-drill curriculum or replace any earlier principle.

### Operational purpose and mechanism

For unfamiliar commands, installation procedures, or engineering tests, explain the intended objective, why the operation is necessary, relevant prior state, functional difference from known alternatives, expected output/change, and what observation would confirm completion. Describe architecture boundaries when they matter: machine, user identity, environment, network endpoint, service manager, storage object, input/output stream, or other involved layer. Preserve technical vocabulary with plain-English explanations consistent with the “write for the author's mother” standard.

### Observable success, failure, and partial outcomes

For actual commissioning and troubleshooting records, describe the starting state, procedure, expected result, actual result, relevant output fields, success signatures, failure signatures, and verification method. If a command succeeds silently, state how success can be tested. Do not call an unobserved effect verified.

A process may partially succeed: network link may come up while name resolution fails; authentication may succeed while a later environment step warns; a service may be configured for boot without currently running. Distinguish which stage succeeded, which failed, what state remained, and what must be checked next. Avoid compressing multi-layer outcomes into unsupported “worked” or “failed” descriptions.

### Evidence and interpretation boundaries

Separate (1) machine-generated output and measured system state, (2) the author's or assistant's narration, (3) vendor specifications, and (4) third-party platform or grading results. Do not represent human-typed text as machine output; do not treat a purchase estimate, vendor claim, shipment, receipt, functional boot, network test, and operational commissioning as interchangeable verification stages.

When a problem appears, consider whether it reflects a failed operation, a missing prerequisite/coverage gap, or insufficient telemetry to interpret the state. Explain reasonable earlier assumptions and the new mechanism that required correction; record ambiguities and conflicting evidence without rewriting the prior record.

### Progressive independence and durable proof

Record whether the engineer-in-training performed an action independently, with coaching, or through assistant-supported drafting. A successful result alone does not demonstrate independent competence; record reasoning, troubleshooting and verification as distinct evidence where relevant. Progress from demonstration to co-writing, student drafting, and independently authored/verified technical logs.

Cite only source-specific relevant references and identify what the reader is expected to find, rather than using an entire manual as a substitute for instructions. Preserve real outputs and verification details safely; redact secrets and private identifiers.

### Historical preservation and policy boundaries

The governing BC-DOC-001 policy above remains intact. Maintain **PROPOSED / APPROVED / EXECUTED / VERIFIED**, clear decision provenance, original historical context, explicit forward-dated corrections, privacy, coherent Git commits, and independent usability of the repository. Apply LinuxLingo's evidence and instructional insights where applicable to Baby Cloud, while preserving Baby Cloud's architecture, procurement, and commissioning authorities.

**Review test:** Could a new reader explain what the engineer intended, what was attempted, how the system actually responded, which claim the evidence supports, what is still unknown, and how to verify the next step without previous conversation context?

**Implementation boundary:** This additive policy does not certify previously untested hardware or retrospectively change receiving/commissioning milestones. The initial two Raspberry Pi kits were visually received/accepted on 2026-10-26; functional commissioning remained pending at the time of this extension.


---

## BC-DOC-001 — Additive durable instructional-correction rule (2026-11-08)

**Author direction:** The author expressly rejected generic assistant promises to "teach better from now on" because new conversations do not reliably preserve ephemeral context. Material **failures in the assistant's teaching method must be entered into persistent GitHub documentation**, not merely apologized for in chat. This extension preserves all earlier policy and applies whenever assistants guide Baby Cloud engineering.

**Record actual assistant instructional failures:** For each substantial incident capture the exact sequence and previous advice, what the author had been taught, what dependency/term was omitted, what the system actually did, how the advice confused or delayed the author, a concrete revised procedure, and the verification that separates success from hypothesis. Include failed commands and independent user diagnoses. Mark **proposed / executed / verified** separately. Do not claim a permanent behavioral improvement without writing the applicable correction in this policy and/or the active journal and next-session continuity.

**Practical teaching sequence:** (1) Name the target machine, layer, and purpose in plain English; (2) Explain unfamiliar command syntax or relevant service/acronym *before* asking the learner to type it; (3) Identify the one or two downstream dependencies whose state may prevent the user's stated end-to-end goal, rather than burying the learner under speculative nuance; (4) Offer only one executable step at a time with explicit expected output, actual output, and interpretation; (5) Prefer visible inspectable evidence when the author requests it, and distinguish file creation, file contents, service state, network discovery, and successful login; (6) Describe how to find an unknown service by starting with the failed function/subsystem, not by presuming the beginner knows every daemon; (7) Document the correction and stopping point durably and respectfully. When a command fails, diagnose before branching to additional changes.

**Specific teaching failure — 2026-11-08 Pi hostname rename:** The assistant guided `hostnamectl set-hostname BALTHAZAR-02` and updating `127.0.1.1` in `/etc/hosts`, then suggested that Windows SSH resolution under the new name would follow without first checking the *separate network announcement service*. Windows could not resolve either `BALTHAZAR-02` or `balthazar-02.local` despite a successful Linux rename and existing SSH access via `raspberrypi.local`. `systemctl status avahi-daemon` later revealed the active Avahi service was still running as `[raspberrypi.local]`. The missing dependency was **Avahi multicast DNS (mDNS) publication**, distinct from Linux hostname and its local `/etc/hosts` map. A beginner had not been introduced to Avahi; the assistant should have used hostname-resolution failure as a prompt to identify the responsible subsystem, defined daemon/mDNS clearly, checked service publication, and *then* proposed a minimal recovery test. ARP (Address Resolution Protocol) cache flush is not the appropriate first response, as ARP maps network-layer IP addresses to link-layer hardware addresses, not mDNS hostnames.

**Verified boundary at writing:** A subsequent screenshot shows the author entered `systemctl restart avahi-daemon`, passed the graphical polkit authentication prompt, and returned to `david-talarico@BALTHAZAR-02`. This confirms the restart request was executed without a visible error, but **the service's newly advertised name, Windows resolution, and SSH-by-new-name login remain unverified**. Next time confirm with a fresh status check and then from Windows. Existing logged-in SSH via `raspberrypi.local` had worked following the OS hostname change. Avoid claiming success before the final test.

**Specific teaching failure — 2026-11-08 first-user file provisioning:** The assistant offered complex `printf '%s:%s\\n' ...` syntax before defining format specifiers, newline escape and shell redirection, causing phone-screen transcription errors and a failed `printf`. The author independently corrected syntax and verified the actual `userconf.txt` contents with `cat`. For learning, teach syntax and alternatives (including a text editor) before unfamiliar commands, and favor a transparent one-step verify when appropriate. Explain caching/write completion vs safe removal accurately, without unnecessary repeated safety detours.

**Conversation/project continuity:** Keeping a conversation inside a ChatGPT project helps organization but **does not guarantee that another chat will recall all details**. The GitHub record and mandatory fresh archive read on a new Baby Cloud session are the source of durable engineering/teaching continuity. Do not treat remembered chat summaries as a replacement for reading these files.


---

## 2026-11-09 — Author-directed visual engineering documentation standard

**Status: APPROVED project documentation preference; additive policy.** The author wants useful engineering diagrams developed and maintained as a normal part of Baby Cloud, not as decorative infographics. Preserve the existing eight-node conceptual SVG and all prior records.

1. **At every design, commissioning, change, or handoff milestone, explicitly assess whether a diagram would reduce ambiguity.** In particular consider physical/network topology, node inventory and operating-system roles, MPI control/data flow, storage and NAS connections, migration/change sequence, and failure/recovery paths. Do not generate gratuitous illustrations or cluttered infographics.
2. **Distinguish PROPOSED from VERIFIED visually and in the accompanying caption.** Date and version each relevant diagram; give its scope, source/evidence, author and verification boundary. A conceptual eight-node design must never be mistaken for eight commissioned nodes. A diagram is no substitute for tested observations or the engineering journal.
3. **Keep diagrams synchronized with the system and the written records.** When actual hardware, node names, topology, addresses, roles or interconnections change, check the affected diagram and either update its current-state version or explicitly mark it historical/pending. Preserve superseded intent and change reasoning in dated records or Git history.
4. **Prefer readable, version-controlled, maintainable sources** such as SVG or Mermaid, with clear labels and simple layout; link the diagram from the README, architecture, or relevant engineering journal. Avoid screenshots of undocumented diagrams as the sole source of truth.
5. **Make the visuals accessible to an intelligent nontechnical reader** while preserving technical precision. Include concise legends for unfamiliar icons, link types, node roles, and acronyms. Do not publish secrets or unnecessarily identifying network details.
6. **At session closeout, record whether diagrams were reviewed, created, updated, deferred, or not needed**, and why. Do not claim diagram creation or verification unless actually completed.

**Implementation boundary:** This policy records documentation expectations only. It does not assert that any new diagram or hardware configuration was created or tested on 2026-11-09.
