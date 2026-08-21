# Audio Projects Using the Inventoried ICs

This guide collects audio projects that can be built from the ICs in
[`INVENTORY.md`](INVENTORY.md) plus common electronics-kit parts such as
resistors, capacitors, switches, potentiometers, LEDs, and diodes.

Most projects also need at least one audio transducer or connector:

- 8 Ω speaker, headphones, or piezo disc
- Electret microphone capsule
- 3.5 mm or 1/4-inch audio jacks
- A 5 V or 9 V regulated supply

No additional ICs are required. Verify pinouts and operating limits against the
linked datasheets in the inventory before wiring legacy parts.

## Best Audio ICs in the Inventory

| IC | Quantity | Useful audio role |
| --- | ---: | --- |
| LM386N-1 | 3 | Low-voltage speaker amplifier |
| NE555N | 2 | Audio oscillators, modulation, and timing |
| LM358N | 2 | Single-supply preamps, filters, mixers, and oscillators |
| µPC358C | 2 | LM358-like dual op-amp experiments |
| MC1458P | 2 | Dual-supply preamps, filters, and oscillators |
| LM339N | 1 | Four-threshold audio level detector |
| AD5220BN10 | 1 | Pushbutton-controlled 10 kΩ digital volume control |
| 74HC4052N | 1 | Dual four-channel analog audio selector |
| CD4030BE | 1 | Digital ring modulation and waveform logic |
| SCL4049A/BE | 1 | Six-inverter oscillators and distortion |
| NE5044N | 2 | Multi-control pulse encoder for experimental synthesis |
| ATMEGA328P-PU | 4 | Digital tone, sequencer, control, and display engine |
| ATMEGA168-20PU | 1 | Smaller digital audio-control projects |
| 24LC256-I/P | 1 | Presets, patterns, and sequence storage |
| 24LC32A | 1 | Smaller preset or wavetable storage |
| ADC0831CCN | 2 | 8-bit audio envelope or control-voltage sampling |
| MAX7219CNG | 5 | Spectrum, level, tempo, or sequencer displays |

## Power and Signal Notes

- Use **5 V** for the AVR, ADC0831, MAX7219, AD5220, and 74HC logic.
- The LM386 works well from **5–9 V**. Add a 100 nF ceramic capacitor close to
  its supply pins and a larger electrolytic across the supply rails.
- LM358 and µPC358 are the easiest op-amps here for a single-supply circuit.
  Bias audio signals around a half-supply reference made from two equal
  resistors and a bypass capacitor.
- MC1458 generally behaves better with split supplies. It is not the first
  choice for low-voltage, single-supply builds.
- AC-couple external audio inputs and outputs so circuit bias voltages do not
  reach another device.
- Start tests at low volume. Do not connect a speaker directly to an op-amp,
  logic output, or microcontroller pin.

## Beginner Projects

### 1. LM386 Pocket Amplifier

Build the standard LM386 application circuit as a small powered speaker for a
phone, radio, instrument pickup, or another project in this guide.

#### Inventory ICs

- LM386N-1

#### Basic parts

- 10 kΩ audio-taper volume pot
- Input and output coupling capacitors
- 100 nF supply bypass capacitor
- 220–470 µF supply reservoir capacitor
- Optional 10 µF gain capacitor between pins 1 and 8
- 8 Ω speaker and input jack

The default voltage gain is 20. A capacitor between pins 1 and 8 raises it to
200, but also makes noise, poor layout, and supply instability more apparent.
Build the default-gain version first.

#### Extensions

- Add an LED power indicator.
- Add a headphone output with suitable series resistance.
- Use it as the output stage for every oscillator project below.

### 2. Single-555 Tone Generator

Configure one NE555 as an astable oscillator in the audio range. A
potentiometer changes frequency, while a second pot can attenuate its output
before the LM386.

#### Inventory ICs

- NE555N
- LM386N-1, optional but recommended for a speaker

#### Basic parts

- 100 kΩ or 1 MΩ frequency pot
- Timing resistor and capacitor
- Output coupling capacitor
- Piezo disc, or LM386 and speaker

Use switched timing capacitors to select bass, midrange, and treble ranges.

### 3. Twin-555 Atari Punk Console

Use both NE555 timers to make the classic stepped-tone noise synthesizer. The
first timer runs as an astable oscillator and triggers the second as a
monostable. Two pots control repetition rate and pulse width.

#### Inventory ICs

- 2 × NE555N
- LM386N-1 for amplified output

#### Basic parts

- 2 × 100 kΩ or 1 MΩ pots
- Timing resistors and capacitors
- Output coupling capacitor
- Speaker or audio output jack

#### Extensions

- Add switched capacitor banks for octave-like range changes.
- Replace either pot temporarily with an LDR for light control.
- Feed the output through the AD5220 digital volume project.

### 4. 4049 Hex-Inverter Drone Box

Use pairs of SCL4049A/BE inverter stages as RC oscillators. Mix several
different frequencies through individual resistors into the LM386.

#### Inventory ICs

- SCL4049A/BE
- LM386N-1

#### Basic parts

- 2–3 pots
- Separate timing capacitor for each oscillator
- One mixing resistor per oscillator
- Coupling and supply-bypass capacitors

Three oscillators can produce beating drones, alarms, and siren sounds.
Because this is an old 4000-series CMOS part, confirm its exact oscillator
circuit and supply limits in the archived datasheet.

### 5. NAND-Gate Metronome

Build a slow RC oscillator from CMOS NAND gates and convert each transition
into a short click. A pot sets tempo.

#### Inventory ICs

- NTE4011B
- LM386N-1, optional

#### Basic parts

- Tempo pot
- Timing capacitor
- Click-shaping capacitor and resistor
- LED for a visual beat
- Piezo or amplified speaker

Use a second NAND section to square up the clock and another to gate the sound
on and off.

## Analog Audio Projects

### 6. Op-Amp Electret Microphone Preamplifier

Bias an electret capsule through a resistor, AC-couple it into an LM358 stage,
and amplify it around a half-supply reference. Use the second op-amp section as
an additional gain stage, active filter, or output buffer.

#### Inventory ICs

- LM358N or µPC358C
- LM386N-1 for speaker output

#### Basic parts

- Electret microphone
- Gain-setting resistors
- Bias and coupling capacitors
- Gain or volume pot

Keep the microphone wiring short. Test the preamp into headphones only through
an appropriate amplifier; an LM358 cannot directly drive an 8 Ω speaker.

### 7. Two-Channel Audio Mixer

Use one dual op-amp as a pair of input buffers or as a summing amplifier and
output buffer. Each channel gets its own level pot.

#### Inventory ICs

- LM358N or µPC358C
- LM386N-1, optional monitor amplifier

#### Basic parts

- 2 input jacks
- 2 level pots
- Mixing resistors
- Coupling and bias capacitors

The passive version needs only mixing resistors and a master pot; the op-amp
version provides isolation and makeup gain.

### 8. Adjustable Tone Control

Create an active low-pass, high-pass, or Baxandall-style bass/treble control
with a dual op-amp. Place it between an audio source and the LM386.

#### Inventory ICs

- LM358N, µPC358C, or MC1458P with a suitable supply
- LM386N-1

#### Basic parts

- 1–2 pots
- Matched resistor/capacitor networks
- Coupling capacitors

Start with a one-knob low-pass filter. It is easier to debug than a full
two-band tone stack and works well on the harsh square waves from 555 and CMOS
oscillators.

### 9. Op-Amp Function Generator

Use one op-amp as a Schmitt-trigger oscillator and the other as an integrator.
The first output is a square wave; the second is a triangle wave.

#### Inventory ICs

- LM358N or µPC358C
- A second dual op-amp for optional waveform shaping
- LM386N-1 for listening

#### Basic parts

- Frequency pot
- Timing capacitor
- Feedback and integration resistors
- Half-supply reference components

Add diode shaping around another op-amp section to round the triangle toward a
sine-like waveform.

### 10. Tremolo or Automatic Volume Modulator

Generate a slow triangle or square wave with a dual op-amp or 555. Use that
control waveform to vary the gain or attenuation of an audio path.

#### Inventory ICs

- LM358N or NE555N for the low-frequency oscillator
- AD5220BN10 for stepped digital tremolo, controlled by an AVR
- LM386N-1 for output

#### Basic parts

- Rate and depth pots
- Timing capacitor
- Audio coupling network

The fully analog version needs a voltage-controlled element not explicitly in
the inventory, so the most inventory-pure implementation uses an ATmega to
step the AD5220 up and down. This produces a deliberately quantized tremolo.

### 11. Four-LED Audio Level Meter

Rectify and smooth an audio signal into an envelope, then compare that voltage
against four thresholds from a resistor ladder.

#### Inventory ICs

- LM339N
- LM358N, optional precision rectifier or microphone preamp

#### Basic parts

- 4 LEDs and current-limit resistors
- Four LM339 output pull-ups
- Diode, envelope capacitor, and discharge resistor
- Threshold resistor ladder

The LM339 outputs are open collector and must have pull-ups. Add a little
hysteresis if LEDs flicker at their thresholds.

## Audio Routing and Control

### 12. Four-Input Audio Selector

Use one half of the 74HC4052 as a four-input, one-output analog selector. The
other half can switch a second channel, route a control voltage, or illuminate
a selected-source indicator.

#### Inventory ICs

- 74HC4052N
- SCL4049A/BE or ATmega328P-PU for control, optional

#### Basic parts

- 4 input jacks and 1 output jack
- 2 selector switches
- Coupling capacitors and mid-supply bias network

With a single 5 V supply, center AC audio around 2.5 V inside the switch and
AC-couple it again at the output. Keep signals inside the 4052 supply rails.

### 13. Pushbutton Digital Volume Control

The AD5220 is a 128-position, 10 kΩ digital potentiometer with increment and
up/down controls. Two debounced pushbuttons provide volume up and down.

#### Inventory ICs

- AD5220BN10
- NTE4011B or SN74LS00N for debounce
- LM386N-1

#### Basic parts

- 2 pushbuttons
- Debounce resistors and capacitors
- Input/output coupling capacitors

Check the digital potentiometer's terminal-voltage and current limits. Treat
it as a small-signal control, not as a speaker-volume rheostat.

### 14. AVR Preset Volume and Source Selector

Combine the AD5220 and 74HC4052 under ATmega control. Buttons select one of four
inputs and adjust volume; the EEPROM stores the last settings.

#### Inventory ICs

- ATMEGA328P-PU or ATMEGA168-20PU
- AD5220BN10
- 74HC4052N
- 24LC32A or 24LC256-I/P
- 74HC595N and LEDs, optional status display

#### Basic parts

- Input-selection and volume buttons
- Status LEDs
- Audio jacks and coupling capacitors
- I2C pull-up resistors

This makes a useful desktop audio switcher and exercises GPIO, nonvolatile
memory, and mixed-signal layout without requiring DSP.

## Digital and Experimental Sound

### 15. AVR Chiptune Tone Generator

Use a hardware timer on the ATmega to generate square waves with precise
frequency. Buttons select notes or trigger short melodies.

#### Inventory ICs

- ATMEGA328P-PU or ATMEGA168-20PU
- LM386N-1
- 74HC165N, optional eight-button input expander
- 74HC595N, optional LED note display

#### Basic parts

- Buttons
- Piezo, or LM386 and speaker
- Output coupling and low-pass components

Avoid driving a speaker directly from an AVR pin. A piezo is acceptable at
modest levels; use the LM386 for an 8 Ω speaker.

### 16. Eight-Step LED Music Sequencer

The AVR steps through eight notes and gate states. Pots or buttons edit each
step, while LEDs show the active position.

#### Inventory ICs

- ATMEGA328P-PU
- 74HC595N for LEDs
- SN74HC165N for eight step buttons
- 24LC256-I/P for patterns
- LM386N-1

#### Basic parts

- 8 LEDs
- 8 buttons
- Tempo and pitch pots
- Speaker or output jack

Use the internal AVR ADC for pots. The external ADC0831 chips can add two more
control inputs if desired.

### 17. Digital Ring Modulator / Bitwise Noise Box

XOR two square-wave oscillators with the CD4030. The result contains sum- and
difference-like digital components and produces metallic, bell-like noise.

#### Inventory ICs

- CD4030BE
- 2 × NE555N, or SCL4049A/BE oscillators
- LM386N-1

#### Basic parts

- 2 frequency pots
- Timing components
- Output filter and coupling capacitor

Use the four XOR gates for several combinations of two or three oscillator
signals. Mix their outputs through separate resistors rather than tying logic
outputs together.

### 18. Programmable Drone and Arpeggiator

Use an AVR as a clock and pattern engine while several 4049 oscillator stages
provide independent voices. Analog-switch channels can select or mute voices.

#### Inventory ICs

- ATMEGA328P-PU
- SCL4049A/BE
- 74HC4052N
- 24LC32A or 24LC256-I/P
- LM386N-1

#### Basic parts

- Oscillator tuning pots
- Timing capacitors
- Pattern buttons and LEDs

The AVR does not need to generate the sound; it only changes routing and
rhythm. This keeps the audio character analog while making patterns
repeatable.

### 19. ADC Audio Envelope Sampler

Turn microphone or line-level audio into a positive envelope using an op-amp
and diode network. Sample that slowly with an ADC0831, then drive LEDs,
sequencer tempo, or oscillator pitch from the measured level.

#### Inventory ICs

- LM358N or µPC358C
- ADC0831CCN
- ATMEGA328P-PU
- MAX7219CNG, DM13A, or 74HC595N for display

#### Basic parts

- Microphone or audio input
- Rectifier and envelope components
- LEDs or a matrix

The ADC0831 is suitable for control and visualization, not high-fidelity audio
recording. Use it to measure an envelope rather than sampling the raw waveform
for playback.

### 20. MAX7219 Audio-Level Display

Combine the microphone preamp and envelope sampler with a MAX7219-driven 8×8
matrix or eight-digit display. Show level, peak hold, beat flashes, or a
scrolling tempo readout.

#### Inventory ICs

- LM358N
- ADC0831CCN or the ATmega's internal ADC
- ATMEGA328P-PU
- MAX7219CNG

#### Basic parts

- Microphone and preamp components
- MAX7219 current-setting resistor
- Matrix or multi-digit display

Five MAX7219 chips can be cascaded for a wider display, but begin with one.

## Vintage and Unusual Project

### 21. NE5044 Performance Controller

The NE5044 is a seven-channel pulse-width encoder intended for vintage radio
control. Instead of transmitting RC commands, its pot-controlled pulse stream
can become an experimental musical control source.

#### Inventory ICs

- NE5044N
- ATMEGA328P-PU to decode or transform the pulse stream
- AD5220BN10 or 74HC4052N to control an audio path
- 555/4049/op-amp oscillators as sound sources

#### Basic parts

- Several control pots
- Timing components specified by the NE5044 datasheet
- Buttons or joystick-style controls

Possible mappings include seven oscillator pitches, sequencer parameters,
voice mutes, or rhythm divisions. Bring up one channel on an oscilloscope or
logic analyzer before building a full controller; the vintage timing circuit
is less forgiving than a modern ADC input.

## Suggested Build Order

1. **LM386 pocket amplifier** — provides a reusable output stage.
2. **Single-555 tone generator** — verifies one timer and the amplifier.
3. **Twin-555 Atari Punk Console** — adds modulation.
4. **Four-LED level meter** — introduces envelope detection and comparators.
5. **Op-amp microphone preamp** — creates a reusable input stage.
6. **Pushbutton digital volume** — adds mixed-signal digital control.
7. **AVR chiptune generator** — establishes the microcontroller toolchain.
8. **Eight-step sequencer** — combines input, output, storage, and sound.
9. **Programmable drone** — integrates analog sound with digital sequencing.

## Practical Module Strategy

Rather than permanently combining everything at once, build reusable modules
with consistent power and audio connectors:

1. **Input module:** microphone preamp or line-input buffer
2. **Sound modules:** 555, 4049, XOR, and op-amp oscillators
3. **Control module:** AVR, buttons, ADC, and EEPROM
4. **Routing module:** 74HC4052 and AD5220
5. **Output module:** tone control followed by LM386
6. **Display module:** LM339 LEDs, 74HC595 LEDs, or MAX7219 matrix

This approach makes most of the projects above combinations of already-tested
blocks rather than new full-circuit debugging sessions.
