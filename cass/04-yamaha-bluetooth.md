# 📌 PROJECT 4: STEALTH INTERNAL BLUETOOTH MODIFICATION

Internalizing the MH-M18 behind the Yamaha HTR-5450 faceplate. Power is
switched AC into the hidden Nook 5V adapter, then into the module.


<a id="project-4-inventory"></a>

## 📦 Supply Chain & Inventory Status

- **In Hand:**
  - Yamaha HTR-5450 receiver
  - MH-M18 lossless Bluetooth breakout
  - 5V Nook AC adapter block
  - SN74HC138N from the IC inventory
    - Extra-credit input decoder only.
  - Normally-open momentary pushbutton
    - MH-M18 `KEY` to module ground.
  - 3M Black Super Weatherstrip Adhesive 03602 (`B000CCFXYY`)
    - Arrived 22 Aug 2026 with the HDMI cable and probe hardware.
    - 1 fl oz. Rubber-to-metal for the chassis damping pad.
- **Check at OlyMEGA (21 Aug 2026):**
  - *Extra credit only:*
    - High-side P-channel MOSFET or 5V load switch
    - Switches Nook +5V to MH-M18 `VCC`.
    - Not in `INVENTORY.md`.
      - ULN2803A, L293D, SN754410, and TPIC6B595 are low-side
        or H-bridge parts, not this switch.
- **Ordered with Project 2 (awaiting shipment):**
  - Speaker gasketing tape leftover
    - Optional anti-rattle under the Nook wart or MH-M18
      if they buzz on the chassis.
- **Not required:**
  - B0505S DC-DC isolator
    - Dropped. The Nook wart already isolates 5V from mains.
    - Amazon reviews that mention a B0505S are treating it as an
      **or** with soldering, not a second isolator on top of a wart.


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
  - The crease is on the **side** of the pad, not the cover-bearing face.
    - Thickness still matches the intact pad. Reuse both originals.
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
    - On-hand equivalents that are acceptable:
      - Permatex black or yellow weatherstrip adhesive
      - 3M yellow Super Weatherstrip Adhesive (same job, not black)
      - Original Weldwood / DAP contact cement
      - Barge cement (shoe/rubber contact cement)
      - 3M VHB or automotive trim tape if the pad is thin and flat
      - E6000 or Shoe Goo as a last resort (slow cure, keep it thin)
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
    - That is the "own 5V rail / USB wart from spliced AC" step in MH-M18
      write-ups. Do not steal 5V from a Yamaha rail.
  - Solder `VCC` and `GND` to the module.
    - Use a short, stout ground. Do not rely on header pins.
    - Intermittent half-hole contact is the usual source of hash on these
      boards.
  - Do not add the B0505S DC-DC isolator.
    - Reviews that mention a B0505S-1W mean **solder everything or add
      a B0505S**, not wart **and** B0505S.
    - They used headers, heard ground noise, and offered the isolator as
      a workaround. Soldering is the fix that matches this build.
    - After MH-M18 audio ground bonds to Yamaha AUX ground, a B0505S
      only floats the wart return. It does not isolate the audio path.
    - It can add switching noise and regulation issues.
  - Connect the MH-M18 ground to the Yamaha AUX ground at one deliberate
    point.
  - Add local supply filtering, or revisit a B0505S, only if bench
    testing still shows hum after the soldered ground.
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


<a id="project-4-extra-credit"></a>

## 🧪 Extra Credit: Input-Selected Bluetooth Power


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
