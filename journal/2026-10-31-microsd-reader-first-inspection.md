# 2026-10-31 — MicroSD USB reader: first physical inspection (in progress)

**Status:** OBSERVED / NOT YET FUNCTIONALLY VERIFIED  
**Author:** Project owner, assisted with contemporaneous documentation by AI.  
**Project context:** First non-destructive media inspection for Baby Cloud's Raspberry Pi 4 commissioning; see [2026-10-31 OS commissioning strategy](../docs/decisions/2026-10-31-os-commissioning-strategy.md).

## Objective

Before using Raspberry Pi Imager or modifying either supplied 64 GB microSD card, identify the Vilros USB 3.0 microSD reader's card slot; then, in later separate tests, check whether the reader and a laptop USB port detect the card, and inspect the card's existing partitions/files without modifying them. The author has also considered testing the laptop's built-in card slot, but has not committed to doing so.

## Observation 1 — Finding the card slot

The author opened the small Vilros USB reader and removed its cap. Two photos shared during the session show the miniature black reader, its exposed USB Type-A plug, and the removed cap. The author initially could not tell where the microSD card should go and asked whether its opening was underneath the USB connector.

**Actual observation:** The reader's microSD insertion slot was not immediately obvious from the tiny design. On the photographs, a narrow dark opening is visible near the USB connector, but insertion direction and correct seating have **not yet been independently verified**. Do not treat the assistant's visual interpretation as a passed physical test.

**Why this matters:** Identifying the correct insertion slot and card orientation before applying force is particularly important for delicate removable media and connectors. The objective is to avoid damaging the card or reader during initial inspection.

## Tests not yet performed or reported

- microSD inserted and correctly seated: **not verified**
- USB reader recognized by Windows: **not tested**
- laptop built-in card reader recognized: **not tested**
- 64 GB card partitions/files or preload status: **unknown**
- any operating-system image flashed, Raspberry Pi powered on, or MPI workload executed: **not performed**

## Immediate safe next action

Visually confirm the microSD slot and card alignment without forcing insertion. Once the card is inserted correctly, test one reader/USB path at a time. Do not format, initialize, erase, or image the card during inspection; cancel any Windows format prompt. Record what Windows actually reports, including partition information from Disk Management when appropriate.

## Documentation boundary

This is an **in-progress observation**, not a successful hardware commissioning or completed test. Later outcomes should be added as dated, evidence-based observations, preserving this initial uncertainty.

**Governing principle:** The future must know what the past was thinking.
