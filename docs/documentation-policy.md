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
