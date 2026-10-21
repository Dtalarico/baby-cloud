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
