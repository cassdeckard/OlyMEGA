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
  - 1 × ALPHA A1M audio-taper potentiometer
    - 1MΩ. POT1.
    - Parallel a 100kΩ across high side to ground (~91kΩ).
    - That matches the intended A100k load on the LM386.
  - 1 × 4-pin momentary pushbutton
    - Two independent NO pairs.
    - Spare for this build if the latching rockers are used.
  - 1 × yellow LED
  - 1 × 1W 8Ω speaker
  - 9V batteries
- **To Be Acquired:**
  - Insulated probe tip
  - Ground clip
  - 9V battery snap
  - 1 × 10Ω / 0.25W resistor (R1)
  - 1 × 100kΩ resistor (POT1 pad)
    - Across POT1 high side to ground.
  - 2 × latching rocker switches
    - Power, and gain 20 / 200.
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

 [Pin 1] ──> [Latching Gain] ──> [+ C1 10µF −] ──> [Pin 8]
--------------------------------------------------------------------------------
```

## LM386 Pin Map

- **Pin 1 — Gain:**
  - Connect to the positive lead of C1 through the latching gain rocker.
  - Leave disconnected when the switch is off.
    - Off: default gain of 20.
    - On: gain of 200.
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
- **Pin 7 — Bypass:**
  - Leave open for the minimum-parts build.
  - Optionally connect C7 from Pin 7 to ground to reduce noise.
- **Pin 8 — Gain:**
  - Connect to the negative lead of C1.
  - Leave disconnected when the gain switch is off.

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
  - POT1 is the ALPHA A1M (1MΩ audio taper).
  - Parallel 100kΩ from the POT1 high side to ground.
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

1. Build the 9V power rails, switch, C5, and C6.
2. Install the LM386 and connect Pins 2, 4, and 6.
3. Build the C4 speaker-output branch.
   - Parallel 100 + 47 + 33 + 22 + 10 + 4.7 + 3.3µF (220µF).
   - Keep the other 100µF for C5.
4. Add the C3/R1 Zobel branch.
5. Build the volume-control and probe-input path.
6. Test at the default gain of 20 with the gain rocker off.
7. Add the switchable C1 gain branch only after the base circuit is stable.
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
  - Connecting the ground clip electrically joins the probe and the device
    under test.
  - Verify the target ground with a multimeter before attaching the clip.
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
