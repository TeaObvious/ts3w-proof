# SACS driver reference and Animation getter bindings

Original PC 1.67 little-endian values: the first twelve bytes are file-backed; the four mask-initializer bytes are mapped zero-fill. Binary identity is centralized in the reference README. These initial values are not an executed runtime observation.

| VA | Bytes | Established interpretation |
|---|---|---|
| `0102112C` | `F0 9A 88 00 20 96 7C 00` | Driver+8 reference-interface slots: atomic increment `00889AF0`, release `007C9620`. Constructor `00804B00` installs this table. |
| `01044424` | `70 1F 53 00` | Slot+20 of the Animation-interface table at `01044404` calls `00531F70`; incoming receiver+18 maps to owning component+20. |
| `011DD484` | `00 00 00 00` | Mapped zero-fill initializer only (PE virtual tail), not stored file bytes. Canonical `00932A30` writes the runtime registered Animation component mask; mapped zero initialization is not a valid runtime mask claim. |

No full manager handle/watch/reference ownership distribution is inferred from these slots.
