# 📌 PROJECT 1: AUDIOPHILE HOME THEATER & MONITORING STATION


This setup integrates a mix of thrifted, curbed, and custom DIY components. It
bypasses weak consumer audio stages (DACs), establishes a high-headroom tracking
pipeline, and adds stealth wireless streaming functionality.


<a id="project-1-inventory"></a>

## 📦 Supply Chain & Inventory Status


- **In Hand:**
  - Focusrite Scarlett 2i2
  - Sanyo SS-540 Speakers
  - Audio Turntable
  - Yamaha HTR-5450 Receiver
  - 16 AWG Pure Copper (OFC) lamp cord
  - 5V Nook AC adapter block
  - KabelDirekt Toslink Optical Cable
  - KabelDirekt HDMI 2.0 Audio Extractor
  - MH-M18 Lossless Bluetooth Breakout Board
  - Highwings 20 ft HDMI cable (`B095W9T9QQ`)
    - Arrived (Amazon, ordered 21 Aug 2026).
    - Extractor video out to projector.
    - Marketed as 48 Gbps / HDMI 2.1; this path is HDMI 2.0 18 Gbps.
  - Audtek 16 AWG OFC speaker wire leftover
    - Arrived 26 Aug 2026 with the Project 2 Audio Express order.
    - Extra stock beyond the lamp cord already in hand.
    - Usable for Sanyo monitor runs if the lamp cord is short.
  - *Banana plugs for Sanyo monitor runs:*
    - 4 × dual banana plugs, **0.75" (19 mm)** spacing.
    - Arrived 29 Aug 2026.
    - One dual on each end of each speaker cable.
    - 16 AWG lamp cord or leftover Audtek.
    - Screw-clamp barrels that accept 16 AWG.
      - Fold the conductor once if the barrel is sized for 12 AWG.
    - Yamaha HTR-5450 MAIN posts accept bananas on US models.
      - Pop the plastic sealing caps in the knob centers first.
      - Tighten the knob, then insert the banana.
    - Project 2 260-283 cups also accept dual bananas.


<a id="project-1-hdmi"></a>

## 🎬 Pipeline 1A: Extracted Audio Monitors (HDMI Setup)


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
          [20 ft HDMI Cable]                   [KabelDirekt Toslink]
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


<a id="project-1-tracking"></a>

## 🎚️ Pipeline 1B: Studio Tracking Gain Staging


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
