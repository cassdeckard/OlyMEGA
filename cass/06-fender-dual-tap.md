# 📌 PROJECT 6: FENDER DUAL TAP TEMPO FOOTSWITCH

**Status:** Complete.

Converted a leftover Fender two-button amp footswitch into a dual MXR Tap
Tempo box. It now drives the **CTR** and **EXP** jacks on an MXR Clone
Looper.

- **Finished:**
  - On the bench with the Clone Looper:

    <img
      src="../fender-footswitch/after-connected-to-clone-looper.jpg"
      alt="Dual-tap box wired to the Clone Looper CTR and EXP jacks"
      width="900">
  - PETG end cap and second Switchcraft jack:

    <img
      src="../fender-footswitch/after-printed-side-and-second-jack.jpg"
      alt="Trimmed PETG end cap with a Switchcraft mono jack"
      width="900">

<a id="project-6-original"></a>

## Original Hardware

- **Donor:** Fender CHANNEL SELECT / CHORUS footswitch.
  - Assembly P/N **0029972000**.
  - Amp is no longer in the house, so the box was free to reuse.
- **Factory circuit:**
  - PCB labeled Fender Musical Instruments.
  - Two latching **SLDT** footswitches on footprints `S1` and `S2`.
  - One stereo **TRS** jack at `J1`.
  - Two LED light pipes and diodes `CR1` / `CR2`.
- **References (original, not the finished mod):**
  - Outside, still wearing the Fender faceplate:

    <img
      src="../fender-footswitch/original-enclosure-channel-select-chorus.png"
      alt="Original Fender CHANNEL SELECT and CHORUS footswitch"
      width="900">
  - Inside after the SLDT switches were desoldered. `J1` is still on the
    board. The two Mexico-marked switches are sitting loose:

    <img
      src="../fender-footswitch/pcb-after-desoldering-switches.png"
      alt="Factory PCB after desoldering the SLDT footswitches"
      width="900">

<a id="project-6-conversion"></a>

## Conversion

- **Goal:**
  - Two independent momentary closures.
  - One to Clone Looper **CTR**.
    - Tap controls loop speed, direction, and quiet clear.
  - One to Clone Looper **EXP** as a tap switch, not an expression pedal.
    - Tap engages Play Loop Once / stutter.
    - EXP still expects a **mono TS** cable when used this way.
    - A TRS expression pedal would take over loop volume instead.
- **Switches:**
  - Replaced the SLDT footswitches with **SLST** switches from the OlyMEGA
    scrap drawer.
  - The SLST pinout does not match the `S1` / `S2` PCB pads.
  - Point-to-point flying leads inside the enclosure.
    - The factory PCB is not in circuit.
- **Jacks:**
  - Replaced `J1` with two **Switchcraft mono TS** jacks.
  - A TRS jack plus a stereo-to-dual-mono splitter was considered.
    - The OEM jack body did not clear the larger SLST switches.
- **Wiring:**
  - Each SLST is a normally-open momentary.
  - Tip to one switch lug, sleeve to the other.
  - No shared PCB; each jack is a separate cable to the looper.
  - In the finished photo, the left jack of the box goes to **CTR**.
  - The right jack goes to **EXP**.

```unset
--------------------------------------------------------------------------------
 [Momentary SLST] ──────────────────── TS ─────────────────── [Clone Looper CTR]
      speed / reverse / quiet clear

 [Momentary SLST] ──────────────────── TS ─────────────────── [Clone Looper EXP]
      Play Loop Once (mono tap, not expression)
--------------------------------------------------------------------------------
```

<a id="project-6-enclosure"></a>

## Enclosure

- **Top plate:**
  - The original Fender plate is flipped, graphics facing inward.
  - Bare metal is the current face.
    - A white sticker went on during the build and was later removed.
  - Two square LED windows from the factory light pipes are unused.
  - A printed overlay is a later cosmetics pass.
- **End caps:**
  - Replaced the original nylon (or nylon-like) plastic ends.
  - The ribbed aluminum extrusion is still the factory shell.
  - Extra jack hole in one PETG end so each Switchcraft jack has its own
    face.
  - Printed in clear PETG on a holographic plate.
    - PETG did not pick up the holographic texture.
    - The bases printed, but the raised walls spaghetti'd.
    - Those walls were trimmed off so the box would close.
  - Considering a reprint in **SUNLU Easy PA** nylon.
    - Closer to the original end-cap material than PETG.
    - Skip the holographic plate for that print.

<a id="project-6-follow-up"></a>

## Follow-Up

- Reprint the end caps in Easy PA if the trimmed PETG bothers you.
- Add the end-cap source (OpenSCAD or equivalent) to this repo when it
  is handy.
- Design a stick-on printed faceplate for the flipped plate.
  - Cover or fill the unused LED windows if the overlay allows it.
