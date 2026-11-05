# Floor-tile colour preparation and room reduction

Original PC1.67 static contracts. Names below are analyst assignments; saved
prototype/type analysis remains unchanged. These are complete existing Ghidra
owners and genuine annotated decompiler output, not reconstructed pseudocode.

| Role | Canonical pair | Instructions / owned bytes |
| --- | --- | --- |
| Prepare packed tile colour | [006A6270 ASM](../../evidence/native/functions/006A6270_FloorLighting_PrepareAndStoreTilePartColor.asm) ([C](../../evidence/native/functions/006A6270_FloorLighting_PrepareAndStoreTilePartColor.c)) | 109 / 381 |
| Reduce room colour lanes | [006A0130 ASM](../../evidence/native/functions/006A0130_RoomLighting_ReducePhysicalFloorColorLanes.asm) ([C](../../evidence/native/functions/006A0130_RoomLighting_ReducePhysicalFloorColorLanes.c)) | 102 / 378 |
| Update tile room/default colours | [006A88D0 ASM](../../evidence/native/functions/006A88D0_FloorLighting_UpdateTileRoomAndDefaultColors.asm) ([C](../../evidence/native/functions/006A88D0_FloorLighting_UpdateTileRoomAndDefaultColors.c)) | 131 / 382 |
| Pack scaled, truncated bytes | [006A3F90 ASM](../../evidence/native/functions/006A3F90_PackedColor_WriteScaledTruncatedBytes.asm) ([C](../../evidence/native/functions/006A3F90_PackedColor_WriteScaledTruncatedBytes.c)) | 60 / 224 |

The four complete owners contain402instructions/1365owned bytes, all matching
the pristine executable. No game function was executed.

## Packed input, lane order and conversion

6A6270 consumes ECX owner and six stack DWORD slots, RET24. Unsigned X/Z bounds
select an optional tile. The incoming packed word supplies A/R/G/B bytes. Each
is normalized; weighted RGB grey is mixed into all four lanes, including alpha.
The actual call to6A3F90 supplies B/G/R/A. A present tile receives selector9 via
6A9800 with the signed low-byte part input; room lookup and6B5BC0 follow. This
does not establish the upstream catalog reader or opaque setter/callback policy.

| Equation input | Operand address / instruction | Binary32 bits |
| --- | --- | --- |
| Byte normalization,1/255 | FAE564 /6A62AB | 3B808081 |
| Red grey weight,.12 | FE6040 /6A62DE | 3DF5C28F |
| Green grey weight,.67 | FF460C /6A62F4 | 3F2B851F |
| Blue grey weight,.21 | FF4608 /6A6311 | 3E570A3D |
| Grey mix,.3 | F9E504 /6A6325 | 3E99999A |
| Retained lane mix,.7 | FBB838 /6A631D | 3F333333 |
| Byte scale,255 | FA4134 /6A3F97 | 437F0000 |

All seven four-byte operands and actual instruction references were checked
against pristine bytes. Grey is `(R*.12 + G*.67 + B*.21)*.3` after normalization;
each prepared lane is grey plus its normalized lane times.7, in the recorded
SSE order. These scalar facts do not recover the caller's full FP environment.

6A3F90 consumes ECX output and four float stack lanes, RET16. It multiplies by
the loaded scale under inherited x87 arithmetic control. Before each FISTP it
ORs the saved control word with0xC00, selecting truncation, then restores the
original control. It compares the low32 conversion result unsigned with255 and
writes the selected low byte at output offsets0/1/2/3. The decompiler's ROUND
expression is not round-to-nearest evidence. Incoming arithmetic precision and
rounding, arbitrary negative/NaN/out-of-range input and saved return metadata do
not establish universal normalized-colour or Boolean semantics.

## Physical defaults and full room reduction

6A88D0 consumes ECX owner, X/Z, a low-byte part slot and room DWORD, RET16.
It updates a14-byte physical descriptor and retains its actual room0/missing-tile
early gate and room-map remapping branches. A present tile receives literal
FFFFFFFF at selector9 andC0C0C0C0 at selector10, signed part byte and zero extra
flags. This is conditional initialization, not a universal storage0/default-
product rule or proof of a complete floor-removal operation.

6A0130 consumes ECX room owner and plain RET; stored fastcall analysis is not a
recovered C++ declaration. Its unsigned coordinate loops obtain a tile through
6A42C0 and test6A9930 AL before the nonnull-tile check. Admitted tiles fetch
selector9 with argument1 through6AA510 and decode through69EF30. Four float
lanes accumulate in order and divide by the admitted count, with no explicit
empty-count rejection. Additional room vector+120 and referenced light factors
produce+140/+130; MINPS applies the referenced limit. An RGB-only average with
empty-list rejection is not this complete native reducer.

The decoder, room-membership predicate, full light-factor/FP-state producers,
catalog format, tile setters, removal and runtime consumers remain separate
boundaries. These pairs imply no image, shader, gameplay, persistence,
concurrency, performance or other-platform acceptance.


## Coarse fill input, exposure and the actual consumer

The selected original PC1.67 bodies establish the coarse sample count, exposure,
fill output ABI and a concrete four-lane consumer below. Stored inferred
prototypes are qualified by the instructions in the complete Listings. These
are static findings; dynamic settings and complete downstream behavior remain
separate questions.

| Entry | Actual boundary | Complete original pair |
| --- | --- | --- |
| 006A1120 | Source/no-source branches, coarse point pairs, area, fill and four-lane clamps | [ASM](../../evidence/native/functions/006A1120_FUN_006a1120.asm) ([actual annotated C](../../evidence/native/functions/006A1120_FUN_006a1120.c)) |
| 006A9960 | Full EAX0..4 matching room-field count, despite stored char prototype | [ASM](../../evidence/native/functions/006A9960_FUN_006a9960.asm) ([actual annotated C](../../evidence/native/functions/006A9960_FUN_006a9960.c)) |
| 006A0440 | Source virtual+30 maximum, scaled sample sum and dynamic exposure | [ASM](../../evidence/native/functions/006A0440_FUN_006a0440.asm) ([actual annotated C](../../evidence/native/functions/006A0440_FUN_006a0440.c)) |
| 006A02B0 | Actual output-pointer ABI, settings-selected minimum, nonlinear fill and deficit | [ASM](../../evidence/native/functions/006A02B0_FUN_006a02b0.asm) ([actual annotated C](../../evidence/native/functions/006A02B0_FUN_006a02b0.c)) |
| 006A1A00 | Conditional call and concrete owner+110 four-lane read into downstream6AB2F0 | [ASM](../../evidence/native/functions/006A1A00_FUN_006a1a00.asm) ([actual annotated C](../../evidence/native/functions/006A1A00_FUN_006a1a00.c)) |

6A1120's empty source-vector branch stores exposure1, selects settings11D1B40
or11D1B60 using C62C10(owner+10,+14), copies four lanes into+110/+120 and calls
the separate floor-colour reducer6A0130 then6A05D0. It returns before the later
general branch's clamps. Full setting/room-classification and6A05D0 semantics
are not established by that branch.

The nonempty branch visits unsigned X/Z offsets in steps2 with strict dimension
checks for admitted cells. It queries6A42C0 then6A9930 AL before its explicit
null check. 6A9960's instructions clear the full EAX and count matching DWORD
room values at tile+7C/+90/+A4/+B8. Its caller consumes that full count, adds
count*.25 to area and samples only when nonzero. The C char/CONCAT31 expression
is incomplete inferred metadata, not proof of uninitialized upper bytes.
Original tile room-field writers belong to the separate room-grid contract;
6A9930 and6A42C0's complete failure/lookup policy remain separate.

The two positions use unsigned tile+40/+44, height+78 and room transform+F8,
at height and height+4. [Original scalar words](../../evidence/native/data/room-fill-selected-scalars.txt)
establish4.0,3.0,.25,1.0,.35,.5 and2^32 exactly. At6A1357/6A143F the room
is ECX and five stack words include two zero words. Complete69FF70 argument
semantics and all virtual response/visibility branches are still open; the
zero words alone do not prove every descendant ignores occlusion. Sum and max
use four-lane ADDPS/MAXPS. Wall records contribute UInt32+24 times3 to area.
No whole-branch positive-area or finite rejection is present before DIVPS.

6A0440 initializes exposure1, scans source virtual+30 x87 responses, and compares
the selected maximum with the RGB sum of the maximum-sample lanes multiplied
by the live11D1A70 setting. Its sign-bit-based selections and COMISS branches
must not be replaced by decompiler integer casts or an asserted all-input
Math.Max/Clamp contract. Original image globals1159B24/1159B20 are1/3; current
runtime writers remain unresolved. Out-of-band maximum chooses the applicable
threshold divided by that maximum. Byte room+19 adds the live11D1C50 factor.
6A1120 later scales four+110/+120/+130/+140 lanes by that factor again when
the same byte is set; which original room inputs enable it remains open.

6A02B0 takes ECX room, stack4 destination, stack8 four-lane average, stackC
low-byte nonlinear flag; RETC and EAX=destination. It selects minimum through
the same room lookup, scales it by live11D1B88 and uses a separate low-sum
threshold. Nonlinear fill loads11D1B80 and11D1B90 before x87 `_CIpow`; the
decompiler omits those operand expressions, so the Listing governs the call.
The final RGB deficit may add scaled minimum to all four lanes. Settings
initializers/setters and complete unordered/singular input semantics remain
open; no fixed CLR constants or RGB-only equivalence are inferred here.

The actual6A1A00 caller first updates inputs through6A0640/6A9030, calls6A1120
only when owner+18==0, reads+110..11F immediately and passes the copied lanes
to6AB2F0 with a scalar from owner[0]+98. It later invokes6AA2F0 with selectors9
and10 and separate owner regions. Those calls are concrete consumers, not
proof of full texture allocation, GPU completion, native worker scheduling,
cache ownership, resource retirement or rendered parity.

Current source membership, paired queries and allocated atlas origins remain
in their existing guides. The new bodies do not close allocator initialization,
origin/relative-label equivalence, complete6AADB0/6ABFD0 sampling, all tuning
setters, special-room policy or the complete downstream shader/lifetime chain.
