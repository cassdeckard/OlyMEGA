# SYSTEM CONTEXT: AUDIO INFRASTRUCTURE & ACTIVE PROJECT MANIFEST

## Table of Contents

1. [Audiophile Home Theater & Monitoring Station](#project-1)
  - [📦 Supply Chain & Inventory Status](#project-1-inventory)
    - [🎬 Pipeline 1A: Extracted Audio Monitors](#project-1-hdmi)
    - [🎚️ Pipeline 1B: Studio Tracking Gain Staging](#project-1-tracking)
2. [Sanyo SS-540 Speaker Modification](#project-2)
  - [📦 Supply Chain & Inventory Status](#project-2-inventory)
    - [📐 Project State & Architectural Roadmap](#project-2-roadmap)
3. [Custom Interconnect Cables Build](#project-3)
4. [Stealth Internal Bluetooth Modification](#project-4)
  - [🧪 Extra Credit: Input-Selected Bluetooth Power](#project-4-extra-credit)
5. [Portable Bench Signal Audio Probe & Test Amplifier](#project-5)

---



## 📌 PROJECT 1: AUDIOPHILE HOME THEATER & MONITORING STATION

[↑ Back to top](#table-of-contents)

This setup integrates a mix of thrifted, curbed, and custom DIY components. It
bypasses weak consumer audio stages (DACs), establishes a high-headroom tracking
pipeline, and adds stealth wireless streaming functionality.



### 📦 Supply Chain & Inventory Status

[↑ Back to top](#table-of-contents)

- **In Hand:**
  - Focusrite Scarlett 2i2
  - Sanyo SS-540 Speakers
  - Audio Turntable
  - Yamaha HTR-5450 Receiver
  - 16 AWG Pure Copper (OFC) lamp cord
  - 5V Nook AC adapter block
  - KabelDirekt Toslink Optical Cable
  - MH-M18 Lossless Bluetooth Breakout Board
- **Delayed in Transit:**
  - KabelDirekt HDMI 2.0 Audio Extractor
- **Pending Inspection:**
  - 6-to-8 foot HDMI Cable
    - Audit physical storage drawers to verify whether a spare is available.



### 🎬 Pipeline 1A: Extracted Audio Monitors (HDMI Setup)

[↑ Back to top](#table-of-contents)

```unset
--------------------------------------------------------------------------------
                             [onn. Google TV Stick]
                                        │
                                        │ HDMI (direct plug)
                                        ▼
                       [KabelDirekt HDMI Audio Extractor]
                                        │
                    ┌───────────────────┴───────────────────┐
                    │                                       │
                Video only                              Audio only
                    │                                       │
                    ▼                                       ▼
          [6–8 ft HDMI Cable]                  [KabelDirekt Toslink]
                    │                                       │
                    ▼                                       ▼
       [Projector HDMI Input]                 [Yamaha HTR-5450 Receiver]
                                                   CD Optical Input
--------------------------------------------------------------------------------
```

- *Calibration:*
  - Set the extractor toggle to **2CH**.
    - Forces an uncompressed stereo PCM downmix.
  - Configure the Yamaha speaker channels:
    - Center (`CNTR`): **NONE / OFF**
    - Surround (`SURR`): **NONE / OFF**
    - Front Main (`MAIN`): **LARGE**
  - Engage the physical **STEREO / EFFECT OFF** button.



### 🎚️ Pipeline 1B: Studio Tracking Gain Staging

[↑ Back to top](#table-of-contents)

- *Hardware Interconnect:*
  - Use a dual 1/4" TS mono to dual RCA unbalanced cable.
  - At each Scarlett TRS jack, the TS plug shorts ring to sleeve.
    - This prevents phase cancellation.
- *Gain Calibration:*
  - Set the Scarlett 2i2 master output to **12 o'clock (50%)**.
    - Establishes a nominal line-level voltage floor.
  - Use the Yamaha volume knob as the master room attenuation control.
  - Adjust the preamp input gains until the clipping halos flash solid green.

```unset
--------------------------------------------------------------------------------
                           [Microphone / Instrument]
                                        │
                                        ▼
                        [Scarlett 2i2 Input and Preamp]
                                        │
                    ┌───────────────────┴───────────────────┐
                    │                                       │
                 USB path                            Monitor path
                    │                                       │
                    ▼                                       ▼
          [Computer / DAW]                     [Line Outputs 1 and 2]
                                                            │
                                                  Dual 1/4" TS to RCA
                                                            │
                                                            ▼
                                               [Yamaha Stereo RCA Input]
                                                            │
                                                   Room volume control
                                                            │
                                                            ▼
                                                   [Sanyo SS-540 Pair]
--------------------------------------------------------------------------------
```

---



## 📌 PROJECT 2: SANYO SS-540 SPEAKER MODIFICATION PROJECT

[↑ Back to top](#table-of-contents)

The user is executing a total interior refurbishment and filter modernization
of the curbside-salvaged 3-way Sanyo enclosures. The factory driver geometry is
retained, with the woofer running wide open. Low-grade factory electrolytic
filters inline with the mid-range and tweeter are being replaced with precision
metalized film networks.



### 📦 Supply Chain & Inventory Status

[↑ Back to top](#table-of-contents)

- **In Hand:**
  - Sanyo SS-540 speaker pair
    - Two cabinets
    - Factory woofers, mid-range drivers, and tweeters
    - Factory wiring harnesses and terminal plates
- **To Be Ordered:**
  - *Crossover Boards:*
    - 2 × 3.5" x 5" pre-perforated crossover boards
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
    - 2 × 2-15/16" gold binding-post terminal cups
  - *Driver Repair Supplies:*
    - Black rubber cement
      - Repair the left mid-range driver's aluminum center cone cap.
  - *Internal Wiring:*
    - Audtek 16 AWG oxygen-free copper speaker wire



### 📐 Project State & Architectural Roadmap

[↑ Back to top](#table-of-contents)

- **Current State:**
  - Left speaker cabinet completely gutted.
  - Components removed:
    - Factory drivers
    - Wiring harness
    - Terminal plate
- **Mid-Range Driver Repair:**
  - Repair the left mid-range driver's aluminum center cone cap.
  - Use black rubber cement to restore and secure the damaged area.
- **Crossover Filter Networks:**
  - Rebuild the high-pass stages on two 3.5" x 5" pre-perforated boards.
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
    - Seal around the new 2-15/16" gold binding-post terminal cups.
- **Internal Rewiring:**
  - Redo all structural point-to-point connections.
  - Use Audtek 16 AWG oxygen-free copper speaker wire.

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

---



## 📌 PROJECT 3: CUSTOM INTERCONNECT CABLES BUILD

[↑ Back to top](#table-of-contents)

- **Schedule:** Thursday makerspace session.
- **Task:** Soldering custom 1/4" TS to RCA cables from bulk stock.
- **Solder Blueprint:**
  - *1/4" TS End:*
    - Center core to **Tip**
    - Outer braided shield to **Sleeve**
  - *RCA End:*
    - Center core to **Center Pin**
    - Outer braided shield to **Outer Ring Shield**

```unset
--------------------------------------------------------------------------------
[1/4" TS Plug]                                                    [RCA Plug]

    Tip  ───────────────── Center Conductor ────────────────── Center Pin

  Sleeve ────────────────── Braided Shield ─────────────────── Outer Ring
--------------------------------------------------------------------------------
```

---



## 📌 PROJECT 4: STEALTH INTERNAL BLUETOOTH MODIFICATION

[↑ Back to top](#table-of-contents)

- **Task:** Internalizing the MH-M18 module behind the Yamaha's front faceplate.
- **Preparation Status:**
  - Receiver cover removed for access.
  - AC-input harness disconnected from the board before modification work.
    - Reference:
      `[ac-input-harness-disconnected.jpg](yamaha-internals/ac-input-harness-disconnected.jpg)`
  - Keep the receiver unplugged while open.
  - Verify that stored voltages have discharged before touching circuitry.
  - Photograph and label every disconnected harness before further
    disassembly.
  - *AV Input/Output Terminal Removal:*
    - Remove the accessible AV terminal boards to expose the modification
      area.
    - Disconnect thin flexible ribbons only where their connectors release
      without excessive force.
    - Leave thicker ribbon harnesses attached when they appear soldered or
      their release mechanism is uncertain.
      - Do not pull harder to determine whether they are removable.
    - Bag the attached boards and move them aside without twisting,
      creasing, or loading the remaining ribbons.
    - Support the bags so their weight does not hang from the wiring.
    - Prefer antistatic bags over ordinary plastic when available.
    - Protect exposed ribbon contacts from fingerprints, dirt, and impact.
    - References:
      - [Thin ribbon disconnected from terminal board](yamaha-internals/thin-ribbon-disconnected-from-av-board.jpg)
      - [Removed AV terminal board](yamaha-internals/removed-av-terminal-board.jpg)
      - [Boards bagged and moved aside](yamaha-internals/av-boards-bagged-and-moved-aside.jpg)
  - *Rear Analog RCA Identification:*
    - Use the Yamaha HTR-5450 rear-panel diagram to identify the bottom row
      of stereo RCA pairs.
    - From the **outside**, reading left to right:
      1. `AUX`
      2. `CD`
      3. `MD/CD-R IN (PLAY)`
      4. `MD/CD-R OUT (REC)`
      5. `DVD`
      6. `D-TV/CBL`
      7. `VCR 1 IN`
      8. `VCR 1 OUT`
    - From the **inside**, reading right to left, the order is the same:
      `AUX`, `CD`, `MD/CD-R IN`, `MD/CD-R OUT`, `DVD`, `D-TV/CBL`,
      `VCR 1 IN`, and `VCR 1 OUT`.
    - The `AUX` pair is therefore:
      - Leftmost pair when viewed from behind the receiver.
      - Rightmost pair when viewed from inside the chassis.
      - Preferred dedicated analog input for the Bluetooth modification.
    - Before soldering:
      - Label each pair with low-tack tape.
      - Use continuity testing to verify the `AUX` RCA center contacts
        and ground connections at the intended board pads.
      - Do not rely on physical position alone.
    - References:
      - [Blurry exterior reference](yamaha-internals/rear-analog-rca-input-labels-blurry.jpg)
      - [Interior terminal-row reference](yamaha-internals/av-boards-bagged-and-moved-aside.jpg)
      - [Yamaha HTR-5450 owner's manual](https://www.manualsbase.com/manual/434976/stereo_system/yamaha/htr-5450/)
  - *Interior Dust Cleaning:*
    - Clean the receiver before soldering or reassembly.
    - *Preparation:*
      - Keep the receiver unplugged and the AC-input harness disconnected.
      - Work outdoors or in a well-ventilated area.
      - Wear eye protection.
    - *Dry Cleaning:*
      - Loosen dust with a clean, soft antistatic brush.
      - Use short bursts of canned air while holding the can upright.
      - Prevent loose boards and ribbons from flapping in the airflow.
      - Do not apply a household vacuum nozzle directly to circuitry.
        - Its airflow and nozzle can create an electrostatic-discharge
          risk.
    - *Isopropyl Cleaning:*
      - Use **90–99% isopropyl alcohol** only for stubborn residue.
      - Apply it sparingly with a swab or soft brush.
      - Test first because it can remove markings or weaken old adhesive.
      - Do not soak transformers, relays, potentiometers, switches,
        displays, rubber, or plastic parts.
      - Use a control-safe electronics contact cleaner, not plain
        isopropyl alcohol, for noisy potentiometers or switches.
    - *Completion:*
      - Inspect for dislodged connectors and trapped debris.
      - Allow every cleaned surface to dry completely before reconnecting
        power.
  - *Reassembly Record:*
    - Preserve each ribbon's original orientation and routing.
    - Confirm any connector locking tabs are released before reinsertion.
    - Seat each ribbon squarely to its original depth before closing its
      lock.
- **Chassis Damping-Pad Repair:**
  - Reattach the loose rubber cushioning pad while the receiver is open.
  - *Placement:*
    - Mirror the position and orientation of the intact pad on the opposite
      side.
    - References:
      - [Detached pad](yamaha-internals/detached-chassis-damping-pad.jpg)
      - [Intact opposite-side pad](yamaha-internals/intact-chassis-damping-pad-location.jpg)
  - *Surface Preparation:*
    - Remove loose old adhesive without cutting or stretching the pad.
    - Clean the chassis bonding area with isopropyl alcohol.
    - Test solvent on an inconspicuous part of the rubber before cleaning
      it.
    - Let both surfaces dry completely.
  - *Bonding:*
    - Apply a thin layer of flexible rubber-to-metal adhesive.
    - Prefer **3M black weatherstrip adhesive** or an equivalent
      heat-tolerant flexible contact adhesive.
    - Tape or clamp the pad in place without crushing it.
    - Allow the adhesive to cure fully before reinstalling the cover.
  - *Constraints:*
    - Keep adhesive away from circuit boards, wiring, and ventilation
      openings.
    - Do not use cyanoacrylate, hot glue, or acidic-cure silicone.
    - Confirm that the repaired pad supports the cover without bowing or
      obstructing nearby wiring.
- **Power and Ground Architecture:**
  - Power path:
    - 120V switched mains tap
    - Hidden Nook 5V adapter block
    - MH-M18 VCC/GND input
  - The two-prong Nook adapter already isolates its 5V output from mains.
  - Do not add the B0505S DC-DC isolator.
    - It provides little additional isolation after the MH-M18 audio ground
      connects to the Yamaha AUX ground.
    - It can introduce unnecessary switching noise and regulation issues.
  - Connect the MH-M18 ground to the Yamaha AUX ground at one deliberate
    point.
  - Add local supply filtering only if bench testing reveals noise.
- **Front-Panel KEY Control:**
  - Install a normally-open momentary pushbutton.
  - Wire the switch between:
    - MH-M18 Pin 1 (`KEY`)
    - MH-M18 Pin 4 (`GND`)
      - This is the module and AUX signal ground.
  - Use a direct 0Ω switch closure for this control.
  - Keep the switch and its return entirely on the module side.
- **Documented KEY Behavior:**
  - Short press: play/pause media control.
  - Long-press behavior varies among MH-M18-compatible board revisions.
    - Some revisions may enter standby or toggle power.
    - Available documentation does not guarantee disconnect or unpair.
- **Disconnect Validation:**
  - Pair a test phone before installing the module in the Yamaha.
  - Hold the KEY switch and observe both the phone and module status LED.
  - Treat the switch as a disconnect control only if the actual board:
    - Drops the active Bluetooth connection.
    - Returns to fast-flashing discoverable mode.
    - Does not immediately reconnect to the same phone.
  - Otherwise label it **Play/Pause** or **Power**, based on observed behavior.

```unset
--------------------------------------------------------------------------------
                             [Yamaha Switched AC]
                                        │
                                        ▼
                           [Hidden Nook 5V Adapter]
                                        │
                                  +5V and ground
                                        │
                                        ▼
                           [MH-M18 Bluetooth Board]
                                        │
                    ┌───────────────────┴───────────────────┐
                    │                                       │
               Audio output                           KEY control
                    │                                       │
                    ▼                                       ▼
      [Left, Right, Audio Ground]              [N.O. Momentary Switch]
                    │                                  0Ω closure
                    ▼                                       │
      [Yamaha Internal Stereo Input]                       ▼
                                                [Module-Side Ground]
--------------------------------------------------------------------------------
```



### 🧪 Extra Credit: Input-Selected Bluetooth Power

[↑ Back to top](#table-of-contents)

Power the MH-M18 only while the Yamaha input dedicated to Bluetooth is
selected. This prevents the module from advertising, reconnecting, or taking
over a phone while another receiver source is in use.

- **Feasibility:**
  - Moderate-to-advanced internal modification.
  - The HTR-5450 has no external input-specific trigger output.
  - Its switched AC outlet indicates receiver power only.
  - Automatic control therefore requires a high-impedance internal tap on
    the Yamaha's source-selector state.
- **Preferred Architecture:**
  - Detect the selector state corresponding to the dedicated Bluetooth
    input.
  - Buffer the selector lines so the added circuit does not load them.
  - Decode only the desired input state.
    - If the receiver exposes three stable binary selector lines, an
      inventoried **SN74HC138N** can decode the desired state.
    - Do not assume the lines are static binary signals.
    - A serial control bus would require a different decoder.
  - Drive a high-side P-channel MOSFET or 5V load switch.
  - Switch only the adapter's +5V supply to MH-M18 `VCC`.
- **Power Integration:**
  - Keep the Nook adapter powered from the Yamaha's switched AC outlet.
  - Place the high-side switch between:
    - Nook adapter `+5V Output`
    - MH-M18 Pin 3 (`VCC`)
  - Keep these connections permanently attached:
    - MH-M18 Pin 4 (`GND`)
    - Left and right audio outputs
    - Yamaha audio-input ground
  - Do not switch the MH-M18 ground.
    - Ground switching can encourage audio pops and unintended
      back-power paths.
- **Selector-Tap Constraints:**
  - Never power the MH-M18 directly from a Yamaha selector-control line.
  - Measure selector voltage levels before attaching any logic.
  - Confirm that the selected-input code remains stable after selection.
  - Use a buffer or very high-impedance sense stage at the tap point.
  - Reference the decoder and load-switch control circuit to the same ground
    used by the MH-M18 and Yamaha AUX input.

```unset
--------------------------------------------------------------------------------
 [Yamaha Selector State] ─> [Buffer / Decoder] ─> [Switch Enable]
                                                        │
                                                        ▼
 [Nook 5V Adapter] ────────────────> [High-Side VCC Switch]
                                                        │
                                                        ▼
                                                   [MH-M18 VCC]

 [MH-M18 GND] ─> [Module-Side Ground] ─> [Yamaha Audio Ground]
--------------------------------------------------------------------------------
```

- **Bench-Development Sequence:**
  1. Choose the Yamaha input dedicated to Bluetooth.
  2. Locate the receiver's audio-selector IC and control lines in the
   service manual.
  3. Record the control-line voltages for every Yamaha input.
  4. Identify a state unique to the Bluetooth input.
  5. Test the buffered decoder with an LED before connecting the MH-M18.
  6. Verify that front-panel and remote-control source changes both work.
  7. Add the high-side switch and test with the MH-M18 outside the chassis.
  8. Check for startup pops, shutdown pops, and reliable reconnection.
  9. Install inside the Yamaha only after the decoder remains synchronized.
- **Expected Tradeoffs:**
  - Selecting Bluetooth causes a complete MH-M18 startup.
  - Audio is unavailable until the module boots and reconnects.
  - Selecting another source immediately drops the Bluetooth connection.
  - Startup or shutdown may produce an audible pop.
    - Add an RC delay or mute stage if bench testing confirms a problem.
  - The exact selector tap cannot be finalized until the dedicated Yamaha
    input and its control code are identified.

---



## 📌 PROJECT 5: PORTABLE BENCH SIGNAL AUDIO PROBE & TEST AMPLIFIER

[↑ Back to top](#table-of-contents)

### Project Overview

A low-power, battery-operated LM386 test amplifier for tracing audio through
guitar pedals, synthesizers, preamps, and other low-voltage circuits. A
DC-blocked probe feeds a volume control and LM386, allowing each stage of a
signal path to be heard through a dedicated test speaker without risking the
Scarlett interface or Yamaha receiver.

The battery creates an independent power supply, but the probe is **not
galvanically isolated from the device under test** after its ground clip is
connected.

### Supply Chain & Inventory Status

- **In Hand:**
  - LM386N-1 from the IC inventory
- **Basic Kit Parts Required:**
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

### Functional Signal and Power Map

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

### LM386 Pin Map

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

### Peripheral Node Map

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

### Assembly Sequence

1. Build the 9V power rails, switch, C5, and C6.
2. Install the LM386 and connect Pins 2, 4, and 6.
3. Build the C4 speaker-output branch.
4. Add the C3/R1 Zobel branch.
5. Build the volume-control and probe-input path.
6. Test at the default gain of 20 with the gain switch open.
7. Add the switchable C1 gain branch only after the base circuit is stable.
8. Add optional Pin 7 bypass capacitor C7 if residual noise is excessive.
9. Transfer the verified circuit into an insulated portable enclosure.

### Mandatory Bench Constraints

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

