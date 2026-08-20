# OlyMEGA Electronics Inventory

Inventory of integrated circuits and related components available at the
OlyMEGA Makerspace. The catalog was assembled from microscope photographs of
package markings, then supplemented with part descriptions, categories,
package details, and datasheet links.

## Inventory snapshot

- 106 IC packages pictured
- 105 packages assigned to a part number
- 104 confirmed identifications
- 1 tentative identification
- 1 unidentified package
- 2 signal relays
- 45 consolidated inventory rows from 56 source photos

See [INVENTORY.md](INVENTORY.md) for the readable manifest and items requiring
manual review.

## Repository contents

| Path | Purpose |
| --- | --- |
| [`INVENTORY.md`](INVENTORY.md) | Human-readable inventory with quantities, descriptions, and datasheet links |
| [`inventory.csv`](inventory.csv) | Detailed machine-readable inventory, including markings, packages, source photos, confidence, and notes |
| `.reference/` | Source microscope photos used for inventory audits |

## Inventory conventions

- Quantities count physical packages visible in the source photos. A chip's
  magnified microscope image is not counted again.
- Rows with the same verified part number are consolidated, while uncertain
  variants remain separate.
- Date, lot, trace, and finish codes are recorded in the CSV notes when
  distinguishable from the part number.
- Datasheets marked as archived, equivalent, compatible, or successor
  documentation should be checked before substituting legacy parts.
- Identification does not establish that a component is functional.

## Updating the inventory

1. Add new microscope photos to the local `.reference/` directory.
2. Identify the package marking and count matching physical components.
3. Update `inventory.csv`, retaining the source filename and confidence notes.
4. Update the summary and consolidated table in `INVENTORY.md`.
5. Verify that each inventoried photo is referenced exactly once and that
   aggregate quantities agree between both manifests.
