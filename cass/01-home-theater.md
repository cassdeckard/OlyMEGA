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
- **Ordered with Project 2 (awaiting shipment):**
  - Audtek 16 AWG OFC speaker wire
    - Extra stock beyond the lamp cord already in hand.
    - Usable for Sanyo monitor runs if the lamp cord is short.
- **Ordered (Amazon, 21 Aug 2026):**
  - Highwings 20 ft HDMI cable (`B095W9T9QQ`)
    - Extractor video out to projector.
    - Marketed as 48 Gbps / HDMI 2.1; this path is HDMI 2.0 18 Gbps.


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
