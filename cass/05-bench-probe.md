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
  - 1 × 10Ω resistor (R1)
  - 4 × 100nF (`104`) ceramic capacitors
    - C3, C6, two spare.
  - 5 × 10µF / 50V electrolytic capacitors
    - C1, C2, one in the C4 bank, optional C7, one spare.
    - C2 positive toward the probe tip on +DC nodes.
  - 2 × 100µF / 50V electrolytic capacitors
    - One is C5. Keep it on the 9V rail.
    - One seeds C4. Do not put both on C4.
    - C4 bank: 100 + 47 + 33 + 22 + 10 + 4.7 + 3.3 = 220µF.
    - All positives to Pin 5. All negatives to the speaker.
  - 1 × 47µF / 25V electrolytic capacitor (C4 parallel)
  - 1 × 33µF / 25V electrolytic capacitor (C4 parallel)
  - 1 × 22µF / 25V electrolytic capacitor (C4 parallel)
  - 1 × 4.7µF / 50V electrolytic capacitor (C4 parallel)
  - 1 × 3.3µF / 50V electrolytic capacitor (C4 parallel)
  - 1 × A10k audio-taper potentiometer
    - POT1. Even throw into the LM386; ~10k load on the probed node.
    - Fine for pedal outputs. Heavy on guitar pickups and fuzz inputs.
  - 1 × ALPHA A1M audio-taper potentiometer
    - Spare. Do not use as POT1 without a 100k pad.
  - 1 × 4-pin momentary pushbutton
    - Two independent NO pairs.
    - Spare. Power and gain are on the DPDT rocker.
  - 1 × DPDT ON-OFF-ON rocker
    - 6 terminals. 6 A / 125 VAC (fine at 9 V).
    - One pole: power. One pole: gain 20 / 200.
    - Center is OFF (no power).
  - 1 × yellow LED
  - 1 × 1W 8Ω speaker
  - 9V batteries
    - Usable at home once the snap arrives.
    - Use the bench supply while at the space.
- **At OlyMEGA bench (while here):**
  - Probe tips
    - Space-owned. Use one into R2.
    - Do not take it home.
  - Ground clips and leads
    - Same job as the Amazon clip.
    - Clip only to a verified DUT ground.
  - Dr. Meter DC bench supply
    - Stand-in for the 9V battery and snap.
    - Set **9.0 V**.
    - Current-limit **~200 mA** on first power-up.
    - Raise to **~500 mA** only if it current-limits when the speaker is loud.
    - Positive to L1 and L3 (battery +).
    - Negative to system ground (battery −).
    - Do not connect a 9V battery at the same time.
    - Confirm polarity before applying power.
    - Leave the supply at the bench.
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
  - 1 × 220µF electrolytic capacitor (C4, optional)
    - Single-part substitute for the 220µF parallel bank.

## Functional Signal and Power Map

```unset
--------------------------------------------------------------------------------
 [Probe Tip] ─> [R2 10kΩ] ─> [C2 DC Block] ─> [Volume Pot] ─> [Pin 3]

 [Ground Clip] ───────────────────────────────────────────> [System GND]

                                 [9V Battery]
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
  - Connect to the positive lead of C1 through one pole of the
    ON-OFF-ON rocker.
  - Center and the gain-20 throw leave C1 open (gain 20).
  - The gain-200 throw closes C1 to Pin 8 (gain 200).
  - Center also kills power, so gain does not matter there.
- **Pin 2 — Inverting Input:**
  - Connect directly to system ground.
- **Pin 3 — Non-Inverting Input:**
  - Connect to the center wiper of POT1.
- **Pin 4 — Ground:**
  - Connect directly to system ground.
- **Pin 5 — Output:**
  - Split into two parallel branches:
    - Main output through C4 to the test speaker.
      - C4 is the 220µF bank
        (100 + 47 + 33 + 22 + 10 + 4.7 + 3.3).
    - Zobel network through C3 and R1 to ground.
- **Pin 6 — Supply Voltage:**
  - Connect to the switched positive 9V rail.
  - That rail is the common of the power pole on the ON-OFF-ON rocker.
- **Pin 7 — Bypass:**
  - Leave open for the minimum-parts build.
  - Optionally connect C7 from Pin 7 to ground to reduce noise.
- **Pin 8 — Gain:**
  - Connect to the negative lead of C1.
  - C1 reaches Pin 8 only on the gain-200 throw.

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
  - Pins: L1 L2 L3 facing the labeled side; R1 R2 R3 opposite.
  - Commons are L2 and R2. Left never shorts to Right.
  - Paddle 1: L2–L3 and R2–R3.
  - Paddle 2 (center): all open. Power off.
  - Paddle 3: L2–L1 and R2–R1.
  - *Power pole (Left):*
    - L1 and L3 to battery positive.
    - L2 to the switched 9V rail (Pin 6, C5+, C6).
  - *Gain pole (Right):*
    - R2 to C1 positive (toward Pin 1).
    - R3: no connection (paddle 1 = gain 20).
    - R1 to C1 negative and Pin 8 (paddle 3 = gain 200).
  - Swap R1/R3 if you want gain 200 on paddle 1 instead.
- **Probe Ground:**
  - Connect the ground clip to the circuit's system ground.
  - Do not clip it to an unknown node before verifying that node with a
    multimeter.
- **Main Output:**
  - Connect LM386 Pin 5 to the positive leads of the C4 bank.
  - Connect the negative leads of the C4 bank to the test speaker's
    positive terminal.
  - Connect the test speaker's negative terminal to system ground.
- **Zobel Network:**
  - Connect LM386 Pin 5 to one side of C3.
  - Connect the other side of C3 to R1.
  - Connect the remaining side of R1 to system ground.
- **Power Decoupling:**
  - Install C5 across the power rails:
    - Positive lead to the 9V rail.
    - Negative lead to ground.
  - Install C6 directly between Pins 6 and 4.
    - Keep its leads as short as possible.

## Assembly Sequence

1. Build the 9V power rails, ON-OFF-ON power pole, C5, and C6.
   - At the space: feed L1/L3 from the Dr. Meter (+), ground from its −.
   - At home: feed L1/L3 from the 9V snap once it arrives.
2. Install the LM386 and connect Pins 2, 4, and 6.
3. Build the C4 speaker-output branch.
   - Parallel 100 + 47 + 33 + 22 + 10 + 4.7 + 3.3µF (220µF).
   - Keep the other 100µF for C5.
4. Add the C3/R1 Zobel branch.
5. Build the volume-control and probe-input path.
6. Test at gain 20 (power ON, C1 open).
7. Add the C1 gain pole only after the base circuit is stable.
8. Add optional Pin 7 bypass capacitor C7 if residual noise is excessive.
9. Transfer the verified circuit into an insulated portable enclosure.

## Mandatory Bench Constraints

- **Low-Voltage Audio Circuits Only:**
  - Use the probe on battery-powered or verified low-voltage audio circuits.
  - Do not use it on:
    - Mains wiring
    - Hot-chassis equipment
    - Tube-amplifier circuits
    - Unknown high-voltage rails
    - Bridged amplifier speaker outputs
- **Ground Connection Is Not Isolated:**
  - Battery power isolates the probe's supply from building mains.
  - The Dr. Meter is earth-referenced through the bench.
  - Connecting the ground clip electrically joins the probe and the device
    under test.
  - Verify the target ground with a multimeter before attaching the clip.
- **OlyMEGA Bench Supply:**
  - Use the Dr. Meter as 9 V only.
  - Do not run the LM386 above 12 V.
  - Keep the current limit engaged on first power-up.
  - Disconnect the supply before changing wiring.
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
  - Begin at the default gain of 20.
  - Use gain 200 only when the traced signal is too quiet.
  - Return to gain 20 if the amplifier squeals, oscillates, or becomes noisy.
- **Electrolytic Capacitor Polarity:**
  - C1 positive lead faces Pin 1.
  - C1 negative lead faces Pin 8.
  - C4 positives face LM386 Pin 5.
  - C4 negatives face the test speaker.
  - C5 positive lead faces the 9V rail.
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
