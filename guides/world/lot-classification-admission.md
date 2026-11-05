# LDES classification and modern admission

Reference: original PC 1.67 `TS3W.exe`, identified centrally in the proof reference index.
Names assigned by analysts are descriptive; helper prototypes remain inferred.

The [LDES reader ASM](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([annotated C](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c))
reads resource `D063545B`, group zero, under its supplied owner identity. Its unsigned
UInt16 acceptance interval is `0x14..0x45`. This is a contiguous version interval;
release-name samples do not form a whitelist. For versions `0x20..0x45`, three
localization UInt64s precede the counted UTF-16 name. The following fixed 56 bytes
contain identity, pose, dimensions, levels, cached height extrema and two words.
Three further counted UTF-16 strings precede the tail.

| Tail member | Native field | Present from | Wire width |
| --- | --- | --- | --- |
| Raw lot type | +408 | All admitted original versions | Int32 |
| Shared subtype | +40C | 0x23 | UInt32; otherwise zero |
| Additional word | +418 | 0x1D | Four bytes; otherwise zero |
| Additional property value | +420 | 0x1A | float32; otherwise zero |
| Discarded valuation word | Stream only | 0x1B | UInt32 |
| Build/Buy enabled | +41C | 0x22 | Byte, normalized by nonzero; otherwise true |
| Attached-object footprint hash | +310/+314 | 0x2B | UInt64; otherwise zero |
| Sea-boundary flag | +4B0 | 0x3A | Boolean byte |
| Local sea | +4B4 | 0x3C | Four bytes; earlier default FF7FFFFF |
| Restricted ground | +4BC | 0x3E | Boolean byte |
| Flags | +BC | 0x3F | UInt32; otherwise zero |
| Boundary disabled | +4BD | 0x43 | Boolean byte |

Before `0x3E`, residential type zero and **unsigned** subtype greater than four
set restricted ground and normalize the subtype to zero. The current-format path
reads the restricted flag and preserves subtype; applying legacy normalization to
current descriptions changes authored state. Complete tail widths in the modern
family are 16 bytes at `0x20`, 17 at `0x22`, 21 at `0x23`, 29 at `0x2B`, 30 at
`0x3A`, 34 at `0x3C`, 35 at `0x3E`, 39 at `0x3F` and 40 at `0x43`.

The [writer ASM](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.asm) ([annotated C](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.c))
emits UInt16 `0x45` and the full current tail. If the boundary flag is false it
writes negative maximum float for local sea. Resource context status remains sticky;
the reader closes the context and returns its accumulated status. Neither function
establishes a .NET exception policy or a managed classification enum whitelist.

The [residential getter ASM](../../evidence/native/functions/007858E0_ScriptCore_World_World_GetResidentialLotSubType.asm) ([annotated C](../../evidence/native/functions/007858E0_ScriptCore_World_World_GetResidentialLotSubType.c))
and [commercial getter ASM](../../evidence/native/functions/00785960_ScriptCore_World_World_GetCommercialLotSubType.asm) ([annotated C](../../evidence/native/functions/00785960_ScriptCore_World_World_GetCommercialLotSubType.c))
look up the lot from its 64-bit identity. They return the shared UInt32 subtype only
for matching type zero/one; absent world, absent lot and mismatched type return zero.
The canonical 64-byte getter windows include all shown local branches and returns,
plus trailing alignment; their next-entry bounds are not general function-extent proof.
The reader/writer canonical exports retain complete Ghidra body envelopes.

Pristine [managed declarations](../../evidence/managed/types/ScriptCore.World.cs)
and [caller CIL](../../evidence/managed/callers.il.txt) identify
`World_GetResidentialLotSubType`/`World_GetCommercialLotSubType` as `UInt64 -> UInt32`.
The `GetResidentialLotSubType`/`GetCommercialLotSubType` wrappers load argument one,
call their corresponding internal method at IL offset one, and return. The original
API identities and signatures are independent of project-side immutable data names.
Static instructions and CIL do not establish original-game execution.
