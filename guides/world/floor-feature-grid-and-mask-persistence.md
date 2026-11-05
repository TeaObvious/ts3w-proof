# Floor-feature grid headers and mask persistence

Original shipped PC1.67 TS3W.exe; reference identity is recorded centrally.
Names are descriptive analyst roles. Code is complete original Listing and actual
annotated Ghidra pseudocode; original FileBytes remain pristine.

## Header and physical resize

C6D880 writes B125533A with the supplied group and lot GUID: version DWORD1,
width/depth/levels DWORDs from grid+4/+8/+C. Caller owns the body and final close.
C6D950 reads the same four words, consuming version WITHOUT comparison. It retains
raw dimensions and invokes virtual8 with their low32 product as an ELEMENT count.
It compares neither enclosing lot dimensions nor trailing EOF. Its physical ABI
is ECXgrid plus context/group/GUIDlow/high four stackwords, RET10hex, ALcontext
status. Its context status is accumulated by reads; failure closes the stream.

Virtual8 atC6DA31 receives ECXgrid and ONE stackword, callee cleans4. The saved
local callsite override removes the previous stack-drift/unaff_ESI rendering:
post-call fields are width+4, depth+8, levels+C, as proved by instructions.
A raw pointer-looking local used as the level word is a compiler alias in
pseudocode, not a pointer-valued dimension. No portable allocation bound or
universal overflow behavior follows from the native product/virtual call.

## Flag and mask acquisition

The AC91D0 dispatcher only loads flags when lot+29C is absent. It opens exact
B125533A/group00333E35/lotGUID, constructs a byte grid, reads header through
C6D950, reads the physical byte body, closes. Header failure closes, sets sticky
failure and destroys/clears that flag owner. The body status stays accumulated.

Only after successful context, absent mask+2A0 and PRESENT flag+29C does mask
acquisition proceed. Enclosing lot LDES WORD+78 selects the branch:

- **Before2Dhex:** construct a ushort grid from the flag grid's actual dimensions
  and fill EVERY cellFFFF. Do not open group00333E36. An extra, malformed or
  oversized mask resource is irrelevant to this branch.
- **From2Dhex:** construct/read exact B125533A/group00333E36/lotGUID using the same
  header and an endian-qualified ushort body. Header failure closes, sets sticky
  failure and destroys/clears this mask owner.

The gate uses the enclosing description, not the grid's consumed UInt32 version
and not which resource happens to appear first in a package index. Existing owner
pointers skip their respective acquisition; no transactional replacement or
all-or-nothing world acceptance is inferred from the selected native branch.

AC4FA0 normal write checks each present pointer independently. Flags00333E35
use the physical byte buffer; masks00333E36 use all ushort values through the
context byte-order writer. Presence, not an all-nonzero scan, gates writing.
Modern mask input retains every raw ushort, including masks on zero-flag cells.
The separate ordinary LDES writer ACA430 always emits complete45hex state, so a
current normal save is read through the modern branch.

## Raw mask state and retirement

The flag and mask buffers are independent. A zero flag does not discard its raw
modern mask during read/write. Mutating a cell uses the scalar mask rules; when
an old-nonzero/new-zero flag transition occurs, ABB5F0 scans FLAG bytes only and
frees both owners when they are all zero. Mask-only values cannot prevent that
retirement: [ASM](../../evidence/native/functions/00ABB5F0_LotFloorFeatures_SetTile.asm) ([pseudocode](../../evidence/native/functions/00ABB5F0_LotFloorFeatures_SetTile.c)).
An initially allocated present all-zero flag layer is retained until the specific
old-nonzero transition/free-scan branch occurs.

## Canonical code

| Address | Role | Complete original code |
| --- | --- | --- |
| 00C6D880 | LotGrid_WriteHeaderResource | [ASM](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.asm) ([pseudocode](../../evidence/native/functions/00C6D880_LotGrid_WriteHeaderResource.c)) |
| 00C6D950 | LotGrid_ReadHeaderResource | [ASM](../../evidence/native/functions/00C6D950_LotGrid_ReadHeaderResource.asm) ([pseudocode](../../evidence/native/functions/00C6D950_LotGrid_ReadHeaderResource.c)) |
| 00AC91D0 | LotDataLayers_ReadSavedResources | [ASM](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c)) |
| 00AC4FA0 | LotDataLayers_WriteSavedResources | [ASM](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.c)) |

Static original evidence only. No original/gameplay, corrupt-input, allocation or
concurrency execution was performed. Native out-of-buffer arithmetic and allocator
failure are not portable reader success requirements.

[Dense grid layout and level changes](floor-feature-dense-grid-levels.md) closes
the byte/ushort vtable entries, actual element resize and selected insertion fill.
