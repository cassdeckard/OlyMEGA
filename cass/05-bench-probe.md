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
  - LM386N-1 from the IC inventory
- **To Be Ordered:**
  - *Input and Control:*
    - Insulated probe tip
    - Ground clip
    - 10kΩ input protection resistor (R2)
    - 1µF film capacitor (C2), preferred
      - A bipolar capacitor is also suitable.
      - A 10µF electrolytic may be used with polarity precautions.
    - 100kΩ audio-taper volume potentiometer (POT1), preferred
      - An A10k pot works for low-impedance line-level circuits.
      - A100k reduces loading on guitar pedals and sensitive nodes.
  - *Gain Control:*
    - 10µF / 25V electrolytic capacitor (C1)
    - SPST gain switch
  - *Output and Stability:*
    - 0.05µF or 0.1µF ceramic capacitor (C3)
    - 10Ω / 0.25W resistor (R1)
    - 220µF / 25V electrolytic capacitor (C4)
    - Known-good 8Ω test speaker
  - *Power Supply:*
    - 9V battery snap
    - 9V battery
    - Power switch
    - 100µF / 25V electrolytic capacitor (C5)
    - 100nF ceramic capacitor (C6)
  - *Optional Noise Reduction:*
    - 10µF / 25V electrolytic bypass capacitor (C7)
      - Positive lead to Pin 7
      - Negative lead to ground

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

 [Pin 1] ──> [SPST Gain Switch] ──> [+ C1 10µF −] ──> [Pin 8]
--------------------------------------------------------------------------------
```

## LM386 Pin Map

- **Pin 1 — Gain:**
  - Connect to the positive lead of C1 through the gain switch.
  - Leave disconnected when the switch is open.
    - Open switch: default gain of 20.
    - Closed switch: gain of 200.
- **Pin 2 — Inverting Input:**
  - Connect directly to system ground.
- **Pin 3 — Non-Inverting Input:**
  - Connect to the center wiper of POT1.
- **Pin 4 — Ground:**
  - Connect directly to system ground.
- **Pin 5 — Output:**
  - Split into two parallel branches:
    - Main output through C4 to the test speaker.
    - Zobel network through C3 and R1 to ground.
- **Pin 6 — Supply Voltage:**
  - Connect to the switched positive 9V rail.
- **Pin 7 — Bypass:**
  - Leave open for the minimum-parts build.
  - Optionally connect C7 from Pin 7 to ground to reduce noise.
- **Pin 8 — Gain:**
  - Connect to the negative lead of C1.
  - Leave disconnected when the gain switch is open.

## Peripheral Node Map

- **Probe Input:**
  - Connect the insulated probe tip to R2.
  - Connect R2 to C2.
  - Connect C2 to the high side of POT1.
  - If C2 is a polarized electrolytic:
    - Orient its positive lead toward the probe tip when testing circuits
      whose signal rides on a positive DC bias.
    - Use a film or bipolar capacitor when polarity is uncertain.
- **Volume Control:**
  - Connect the POT1 high side to C2.
  - Connect the POT1 center wiper to LM386 Pin 3.
  - Connect the POT1 low side to system ground.
- **Probe Ground:**
  - Connect the ground clip to the circuit's system ground.
  - Do not clip it to an unknown node before verifying that node with a
    multimeter.
- **Main Output:**
  - Connect LM386 Pin 5 to the positive lead of C4.
  - Connect the negative lead of C4 to the test speaker's positive terminal.
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
4. Add the C3/R1 Zobel branch.
5. Build the volume-control and probe-input path.
6. Test at the default gain of 20 with the gain switch open.
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
  - C4 positive lead faces LM386 Pin 5.
  - C4 negative lead faces the test speaker.
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
