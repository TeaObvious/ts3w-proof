# PC 1.67 resource reference tables (REFS)

## Scope and identities

Static original `/TS3W.exe` instructions establish the selected REFS writer,
reader and ResourceTableIOContext containers. Resource type is `0x05ED1226`.
Analyst names are assigned descriptions. Reference identity is centralized in
[the proof overview](../../references/retained-proof-overview.md); no runtime, malformed-input, reload or
round-trip test is claimed.

The context constructor initializes four containers named by original allocator
tags: KeyToHandleMap, HandleToKeyMap, LocalKeyHandleSet and RemapHashMap. Their
bases are context `+0`, `+0x20`, `+0x40`, `+0x60`. Version at `+0x80` starts at
one; width byte `+0x82` comes from the caller's constructor argument. It is not
inferred from the serialized row count.

## Wire layout and version branches

| Field | Original rule |
| --- | --- |
| Version | UInt16; payload reader admits one through three |
| Wide handles | One normalized Boolean byte only for version three; versions one/two retain the configured context width |
| Row count | UInt32, iterated with unsigned comparisons |
| Row key | type UInt32, group UInt32, instance low/high UInt32 |
| Row handle | UInt32 when context width is nonzero, otherwise zero-extended UInt16 |
| Local-handle set | Only versions two/three: UInt32 count, then UInt16 members |

The stream's full DWORD endian flag equal to one preserves native little-endian
words; other values swap. Native resource-key memory stores instance low/high,
type, group, while its wire helper writes type, group, instance low/high. A raw
structure copy would change the format. Narrow handles use `MOVZX`, never signed
Int16. Neither a signed negative-count-empty rule nor a count-above-32767 width
branch appears in the selected reader.

Version one has no local-handle trailer. For versions two/three the count is read
even when zero; an absent/partial count is a read failure. Set insertion collapses
duplicate UInt16 members. Hash-container serialization does not promise their
original list order. The writer always emits version three, its explicit width,
key-map rows and the local-handle set. An optional supplied remap replaces
matching resource keys while writing.

## Duplicate and regeneration state

For each row, the reader finds or creates a handle-to-key node and then writes
its entire 16-byte resource key unconditionally. Thus a repeated full UInt32
handle has **last-row-wins** behavior. The final reverse key-to-handle map is
rebuilt by traversing the handle map. Duplicate-resource-key ordering in that
reverse map needs its own container/caller review; input row order cannot simply
be assumed.

When regeneration is enabled, each marked local handle resolves its key; the
selected key generator supplies a new key, the old/new relation is recorded,
and the mapped key is replaced before reverse-map construction. The broader
allocation/collision policy and caller choice of regeneration remain open. The
constructor's width and regeneration argument are independent inputs.

## Failure and wrapper results

The payload reader accumulates primitive-read status but does not stop its
unsigned count loops on failure or preflight count times entry size. It clears
all four maps after examining the version field. A short version read may leave
old/partial version bits; status itself is not checked before that clear.
The final admitted path returns true without checking accumulated status.
Allocation and short-read failure can therefore leave partial state; this is not
a safe parser implementation recommendation.

An unsupported version returns payload false without clearing stream status.
The resource wrapper ignores that Boolean, closes the resource context and
returns status byte `+0x14`. A successfully read unsupported version can therefore
produce wrapper true. Open-read failure has its own false return and does not
always accumulate into that status. Do not collapse these separate results into
a complete-validation guarantee. No exact-EOF requirement appears here.

The embedded-reader adapter reads two UInt32 words, requests an absolute seek to
the first, reads payload with regeneration disabled and requests restoration of
the saved position. It ignores the payload Boolean and does not use the second
word to create a bounded child. Position/seek helpers treat high-bit absolute
positions as negative: they clear status, and a rejected absolute seek does not
move the underlying stream. The caller still proceeds with payload reading.
The second word's external meaning and container-wide bounds remain open.

## ABI and decompiler corrections

- Primitive UInt16 and TGI reads have three cdecl stack words, including the
  endian flag. Boolean read has two. Actual C now retains those inputs.
- Stream virtual `+0x30` reads return an actual-byte count. Virtual `+0x38`
  writes return low-byte status. UInt16/UInt32 writers propagate that status;
  Boolean writer explicitly accepts only low byte one.
- Handle/set insertion consumes three stack words with `RET 0x0C`, including an
  unused word; decompiler prototypes previously lost it.
- Resource read/write use ECX context and `RET 0x14`; group plus UInt64 instance
  make a type-specific resource key. Embedded payload read uses `RET 4`.
- Pointer/count aliases and partially initialized unused words in actual C are
  stack-lifetime artifacts. Original pushes, comparisons and annotated points
  establish the interpreted widths and ordering.

## Canonical original functions

| Address / analyst name | Evidence |
| --- | --- |
| `0x004dd860` — `Stream_ReadBoolean` | [original ASM](../../evidence/native/functions/004DD860_Stream_ReadBoolean.asm) ([annotated pseudocode](../../evidence/native/functions/004DD860_Stream_ReadBoolean.c)) |
| `0x004dd8e0` — `Stream_ReadUInt16` | [original ASM](../../evidence/native/functions/004DD8E0_Stream_ReadUInt16.asm) ([annotated pseudocode](../../evidence/native/functions/004DD8E0_Stream_ReadUInt16.c)) |
| `0x004dde00` — `Stream_WriteBoolean` | [original ASM](../../evidence/native/functions/004DDE00_Stream_WriteBoolean.asm) ([annotated pseudocode](../../evidence/native/functions/004DDE00_Stream_WriteBoolean.c)) |
| `0x004dde70` — `Stream_WriteUInt16` | [original ASM](../../evidence/native/functions/004DDE70_Stream_WriteUInt16.asm) ([annotated pseudocode](../../evidence/native/functions/004DDE70_Stream_WriteUInt16.c)) |
| `0x004ddf70` — `Stream_WriteUInt32` | [original ASM](../../evidence/native/functions/004DDF70_Stream_WriteUInt32.asm) ([annotated pseudocode](../../evidence/native/functions/004DDF70_Stream_WriteUInt32.c)) |
| `0x007d64a0` — `ReferenceStore_ReadHandle` | [original ASM](../../evidence/native/functions/007D64A0_ReferenceStore_ReadHandle.asm) ([annotated pseudocode](../../evidence/native/functions/007D64A0_ReferenceStore_ReadHandle.c)) |
| `0x007d65a0` — `HandleKeyMap_FindOrInsert` | [original ASM](../../evidence/native/functions/007D65A0_HandleKeyMap_FindOrInsert.asm) ([annotated pseudocode](../../evidence/native/functions/007D65A0_HandleKeyMap_FindOrInsert.c)) |
| `0x007d6760` — `LocalHandleSet_InsertUnique` | [original ASM](../../evidence/native/functions/007D6760_LocalHandleSet_InsertUnique.asm) ([annotated pseudocode](../../evidence/native/functions/007D6760_LocalHandleSet_InsertUnique.c)) |
| `0x007d6940` — `ReferenceStore_WriteResource` | [original ASM](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.asm) ([annotated pseudocode](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.c)) |
| `0x007d6be0` — `ResourceTableContext_Construct` | [original ASM](../../evidence/native/functions/007D6BE0_ResourceReferences_ConstructContext.asm) ([annotated pseudocode](../../evidence/native/functions/007D6BE0_ResourceReferences_ConstructContext.c)) |
| `0x007d6c90` — `ReferenceStore_ReadPayload` | [original ASM](../../evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.asm) ([annotated pseudocode](../../evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.c)) |
| `0x007d7110` — `ReferenceStore_ReadEmbeddedAndRestorePosition` | [original ASM](../../evidence/native/functions/007D7110_ReferenceStore_ReadEmbeddedAndRestorePosition.asm) ([annotated pseudocode](../../evidence/native/functions/007D7110_ReferenceStore_ReadEmbeddedAndRestorePosition.c)) |
| `0x007d73f0` — `ReferenceStore_ReadResource` | [original ASM](../../evidence/native/functions/007D73F0_ReferenceStore_ReadResource.asm) ([annotated pseudocode](../../evidence/native/functions/007D73F0_ReferenceStore_ReadResource.c)) |
| `0x007d7710` — `Stream_WriteResourceKeyTGI` | [original ASM](../../evidence/native/functions/007D7710_Stream_WriteResourceKeyTGI.asm) ([annotated pseudocode](../../evidence/native/functions/007D7710_Stream_WriteResourceKeyTGI.c)) |
| `0x007d7760` — `Stream_ReadResourceKeyTGI` | [original ASM](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.asm) ([annotated pseudocode](../../evidence/native/functions/007D7760_Stream_ReadResourceKeyTGI.c)) |
| `0x007d7a70` — `ResourceStreamContext_Close` | [original ASM](../../evidence/native/functions/007D7A70_ResourceStreamContext_Close.asm) ([annotated pseudocode](../../evidence/native/functions/007D7A70_ResourceStreamContext_Close.c)) |
| `0x007d8470` — `StreamContext_GetPositionAndMarkNegative` | [original ASM](../../evidence/native/functions/007D8470_StreamContext_GetPositionAndMarkNegative.asm) ([annotated pseudocode](../../evidence/native/functions/007D8470_StreamContext_GetPositionAndMarkNegative.c)) |
| `0x007d8490` — `StreamContext_SeekWithSignedAbsoluteGuard` | [original ASM](../../evidence/native/functions/007D8490_StreamContext_SeekWithSignedAbsoluteGuard.asm) ([annotated pseudocode](../../evidence/native/functions/007D8490_StreamContext_SeekWithSignedAbsoluteGuard.c)) |
| `0x007d84c0` — `ResourceStreamContext_OpenWrite` | [original ASM](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.asm) ([annotated pseudocode](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.c)) |
| `0x007d8540` — `ResourceStreamContext_OpenRead` | [original ASM](../../evidence/native/functions/007D8540_ResourceStreamContext_OpenRead.asm) ([annotated pseudocode](../../evidence/native/functions/007D8540_ResourceStreamContext_OpenRead.c)) |

## Explicit handle consumers

The [handle, ordinal and compositor identity contract](resource-reference-key-maps.md)
retains both narrow/wide handle lookups, their unchanged output on misses,
caller-specific key state, wall defaults and preset suffix width.

## Open questions

- Caller-specific legacy width, regeneration, remap and reverse-lookup policies.
- Full key-generator allocation/collision and local-handle domain constraints.
- Underlying resource commit, ownership, concurrent access and enclosing bounds.
- Defensive size/allocation and failure-publication policy for a safe replacement;
  original unsafe failure paths do not establish that policy.
