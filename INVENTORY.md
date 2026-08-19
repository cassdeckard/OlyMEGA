# IC Chip Inventory Manifest

Inventory derived from 56 microscope photographs taken on August 18, 2026. Quantities count physical packages visible in the photos; the magnified image on the microscope monitor is not counted as an additional package. Duplicate verified part numbers are consolidated across photos.

## Summary

- **106 IC packages pictured**
- **105 IC packages assigned** to a part number: 104 confirmed and 1 tentative
- **1 IC package remains unidentified**
- **2 IC packages need manual review**: the tentative identification and the unidentified package
- **2 identified signal relays** are retained because they appear among the photographed parts
- **45 consolidated inventory rows**
- **56 source photos accounted for**

The companion [`inventory.csv`](inventory.csv) contains the exact markings, package details, source-photo filenames, confidence levels, and trace/date-code notes.

## Consolidated inventory

| Part number | Qty. | Manufacturer | Category | Brief description | Datasheet |
|---|---:|---|---|---|---|
| TPIC6B595N | 29 | Texas Instruments | Power shift register | 8-bit register with eight 150 mA open-drain DMOS outputs | [PDF](https://www.ti.com/lit/ds/symlink/tpic6b595.pdf) |
| 74HC595N | 9 | NXP / Nexperia | Shift register | 8-bit serial-in/parallel-out register with latched 3-state outputs | [PDF](https://assets.nexperia.com/documents/data-sheet/74HC_HCT595.pdf) |
| SN74HC595N | 6 | Texas Instruments | Shift register | 8-bit serial-in/parallel-out register with output latch | [PDF](https://www.ti.com/lit/ds/symlink/sn74hc595.pdf) |
| MAX7219CNG | 5 | Maxim / Analog Devices | LED driver | Serial driver for eight 7-segment digits or 64 LEDs | [PDF](https://pdfserv.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf) |
| ATMEGA328P-PU | 4 | Atmel / Microchip | Microcontroller | 8-bit AVR MCU with 32 KB flash | [PDF](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU08/ProductDocuments/DataSheets/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061B.pdf) |
| DM13A | 4 | Silicon Touch Technology | LED driver | 16-channel constant-current LED sink driver | [Archived PDF](https://pdf.dzsc.com/autoupload/1f42f44e-3892-44c6-be6d-2f74342a1657.pdf) |
| SN74HC574N | 4 | Texas Instruments | Logic register | Octal edge-triggered D flip-flop with 3-state outputs | [PDF](https://www.ti.com/lit/ds/symlink/sn74hc574.pdf) |
| ADC0831CCN | 2 | National Semiconductor / TI | Data converter | Single-channel 8-bit serial ADC | [PDF](https://www.ti.com/lit/ds/symlink/adc0831-n.pdf) |
| JRC-23F/005-1ZS(555) | 2 | Hongfa | Signal relay | 5 V SPDT subminiature signal relay; not an IC | [PDF](https://source.hongfa.com/Uploads/Product/PDF/HFD23_en.pdf) |
| LM358N | 2 | National Semiconductor / TI; second maker unknown | Operational amplifier | Dual low-power general-purpose op-amp | [PDF](https://www.ti.com/lit/ds/symlink/lm358-n.pdf) |
| MC1458P | 2 | Motorola-era marking | Operational amplifier | Dual general-purpose op-amp | [Compatible TI PDF](https://www.ti.com/lit/ds/symlink/mc1458.pdf) |
| NE5044N | 2 | Signetics / Philips | RC encoder | Programmable seven-channel pulse-width encoder | [Archived datasheet](https://www.alldatasheet.com/datasheet-pdf/pdf/17950/PHILIPS/NE5044N.html) |
| NE555N | 2 | ST; Fairchild | Timer/oscillator | Bipolar 555 timer | [ST PDF](https://www.st.com/resource/en/datasheet/ne555.pdf); [Fairchild successor PDF](https://www.onsemi.com/pdf/datasheet/lm555-d.pdf) |
| SN74HC138N | 2 | Texas Instruments | Decoder logic | 3-to-8-line decoder/demultiplexer | [PDF](https://www.ti.com/lit/ds/symlink/sn74hc138.pdf) |
| SN74LS00N | 2 | Texas Instruments | Logic gate | Quad 2-input LS-TTL NAND gate | [PDF](https://www.ti.com/lit/ds/symlink/sn74ls00.pdf) |
| µPC358C | 2 | NEC / Renesas | Operational amplifier | Low-power dual general-purpose op-amp | [Renesas](https://www.renesas.com/en/document/dst/upc1251-upc358-datasheet) |
| 24LC32A | 1 | Microchip | Nonvolatile memory | 32-Kbit I2C serial EEPROM | [PDF](https://ww1.microchip.com/downloads/aemDocuments/documents/MPD/ProductDocuments/DataSheets/24AA32A-24LC32A-32-Kbit-I2C-Serial-EEPROM-DS20001713.pdf) |
| 24LC256-I/P | 1 | Microchip | Nonvolatile memory | 256-Kbit I2C serial EEPROM | [PDF](https://ww1.microchip.com/downloads/aemDocuments/documents/MPD/ProductDocuments/DataSheets/24AA256-24LC256-24FC256-256K-I2C-Serial-EEPROM-DS20001203.pdf) |
| 74HC4052N | 1 | NXP | Analog switch | Dual 4-channel analog multiplexer/demultiplexer | [PDF](https://assets.nexperia.com/documents/data-sheet/74HC_HCT4052.pdf) |
| 74LS147N | 1 | Philips | Encoder logic | Active-low decimal-to-BCD priority encoder | [Equivalent PDF](https://www.onsemi.com/pdf/datasheet/sn74ls147-d.pdf) |
| AD5220BN10 | 1 | Analog Devices | Digital potentiometer | 128-position 10-kΩ digital potentiometer | [PDF](https://www.analog.com/media/en/technical-documentation/data-sheets/AD5220.pdf) |
| ATMEGA168-20PU | 1 | Atmel / Microchip | Microcontroller | 8-bit AVR MCU with 16 KB flash and 20 MHz maximum clock | [PDF](https://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2545-8-bit-AVR-Microcontroller-ATmega48-88-168_Summary.pdf) |
| CD4012BE | 1 | Texas Instruments | CMOS logic | Dual 4-input NAND gate | [PDF](https://www.ti.com/lit/ds/symlink/cd4012b.pdf) |
| CD4030BE | 1 | Harris Semiconductor | CMOS logic | Quad 2-input XOR gate | [Equivalent PDF](https://www.ti.com/lit/ds/symlink/cd4030b.pdf) |
| CD4511BCN | 1 | Fairchild | Display logic | BCD latch/decoder/driver for 7-segment displays | [Archived PDF](https://radio-hobby.org/uploads/datasheet/7/cd45/cd4511bcn.pdf) |
| DM74LS00N | 1 | Fairchild | Logic gate | Quad 2-input LS-TTL NAND gate | [Archived PDF](https://media.digikey.com/pdf/Data%20Sheets/Fairchild%20PDFs/DM74LS00.pdf) |
| HD74LS30P | 1 | Hitachi / Renesas | Logic gate | Single 8-input NAND gate | [Renesas](https://www.renesas.com/en/document/dst/hd74ls30-datasheet) |
| HD74LS373P | 1 | Hitachi / Renesas | Bus/register logic | Octal transparent D latch with 3-state outputs | [Renesas](https://www.renesas.com/en/document/dst/hd74ls373-datasheet) |
| L293D | 1 | STMicroelectronics | Motor/load driver | Four high-current half-H drivers with clamp diodes | [PDF](https://www.st.com/content/ccc/resource/technical/document/datasheet/04/ac/22/f9/20/5d/43/a1/CD00000059.pdf/files/CD00000059.pdf/jcr:content/translations/en.CD00000059.pdf) |
| LM339N | 1 | Fairchild | Analog comparator | Quad open-collector voltage comparator | [Successor PDF](https://www.onsemi.com/pdf/datasheet/lm339a-d.pdf) |
| LM386N-1 | 1 | National Semiconductor / TI | Audio amplifier | Low-voltage mono audio power amplifier | [PDF](https://www.ti.com/lit/ds/symlink/lm386.pdf) |
| MC14489BPE | 1 | Motorola / NXP | Display driver | Serial multiplexed LED/lamp driver | [Archived PDF](https://mm.digikey.com/Volume0/opasdata/d220001/medias/docus/4849/DS_568_MC14489B.pdf) |
| NTE4011B | 1 | NTE Electronics | CMOS logic | Quad 2-input NAND gate | [Archived PDF](https://resources.ampheo.com/static/datasheets/nte-electronics-inc/nte4011b.pdf) |
| NTE74LS04 | 1 | NTE Electronics | Logic gate | Hex LS-TTL inverter | [Archived PDF](https://resources.ampheo.com/static/datasheets/nte-electronics-inc/nte74ls04.pdf) |
| NTE74LS273 | 1 | NTE Electronics | TTL register | Octal D-type register with common clear | [Equivalent PDF](https://www.ti.com/lit/ds/symlink/sn74ls273.pdf) |
| NTE74LS30 | 1 | NTE Electronics | Logic gate | Single 8-input NAND gate | [Equivalent PDF](https://www.ti.com/lit/ds/symlink/sn74ls30.pdf) |
| SCL4049A/BE | 1 | Solid State Scientific | CMOS logic | Hex inverter and logic-level converter | [Archived catalog](https://mirrors.meulie.net/bitsavers.org/components/solidStateScientific/1984_Solid_State_Scientific_4000_Series_CMOS_Logic.pdf) |
| SN7447AN | 1 | Texas Instruments | Display logic | BCD-to-7-segment common-anode display driver | [PDF](https://www.ti.com/lit/ds/symlink/sn7447a.pdf) |
| SN74HC165N | 1 | Texas Instruments | Shift register | 8-bit parallel-load serial-output register | [PDF](https://www.ti.com/lit/ds/symlink/sn74hc165.pdf) |
| SN74LS147N | 1 | Motorola / onsemi | Encoder logic | Active-low decimal-to-BCD priority encoder | [PDF](https://www.onsemi.com/pdf/datasheet/sn74ls147-d.pdf) |
| SN74LS47N (tentative) | 1 | Probably Texas Instruments | Display logic | BCD-to-7-segment decoder/driver with open-collector outputs | [PDF](https://www.ti.com/lit/ds/sdls111/sdls111.pdf) |
| SN74LS90N | 1 | Texas Instruments | Counter logic | Asynchronous decade/divide-by-ten counter | [PDF](https://www.ti.com/lit/ds/symlink/sn74ls90.pdf) |
| SN754410NE | 1 | Texas Instruments | Motor/load driver | Four 1 A half-H drivers | [PDF](https://www.ti.com/lit/ds/symlink/sn754410.pdf) |
| ULN2803A | 1 | STMicroelectronics | Load driver | Eight Darlington drivers with suppression diodes | [PDF](https://www.st.com/resource/en/datasheet/uln2801a.pdf) |

## Needs manual review

These two packages require physical confirmation. One has a tentative user-supplied identification; the other remains unidentified.

| Working ID | Qty. | Visible marking | Likely identity | Source photo | Recommended follow-up |
|---|---:|---|---|---|---|
| SN74LS47N-TENTATIVE | 1 | None legible | Best guess: `SN74LS47N` | `IMG_20260818_201029.jpg` | Confirm that the physical package has 16 pins and verify its marking or circuit role. |
| UNRESOLVED-DIP8-A | 1 | None legible | Unknown DIP-8 | `IMG_20260818_201143.jpg` | Retry with oblique light and adjusted exposure. |

## Confidence and usage notes

- Counts marked **medium** in the CSV should be manually checked where packages overlap or appear near the edge of the photo.
- A datasheet labeled **equivalent**, **compatible**, **successor**, or **archived** is not a current document hosted by the exact original manufacturer. Verify electrical limits before substituting legacy parts.
- The inventory identifies markings and pictured quantities only; it does not establish whether the parts are functional.
