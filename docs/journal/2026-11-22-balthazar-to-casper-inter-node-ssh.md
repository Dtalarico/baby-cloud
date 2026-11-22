# 2026-11-22 — BALTHAZAR-02 to CASPER-01 inter-node SSH verification

**Status:** VERIFIED for the one observed direction: `BALTHAZAR-02 → CASPER-01`. This is a connectivity and authenticated remote-shell test, **not** an MPI, parallel-computing, benchmark, or reverse-direction verification.

## Objective

Verify that one commissioned Baby Cloud node can initiate an SSH session to the other by its configured hostname.

## Starting documented state

- `CASPER-01` and `BALTHAZAR-02` were last documented as independently SSH-accessible from REAPER-ONE-PC on 2026-11-08.
- Both nodes use the account `david-talarico`.
- No coordinated MPI workload had been implemented or verified.

## Observed procedure and evidence

1. From REAPER-ONE-PC, the author successfully authenticated to `BALTHAZAR-02` using `ssh david-talarico@BALTHAZAR-02`.
2. At the `david-talarico@BALTHAZAR-02:~ $` prompt, the author ran `ssh david-talarico@CASPER-01`.
3. BALTHAZAR-02 displayed the first-contact SSH host-authenticity warning for CASPER-01's ED25519 key. The author accepted the key, adding `casper-01` to BALTHAZAR-02's known-hosts list.
4. The author authenticated as `david-talarico` and reached an interactive `david-talarico@CASPER-01:~ $` prompt. The CASPER-01 Debian/Raspberry Pi OS banner was displayed.

A supplied screenshot shows the complete BALTHAZAR-02-to-CASPER-01 sequence and the resulting CASPER-01 prompt. The screenshot remains private; no credential or password is recorded here.

## Result and boundary

**Verified:** BALTHAZAR-02 can resolve `CASPER-01`, reach it over the current network, verify/record its SSH host key, authenticate the documented user, and open an interactive shell.

**Not verified by this test:** CASPER-01-to-BALTHAZAR-02 SSH, noninteractive key-based authentication, shared MPI host configuration, MPI package installation, an MPI job, performance scaling, timing comparison, backup/restore, or monitoring.

## Next exact task

With separate author approval, decide the minimum two-node MPI implementation and test plan. Before any package installation or configuration change, identify the exact target nodes, implementation choice, authentication convention, minimal workload, expected evidence, and rollback/recovery boundaries.

## Provenance

The author performed the SSH actions and supplied the observed terminal screenshot. Documentation was drafted with assistant support from that evidence.
