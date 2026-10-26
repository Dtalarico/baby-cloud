# Naming spelling correction and Baby Cloud node sequence — 2026-10-26

**Classification:** Documentation correction and naming clarification; not a hardware architecture change.  
**Authority:** Project author.  
**Status:** Approved naming plan; operating-system hostnames not yet assigned.

## Original record
The [2026-10-23 engineering journal](../../journal/2026-10-23-hardware-receiving-and-workstation-setup.md) recorded the first three proposed names as **Caspar**, **Balthazar**, and **Melchior**. Those were intended to reference the MAGI computers in *Neon Genesis Evangelion*, but the first two were spelled incorrectly. The original record remains visible with a dated appended correction; published Git history has not been rewritten.

## Corrected convention

| Baby Cloud physical node sequence | Approved planned name | Fictional MAGI designation (reference only) |
|---|---|---|
| 1 — received, not commissioned | **Casper-1** | Casper-3 |
| 2 — received, not commissioned | **Balthasar-2** | Balthasar-2 |
| 3 — future expansion | **Melchior-3** | Melchior-1 |

The author deliberately uses **Baby Cloud's own sequential numbers**, even where those differ from the original fictional system. This preserves the intended order while correcting the spelling. Names 4–8 remain Spike Spiegel, Jet Black, Faye Valentine, Ein, and Edward Wong (Ed), in that order; their hostname formats are not yet decided.

These are **planned human-readable node labels**, not evidence of configured DNS, hostnames, deployed hardware beyond the first two kits, or assigned compute roles. Technical hostname syntax will be finalized and tested during commissioning.

## Documentation actions
The conceptual topology diagram and README now use the corrected planned labels. The October 23 journal retains its original list and includes a forward-dated correction. The project author's correction and decisions were recorded with AI drafting assistance.
