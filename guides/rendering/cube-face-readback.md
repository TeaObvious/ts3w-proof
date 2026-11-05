# Cube-face readback and mip publication

Original reference is PC 1.67 `/TS3W.exe`, explicitly selected in GhidrAssist.
`CubeCapture_ReadFacesAndPublishMipLevels` is an analyst-assigned descriptive
name, not a recovered class/symbol or proof of every rendering/caller detail.
Its complete existing body spans `[006B4C90,006B50EA)`: 1,114 original bytes,
330 owned instructions/1,095 bytes, with 19 nonowned alignment bytes visible.
The canonical pair is the actual annotated Ghidra C and full original Listing.
[ASM](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.asm) ([annotated pseudocode](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.c))

## Physical ABI and initial state

ECX carries a receiver, one stack word carries the source and physical cleanup
is `RET 4`. Success sets **AL=1**; failure clears **AL** after temporary cleanup.
Upper EAX bits are incidental: the inferred `undefined4` return is not a proved
full DWORD status result. Receiver byte `+2C97` gates an initial exchange of
pointers `+2C54/+2C64`, with null/identity admission and virtual-slot `+4/+8`
ordering retained. Those virtual effects/refcount ownership are not inferred
solely from familiar slot numbers.
[ASM](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.asm) ([annotated pseudocode](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.c))

The observed incoming direct call is at `006B57E7`. Its complete containing
caller, capture scheduling, receiver/input construction and publication timing
remain outside this selected body. The source and staging helper internals and
concrete interface/format are also bounded.

## Six mapped faces and exact row placement

For face indices 0 through 5, construct two temporary records, obtain source
face/staging values, then invoke global interface virtual slot `+80`. A signed
negative EAX result jumps to cleanup of both temporaries and the AL0 return.
Earlier face copies and the initial receiver exchange are not rolled back.
[ASM](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.asm) ([annotated pseudocode](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.c))

The success branch maps the staging texture. It copies `mappedWidth*4` bytes per
row, advances the source by the actual mapped pitch and destination by exactly
`0x400` bytes, for mappedHeight rows. Destination begins at global `011D1D34`
plus four times the selected UInt32 in this original six-word table at `00FF4E98`:

| Face index | Offset in four-byte pixels | Byte offset |
| --- | --- | --- |
| 0 | 0 | 0 |
| 1 | 16384 | 65536 |
| 2 | 64 | 256 |
| 3 | 16448 | 65792 |
| 4 | 128 | 512 |
| 5 | 16512 | 66048 |

The exact 24 original bytes are
`00000000 00400000 40000000 40400000 80000000 80400000` (little endian words).
For example face3 row1 starts at byte `65792+1024=66816`; it is not the fourth
face of a tightly packed layer-major buffer. These offsets describe a two-row,
three-column placement within a 256-pixel row stride, not a proved cube face
orientation/name mapping. No explicit row reversal or channel permutation occurs
in the memcpy loop. Map-result admission, source-format conversion and resource
copy completion inside the children remain unresolved.
[ASM](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.asm) ([annotated pseudocode](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.c))

Unmapping and both temporary cleanup calls follow each face's row loop. There is
no explicit fence wait or Vulkan buffer barrier in this selected caller; children
may synchronize. Absence of a local wait is not proof of asynchronous completion.

## Mip publication and remaining consumers

After all six faces, the receiver flag selects a destination pointer. Publish
six level0 faces with byte pitch `0x400`. Working descriptors use width64 and
pixel stride256. For levels1 through5, derive width `64>>level`, advance their
working source positions by four times that width, call one filtering child
(`006B3F30` only at level5, otherwise `006B3C70`) and publish every face. Complete
filter equations and edge behavior remain unexpanded.
[ASM](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.asm) ([annotated pseudocode](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.c))

The final branch folds packed words with unsigned OR/XOR/right-shift/mask
`0x7F7F7F7F` arithmetic and publishes level6 to all six faces with pitch4, then
sets AL1. This is not independent evidence for the actual channel/alpha format,
gamma, filter/irradiance semantics or final shader pixels. Lower publication,
map/unmap, allocation and reference children require their own contracts.
[ASM](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.asm) ([annotated pseudocode](../../evidence/native/functions/006B4C90_CubeCapture_ReadFacesAndPublishMipLevels.c))

A modern backend can represent faces in separate tightly packed layers and
perform equivalent preparation elsewhere, but byte-layout normalization, face
identity, row convention and final results require their actual producer/consumer
join. This original atlas workflow does not prescribe Vulkan memory flags,
barrier masks, command buffers, frame fences or a particular worker design.
No original-game, rendering, driver, timing or numeric test was executed.
