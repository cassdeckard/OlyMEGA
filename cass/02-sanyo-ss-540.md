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
      - All male Quick Connect tabs are **0.205" (5.2 mm)**.
    - Factory wiring harnesses and terminal plates
      - Original cups also used 0.205" male Quick Connect tabs.
      - Factory females are spare. New 0.205" females are in hand.
      - Factory layout was distributed, not a central board:
        - Junction at the woofer.
        - Short mid pigtail with the 4.7µF, only long enough woofer-to-mid.
        - Short tweeter pigtail with the 3.3µF, only long enough
          woofer-to-tweeter.
        - Those runs do not reach a central board. Use new 16 AWG leads.
      - Round terminal cutout: 52 mm
      - Mounting screws: 43.85 mm × 43.85 mm square
    - 18 AWG solid-core copper for onboard crossover nets
    - PETG filament at OlyMEGA (several options)
      - Working board is Fusion 360, printed in PETG.
      - OpenSCAD hub is leftover. Do not print it:
        [`sanyo-crossover/ss540_crossover_board.scad`](sanyo-crossover/ss540_crossover_board.scad)
  - *Tweeter Capacitors:*
    - 2 × 3.3µF Dayton Audio PMPC film capacitors
    - Arrived 26 Aug 2026 (Audio Express).
  - *Mid-Range Capacitors:*
    - 2 × 1.0µF film capacitors
    - 2 × 1.5µF film capacitors
    - 2 × 2.2µF film capacitors
    - Arrived 26 Aug 2026 (Audio Express).
  - *Acoustic Damping and Sealing:*
    - 1 lb Acousta-Fill nylon polyfill
    - 1/8" x 3/8" speaker gasketing tape
      - Enough leftover for other cabinet and anti-rattle work.
    - Arrived 26 Aug 2026 (Audio Express).
  - *Cabinet Hardware:*
    - 2 × Parts Express 260-283 2-15/16" gold binding-post cups
      - Arrived 26 Aug 2026 (Audio Express).
      - 2-15/16" (75 mm) is the flange, not the cabinet hole.
      - Specified barrel cutout is 2" (50.8 mm).
      - Factory hole is 52 mm, so the barrel fits without enlarging.
      - Confirm the cup's four screw holes land on the 43.85 mm square.
      - Rear tabs accept **0.205"** female disconnects, not 1/4".
      - Front posts accept banana, dual banana, spade, or bare wire to 8 AWG.
      - Dual bananas for the Yamaha runs are in. Specs live under Project 1.
  - *Internal Wiring:*
    - Audtek 16 AWG oxygen-free copper speaker wire
      - Arrived 26 Aug 2026 (Audio Express).
      - Flying leads: cups, drivers, and the Fusion board.
      - Enough leftover for cabinet-to-receiver runs.
    - 0.205" (5.2 mm) 16-14 AWG female Quick Connects
      - Purchased for every driver and cup tab.
      - Do not substitute Ace 1/4" (0.250") females. They sit loose.
    - 16-14 AWG butt connectors
      - In hand. Hidden splices only.
      - Not a board terminal. Cut to disconnect.
  - *Driver Repair Supplies:*
    - Elmer's Glue-All (acid-free PVA)
      - Arrived from Amazon a few days before 26 Aug 2026.
      - Reattach the left mid-range driver's painted paper dust cap.
      - Leftover is usable on paper and wood in other projects.
      - Not a rubber-to-metal adhesive.
- **Ace pickup:**
  - *Board I/O (solderless, 6 poles per board, 12 total):*
    - 2 × Gardner Bender **GTB-406** 6-pole dual-row terminal blocks.
      - Ace item **3427747**, about $9.99 each.
      - [Ace listing](https://www.acehardware.com/departments/lighting-and-electrical/boxes-fittings-and-conduit/lugs/3427747)
      - 22–10 AWG. Covers 18 AWG buses and 16 AWG flying leads.
      - 30 A / 600 V. Speaker current is nowhere near that.
      - Do not cut. Molded barrier, not a Euro chocolate block.
      - Skip the 8-pole **GTB-408** (Ace 3427622). Extra poles, 5.50" long.
    - Skip panel bananas on the board.
      - Built for front-panel patching, not a vibrating cabinet.
      - No spare of 12 mating plugs.
    - Skip 0.205" male tabs on the board unless ordered as that size.
      - Ace males are 1/4". They will not mate the 0.205" females.


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
  - Rebuild the high-pass stages on two PETG boards from Fusion 360.
  - See [Crossover Board](#project-2-crossover-board).
  - Factory pigtails stay in the parts bin. They do not reach the board.
  - *Tweeter Path:*
    - Replace the original capacitor one-for-one.
    - Use one **3.3µF** Dayton Audio PMPC film capacitor.
    - Dry-fit first. The 31 mm film body is larger than the old electrolytic.
  - *Mid-Range Path:*
    - A single 4.7µF film capacitor is unavailable.
    - Reconstruct the value with a parallel triplet:
      - **1.0µF + 1.5µF + 2.2µF = 4.7µF**
    - Triplet footprint is about **50 mm × 31 mm**.
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
  - New Audtek 16 AWG flying leads to the Fusion board.
  - *Hardware end (cups and drivers):*
    - 0.205" females on every male tab.
    - Factory females are spare.
  - *Board end:*
    - 6-pole screw strip. No solder on the flying leads.
    - See [Crossover Board](#project-2-crossover-board).
  - Culver 1A-50 stays in series on IN+. Test it before reuse.
  - Do not pull 18 AWG solid out to a driver. Solid is onboard buses only.

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

## 🖨️ Crossover Board


Working design is Fusion 360, printed in PETG. The OpenSCAD hub is leftover
and is not the board to print.

- **CAD:**
  - Fusion 360 is the source of truth for outline, cradles, and I/O.
  - One board edge is already **111 mm**, matching the GTB-406 length.
  - Leftover OpenSCAD (do not print):
    [`sanyo-crossover/ss540_crossover_board.scad`](sanyo-crossover/ss540_crossover_board.scad)
- **Onboard nets:**
  - 18 AWG solid copper for buses.
  - Solder capacitor leads and the Culver to those buses.
  - That is a one-time assembly joint, not a service connection.
- **Flying-lead I/O:**
  - One GTB-406 per board, along the 111 mm edge.
  - Dual row: 18 AWG bus under one screw, 16 AWG lead under the other.
  - Cap leads still solder. "Solderless" means the leads unplug.
- **GTB-406 footprint (GB datasheet, 6-pole):**
  - Overall length **4.37" (111 mm)**. Flush with that Fusion edge.
  - Mounting-hole spacing **3.94" (100 mm)**. About 5.5 mm in from each end.
  - Width **1.33" (34 mm)**. Reserve that band on the plate.
  - Pole pitch **0.562" (14.3 mm)**.
  - Mount with **#10** screws. Holes **0.21" (5.3 mm)**.
  - Clamp screws are #10-32. Optional #10 spades on the flying leads.
- **Pole map (one board):**
  - **IN+** — cup positive
  - **IN−** — cup negative
  - **W+** — woofer positive
  - **M+** — mid positive
  - **T+** — tweeter positive
  - **GND** — common return
- **Shared GND:**
  - One board pole, not three.
  - 3-into-1 return harness to the three driver negatives.
    - One 16 AWG from GND to a 3-way join, then three short tails.
  - Do not stuff three stranded returns under one GTB screw.
  - Do not cut a GTB-406 down to a 3-pole snippet.
- **Hardware end of those same leads:**
  - 0.205" females on the 260-283 cups and all six drivers.
- **Do not use as board terminals:**
  - Panel bananas. Need 12 mating plugs; overkill inside the cabinet.
  - 16-14 AWG butt connectors. Splice only; cut to service a driver.
  - Ace 1/4" male Quick Connects. Will not mate the 0.205" females.
