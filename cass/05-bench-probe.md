# 📌 PROJECT 5: PORTABLE BENCH SIGNAL AUDIO PROBE & TEST AMPLIFIER

A low-power, battery-operated LM386 test amplifier for tracing audio through
guitar pedals, synthesizers, preamps, and other low-voltage circuits. A
DC-blocked probe feeds a volume control and LM386, allowing each stage of a
signal path to be heard through a dedicated test speaker without risking the
Scarlett interface or Yamaha receiver.

The battery creates an independent power supply, but the probe is **not
galvanically isolated from the device under test** after its ground clip is
connected.


<a id="project-5-inventory"></a>

## 📦 Supply Chain & Inventory Status

- **In Hand:**
  - 1 × LM386N-1
    - One of three in the IC inventory.
    - Marked `PR35AU / LM / 386N-1` (`PR35AU` is a lot code).
  - 3 × 10kΩ resistors
    - Two beige, one blue.
    - All read `10` on the GDT-11 20kΩ range (that is 10kΩ, not 10Ω).
    - R2 plus two spare.
  - 2 × 10kΩ from the space bin
    - Series resistors for the yellow BAT+ lamp and red VCC lamp.
  - 1 × 10Ω resistor (R1)
  - 4 × 100nF (`104`) ceramic capacitors
    - C3, C6, two spare.
  - 5 × 10µF / 50V electrolytic capacitors
    - C1, C2, optional C7, two spare.
    - C2 positive toward the probe tip on +DC nodes.
  - 2 × 100µF / 50V electrolytic capacitors
    - One is C5 on **switched VCC** (L2 / Pin 6), not unswitched BAT+.
    - The other is spare. It is not C4.
  - 1 × 220µF / 50V electrolytic capacitor (C4)
    - Kept from the OlyMEGA bin (free-for-all).
    - Single part. Do not use the personal parallel bank for C4.
  - Personal C4-bank leftovers (spare, not installed):
    - 47µF / 25V, 33µF / 25V, 22µF / 25V
    - 4.7µF / 50V, 3.3µF / 50V
  - 1 × A10k audio-taper potentiometer
    - POT1. Even throw into the LM386; ~10k load on the probed node.
    - Fine for pedal outputs. Heavy on guitar pickups and fuzz inputs.
    - Verified audio taper (noon ~1.5k, not 5k).
  - 1 × ALPHA A1M audio-taper potentiometer
    - Spare. Do not use as POT1 without a 100k pad.
  - 1 × 4-pin momentary pushbutton
    - Two independent NO pairs.
    - Spare. Power and gain are on the DPDT rocker.
  - 1 × DPDT ON-OFF-ON rocker
    - 6 terminals. 6 A / 125 VAC (fine at 9 V).
    - Left / power = **ON | OFF | ON** side.
    - Right / gain = **1 | 2 | 3** side.
    - Center is OFF (no power).
  - 1 × yellow LED (BAT+ lamp, 10k)
  - 1 × red LED (VCC lamp, 10k)
    - Do not confuse the red LED with the red BAT+ wire.
  - 1 × 1W 8Ω speaker
  - 9V batteries
    - Usable at home once the snap arrives.
- **Breadboard at OlyMEGA (verified):**
  - Archer Universal Breadboard with GND and two power posts.
    - One power post is +9 V. Leave the second unused.
  - Space probe tip, ground clip, and Dr. Meter
    - Stand-in for the Amazon tip, clip, and 9V snap.
    - Dr. Meter: **9.0 V**, current-limit **~200 mA** first power-up.
    - Raise to **~500 mA** only if it current-limits when loud.
    - Do not connect a 9V battery at the same time.
    - Leave space tools on the bench.
- **Ordered with Project 2 (awaiting shipment):**
  - Scrap 16 AWG speaker wire
    - Optional flying leads for the 1W 8Ω speaker.
  - Gasketing tape leftover
    - Optional if the probe speaker is mounted in an enclosure.
- **Ordered (Amazon, 21 Aug 2026):**
  - Insulated probe tip
  - Ground clip
  - 9V battery snap
    - Same cart as the Project 1 20 ft HDMI cable.
    - Take-home portable kit only.
    - Not required to bring the circuit up at the space.
- **To Be Acquired:**
  - None for the analog circuit.
  - Optional later: 3PDT if a dedicated gain-200 lamp is wanted.

## Functional Signal and Power Map

```unset
--------------------------------------------------------------------------------
 [Probe Tip] ─> [R2 10kΩ] ─> [C2 DC Block] ─> [Volume Pot] ─> [Pin 3]

 [Ground Clip] ───────────────────────────────────────────> [System GND]

                                 [9V / Dr Meter]
                                       │
                              [ON-OFF-ON power pole]
                                       │
                                  [VCC = L2]
                                       │
                       ┌───────────────┴───────────────┐
                       │                               │
                  [C5 100µF]                     [C6 100nF]
                    Bulk filter                  HF bypass
                       │                               │
                       └───────────────┬───────────────┘
                                       │
                                  [Pin 6 VCC]
                                       │
                                  ┌────┴────┐
                                  │  LM386  │
                                  └────┬────┘
                                       │ Pin 5
                                       ▼
                                  [Output Node]
                                       │
                    ┌──────────────────┴──────────────────┐
                    │                                     │
                    ▼                                     ▼
          [C4 220µF DC Block]                    [C3] ─> [R1 10Ω]
                    │                                     │
                    ▼                                     │
            [8Ω Test Speaker]                             │
                    │                                     │
                    └──────────────────┬──────────────────┘
                                       ▼
                                  [System GND]

 [Pin 1] ──> [ON-OFF-ON gain pole] ──> [+ C1 10µF −] ──> [Pin 8]
--------------------------------------------------------------------------------
```

## LM386 Pin Map

- **Pin 1 — Gain:**
  - Connect Pin 1 to the gain-pole common (R2, middle lug on the
    **1 | 2 | 3** side).
  - Do not also tie Pin 1 / R2 to C1+.
  - The gain-200 throw connects R2 to R1, then to C1+.
  - The gain-20 throw leaves R3 open, so C1 is out of circuit.
  - Center also kills power, so gain does not matter there.
- **Pin 2 — Inverting Input:**
  - Connect directly to system ground.
- **Pin 3 — Non-Inverting Input:**
  - Connect to the center wiper of POT1.
- **Pin 4 — Ground:**
  - Connect directly to system ground.
- **Pin 5 — Output:**
  - Split into two parallel branches (not in series):
    - Main output through C4 (single 220µF / 50V) to the test speaker.
    - Zobel network through C3 and R1 to ground.
    - Keep C3/R1 closer to the IC than C4.
- **Pin 6 — Supply Voltage:**
  - Connect to the switched positive 9V rail (L2).
- **Pin 7 — Bypass:**
  - Leave open for the minimum-parts build.
  - Optionally connect C7 from Pin 7 to ground to reduce noise.
- **Pin 8 — Gain:**
  - Connect C1− to Pin 8 always.
  - C1+ reaches Pin 1 only on the gain-200 throw.

## Peripheral Node Map

- **Probe Input:**
  - Connect the insulated probe tip to R2.
  - Connect R2 to C2.
  - Connect C2 to the high side of POT1.
  - If C2 is a polarized electrolytic:
    - Orient its positive lead toward the probe tip when testing circuits
      whose signal rides on a positive DC bias.
    - Measure the node DC first if polarity is unknown.
    - Do not leave it reverse-biased on a negative rail.
- **Volume Control:**
  - Connect the POT1 high side to C2.
  - Connect the POT1 center wiper to LM386 Pin 3.
  - Connect the POT1 low side to system ground.
  - POT1 is the A10k audio taper.
  - Do not pad it with 100kΩ.
- **ON-OFF-ON Rocker (DPDT):**
  - Left / power = **ON | OFF | ON** side (L1 L2 L3).
  - Right / gain = **1 | 2 | 3** side (R1 R2 R3).
    - Do not use “the labeled face.” Both faces are labeled.
  - Commons are the middle lug of each row (L2, R2).
  - Left never shorts to Right. Six lugs only.
  - Center: all open. Power off.
  - Either ON powers VCC. L1 vs L3 does not matter (both BAT+).
  - *Power pole (Left):*
    - L1 and L3 to BAT+ (unswitched 9 V).
    - L2 to switched VCC (Pin 6, C5+, C6, red LED).
  - *Gain pole (Right):*
    - R2 (lug 2) to Pin 1 only. Do not also tie it to C1+.
    - R1 (lug 1) to C1+.
    - C1− to Pin 8.
    - R3 (lug 3): no lead (gain 20).
    - Path on gain 200: Pin 1 → R2 → R1 → C1+ → C1− → Pin 8.
    - Do not jumper R2 to R1 on the board.
    - Do not hang an LED on Pin 1, Pin 8, R2, or R1.
- **Lead colors (as built):**
  - Black = GND. Blue = POT-WIP. Yellow shrink = POT-IN.
  - Red wire = BAT+ (some orange/clear shrink; trust the conductor).
  - Orange wire = VCC. Green = R2 / Pin 1. White = R1 / C1+.
- **Power lamps:**
  - Yellow: BAT+ → 10k → yellow LED → GND. On with the supply.
  - Red: VCC → 10k → red LED → GND. On in either rocker ON.
- **Probe Ground:**
  - Connect the ground clip to the DUT ground (device under test).
  - Mono TS: probe tip → tip, clip → sleeve.
  - Do not clip to an unknown node before verifying it with a
    multimeter.
- **Main Output:**
  - Connect LM386 Pin 5 to C4+.
  - Connect C4− to the test speaker's positive terminal.
  - Connect the test speaker's negative terminal to system ground.
  - C4 is the single 220µF / 50V, not the personal parallel bank.
- **Zobel Network:**
  - Parallel with C4 on Pin 5. Not in series with C4.
  - Connect LM386 Pin 5 to one side of C3.
  - Connect the other side of C3 to R1 (10Ω resistor, not rocker R1).
  - Connect the remaining side of R1 to system ground.
- **Power Decoupling:**
  - Install C5 on **switched VCC**:
    - Positive lead to L2 / Pin 6.
    - Negative lead to ground.
    - Skipping C5 is easy to miss. The circuit still runs on a stiff
      bench supply; it matters more on a 9V battery.
  - Install C6 directly between Pins 6 and 4.
    - Keep its leads as short as possible.

## Assembly Sequence

Analog path is verified on the Archer breadboard at OlyMEGA. Enclosure
and Amazon tip / clip / snap are the portable take-home kit.

1. Power rails: BAT+ on L1/L3, VCC on L2, C5 on VCC, C6 at Pins 6 and 4.
   - Do not skip C5.
2. LM386 Pins 2 and 4 to GND, Pin 6 to VCC.
3. C4 (single 220µF / 50V) from Pin 5 to speaker +, speaker − to GND.
4. C3/R1 Zobel on Pin 5 in parallel with C4.
5. POT1, C2, R2, probe tip. Test at gain 20 (R3 open, C1 out).
6. C1 only after gain 20 is stable:
   - R2 → Pin 1. R1 → C1+. C1− → Pin 8.
7. Optional C7 on Pin 7 if hiss is excessive.
8. Later: transfer into an insulated portable enclosure.

## Mandatory Bench Constraints

- **Low-Voltage Audio Circuits Only:**
  - Use the probe on battery-powered or verified low-voltage audio circuits.
  - DUT means device under test (the pedal, synth, or preamp).
  - Mono TS jack: probe tip → tip, ground clip → sleeve.
  - Do not use it on:
    - Mains wiring
    - Hot-chassis equipment
    - Tube-amplifier circuits
    - Unknown high-voltage rails
    - Bridged amplifier speaker outputs
- **Ground Connection Is Not Isolated:**
  - Battery power isolates the probe's supply from building mains.
  - The Dr. Meter is earth-referenced through the bench.
  - Connecting the ground clip electrically joins the probe and the DUT.
  - A USB or computer source may hum (ground loop).
  - Verify the target ground with a multimeter before attaching the clip.
- **OlyMEGA Bench Supply:**
  - Use the Dr. Meter as 9 V only.
  - Do not run the LM386 above 12 V.
  - Keep the current limit engaged on first power-up.
  - Disconnect the supply before changing wiring.
  - Do not parallel a 9V battery with the Dr. Meter.
- **Input Protection:**
  - Never bypass C2 or R2.
  - Measure unknown nodes for DC voltage before probing them.
  - Begin with POT1 at minimum volume.
- **Speaker DC Protection:**
  - Never bypass C4.
  - LM386 Pin 5 rests near half the supply voltage during normal
    single-supply operation.
  - C4 prevents that DC offset from heating the test-speaker voice coil.
- **Gain Stability:**
  - Begin at the default gain of 20 (lug 3 / R3 open).
  - Use gain 200 (lug 1 / white) only when the traced signal is too quiet.
  - Return to gain 20 if the amplifier squeals, oscillates, or becomes noisy.
- **Electrolytic Capacitor Polarity:**
  - C1 positive lead faces C1+ / R1 (toward Pin 1).
  - C1 negative lead faces Pin 8.
  - C4 positive faces LM386 Pin 5.
  - C4 negative faces the test speaker.
  - C5 positive lead faces switched VCC.
  - C5 negative lead faces system ground.
  - Optional C7 positive lead faces Pin 7.
  - Optional C7 negative lead faces system ground.
- **Ground Layout:**
  - Use one low-impedance system-ground point for:
    - Probe ground
    - POT1 low side
    - LM386 Pins 2 and 4
    - Speaker return
    - Battery negative
  - Keep the input wiring away from Pin 5 and the speaker wiring.
