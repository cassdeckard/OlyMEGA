# 📌 PROJECT 2: SANYO SS-540 SPEAKER MODIFICATION PROJECT


The user is executing a total interior refurbishment and filter modernization
of the curbside-salvaged 3-way Sanyo enclosures. The factory driver geometry is
retained, with the woofer running wide open. Low-grade factory electrolytic
filters inline with the mid-range and tweeter are being replaced with precision
metalized film networks.


<a id="project-2-inventory"></a>

## 📦 Supply Chain & Inventory Status


- **In Hand:**
  - Sanyo SS-540 speaker pair
    - Two cabinets
    - Factory woofers, mid-range drivers, and tweeters
    - Factory wiring harnesses and terminal plates
      - Round terminal cutout: 52 mm
      - Mounting screws: 43.85 mm × 43.85 mm square
    - 18 AWG solid-core copper for onboard crossover nets
- **To Be Ordered:**
  - *Crossover Boards:*
    - PETG filament for two 3.5" × 4.5" printed boards
    - OpenSCAD source:
      [`sanyo-crossover/ss540_crossover_board.scad`](sanyo-crossover/ss540_crossover_board.scad)
  - *Tweeter Capacitors:*
    - 2 × 3.3µF Dayton Audio PMPC film capacitors
  - *Mid-Range Capacitors:*
    - 2 × 1.0µF film capacitors
    - 2 × 1.5µF film capacitors
    - 2 × 2.2µF film capacitors
  - *Acoustic Damping and Sealing:*
    - 1 lb Acousta-Fill nylon polyfill
    - 1/8" x 3/8" speaker gasketing tape
  - *Cabinet Hardware:*
    - 2 × Parts Express 260-283 2-15/16" gold binding-post cups
      - 2-15/16" (75 mm) is the flange, not the cabinet hole.
      - Specified barrel cutout is 2" (50.8 mm).
      - Factory hole is 52 mm, so the barrel fits without enlarging.
      - Confirm the cup's four screw holes land on the 43.85 mm square.
  - *Driver Repair Supplies:*
    - Acid-free PVA (Elmer's Glue-All or equivalent)
      - Reattach the left mid-range driver's painted paper dust cap.
  - *Internal Wiring:*
    - Audtek 16 AWG oxygen-free copper speaker wire
      - Flying leads only: binding posts, drivers, board pass-throughs.
      - Leftover 16 AWG lamp cord from Project 1 is an acceptable substitute.


<a id="project-2-roadmap"></a>

## 📐 Project State & Architectural Roadmap


- **Current State:**
  - Left speaker cabinet completely gutted.
  - Components removed:
    - Factory drivers
    - Wiring harness
    - Terminal plate
- **Mid-Range Driver Repair:**
  - Left mid-range dust cap lifted along about two-thirds of its edge.
  - The cap itself is intact.
  - It is paper with metallic paint, not an aluminum dome.
  - Reattach with a thin bead of acid-free PVA.
    - Work the glue into the open seam.
    - Prefer the back of the cone if the gap allows.
    - Seat the cap and weight it until dry.
    - Wipe squeeze-out before it skins.
  - Do not use rubber cement or CA.
    - Rubber cement was for a metal-to-paper joint.
    - CA dries brittle and can tick.
- **Crossover Filter Networks:**
  - Rebuild the high-pass stages on two printed PETG boards.
  - See [Printed Crossover Board](#project-2-crossover-board).
  - *Tweeter Path:*
    - Replace the original capacitor one-for-one.
    - Use one **3.3µF** Dayton Audio PMPC film capacitor.
  - *Mid-Range Path:*
    - A single 4.7µF film capacitor is unavailable.
    - Reconstruct the value with a parallel triplet:
      - **1.0µF + 1.5µF + 2.2µF = 4.7µF**
- **Culver 1A-50 Circuit-Breaker Assessment:**
  - Test each factory automatic-reset thermal breaker before reusing it.
  - *Isolate:*
    - Disconnect one terminal from the crossover.
    - Let the breaker cool completely.
  - *Measure Cold Resistance:*
    - Measure and subtract the meter-lead resistance.
    - Confirm that the result is stable and near zero.
    - Compare both breakers; their readings should be similar.
  - *Check for Intermittency:*
    - Gently tap the housing and move the terminals while monitoring the
      meter.
    - Reject a breaker that produces jumps, dropouts, or unstable readings.
  - *Test Current Handling:*
    - Use a low-voltage, current-limited bench supply rather than an
      amplifier.
    - Apply approximately **1 A** and confirm that the breaker remains
      closed.
  - *Test Trip and Reset:*
    - Increase the current to **2 A** while monitoring continuity.
    - Record the time required to open.
    - Remove the current and record the automatic-reset time.
    - Compare the trip and reset behavior of both breakers.
  - *Safety:*
    - Stop if the housing smells, discolors, or becomes excessively hot.
    - Never connect a multimeter's current input directly across a power
      supply.
  - *Disposition:*
    - Reuse both original breakers if their resistance and behavior match.
    - If either fails, replace both as a matched pair.
    - Use a **Raytech/RTC NA2-1A** automatic-reset thermal breaker as the
      closest identified production substitute, subject to bench
      verification of its trip and reset behavior.
- **Acoustic Damping & Enclosure Sealing:**
  - *Acoustic Damping:*
    - Use 1 lb of Acousta-Fill nylon polyfill.
    - Split it evenly: 0.5 lbs per cabinet.
    - Purpose: arrest internal standing waves.
  - *Compression Seals:*
    - Use 1/8" x 3/8" speaker gasketing tape.
    - Apply it beneath the driver basket rims.
    - Seal around the 2-15/16" gold binding-post cups.
      - Do not enlarge the 52 mm factory hole.
      - The 2" barrel is about 1.2 mm undersize; the gasket fills the gap.
- **Internal Rewiring:**
  - Redo all structural point-to-point connections.
  - *On the PETG board:*
    - Use on-hand 18 AWG solid-core copper in the underside channels.
    - Solid sits flat and does not flex once the board is mounted.
  - *Off the board:*
    - Use 16 AWG stranded to the binding posts and all three drivers.
    - Do not run solid core to the woofer.

```unset
--------------------------------------------------------------------------------
[Positive Binding Post] ── [Culver 1A-50 Auto-Reset Thermal Breaker]
           │
           ├── Direct ────────────────────────────────────────> [Woofer]
           │
           ├── [1.0µF ║ 1.5µF ║ 2.2µF] ───────────────────> [Mid-Range]
           │             4.7µF total
           │
           └── [3.3µF Film Capacitor] ───────────────────────> [Tweeter]

[Negative Binding Post] <──────────── Common return from all three drivers
--------------------------------------------------------------------------------
```

<a id="project-2-crossover-board"></a>

## 🖨️ Printed Crossover Board


Replace the factory fiber board with a PETG fixture. The plastic is not a
conductor. Onboard nets are 18 AWG solid copper or capacitor leads on the
underside. Flying leads through the 4 mm holes are 16 AWG stranded.

- **Source file:**
  - [`sanyo-crossover/ss540_crossover_board.scad`](sanyo-crossover/ss540_crossover_board.scad)
  - Print **two** copies on the Bambu P1S in PETG.
- **Board:**
  - 89 mm × 114 mm (3.5" × 4.5").
  - **6 mm** thick.
  - 4.5 mm cannot hold 1.5 mm cradles and a 2.2 mm underside channel.
  - Four 4.5 mm corner holes, 6 mm from each edge, for #8 wood screws.
- **Layout, input edge to output edge:**
  - Culver 1A-50 pocket.
  - Tweeter 3.3µF cradle.
  - Mid-range triplet: 2.2µF, 1.5µF, 1.0µF, with shared 3 mm walls.
- **Capacitor cradles:**
  - Inner length **26 mm** so 31 mm bodies can bend into the lead holes.
  - Depth 1.5 mm.
  - Inner widths 17 / 15 / 12 / 11 mm (1 mm over each body).
  - 2.5 mm lead holes, 3.5 mm outboard of each cradle end.
  - 3.5 mm × 1.5 mm zip-tie slots in the side walls.
  - 2.5 mm holes are for capacitor leads only.
- **Culver 1A-50 pocket (calipered):**
  - Body **8.7 mm H × 10.25 mm W × 20.4 mm L**.
  - Both connectors leave one **H × W** face.
  - Pocket adds 0.6 mm clearance, 2.5 mm deep.
  - Length across the board; connector face toward the wiring spine.
  - 7 mm through-window at that face for soldering, not end-to-end lug holes.
  - Ghost lugs in the `.scad` are placeholders; spacing is unmeasured.
  - It is **1 A**, not 14 A or 1.4 A.
- **Underside wiring:**
  - 2.2 mm channel along the right spine, with crossbars at the lead rows.
  - Lay 18 AWG solid in that channel as the copper buses.
  - Solder capacitor leads and Culver lugs to those buses.
  - 4 mm pass-throughs are for 16 AWG stranded input and driver leads.
  - Splice stranded to solid on the underside; do not pull solid out to a
    driver.
- **Bambu Studio:**
  - 4–5 wall loops.
  - 30–40% gyroid or grid infill.
  - 4–5 top and bottom layers.
  - 0.2 mm layer height.
  - Dry PETG before printing.
