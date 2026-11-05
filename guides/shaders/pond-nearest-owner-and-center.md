# Original pond capture owner and representative point

Reference: centrally identified original PC1.67 TS3W.exe. Names below are analyst
names; original instructions govern stored decompiler types and expressions.

## Registered owner predicate

The [complete nearest-owner helper](../../evidence/native/functions/00AF8ED0_PondCapture_IsNearestRegisteredOwner.asm) ([actual annotated Ghidra C](../../evidence/native/functions/00AF8ED0_PondCapture_IsNearestRegisteredOwner.c))
has57instructions/177bytes. Physical ABI is ECX list sentinel, two stack words
(requested owner, aligned camera point), RET8; meaningful result is lowAL0/1.
It starts selected=null, best=binary32 FLT_MAX from106B0CC (7F7FFFFF). It traverses
next links until sentinel. A nonnull link's owner is node-528; a null link supplies
null to the center helper, whose behavior there is not sanitized or established.

SSE subtracts camera XYZ, squares the differences and sums Z+Y then X. The
COMISS/JBE branch admits only ordered strictly smaller distance, preserving the
earlier equal candidate and rejecting NaN, infinity and distances>=FLT_MAX.
Finally it compares the requested owner with selected. Thus requested=null can
return true if no candidate wins; this is not a Boolean out-center query.
Complete list registration/removal lifetime and frame publication remain open.

## Center producer

The [complete representative-point writer](../../evidence/native/functions/00AF8B40_PondRenderer_WriteTransformedBoundsMidpoint.asm) ([actual annotated Ghidra C](../../evidence/native/functions/00AF8B40_PondRenderer_WriteTransformedBoundsMidpoint.c))
has35instructions/117bytes: ECX renderer, aligned output pointer, RET4. It reads
four-lane endpoints at renderer+50/+60, adds and multiplies by binary32 half
fromF9B5B4 (3F000000). Child6FACD0 supplies transform rows. Keeping the original
SSE order, output=(midpoint.X*row0+row3)+midpoint.Y*row1+midpoint.Z*row2.
MOVAPS writes16bytes. EAX incidentally contains output despite the unchanged
stored undefined/void decompiler return. The caller uses that register as a
pointer; do not infer a different stack cleanup from the C return declaration.
Source W, full transform producer, bounds update/registration and pointer
retention remain separate static questions. This producer is a transformed
bounding midpoint, not a mesh index-reference centroid.

Both complete original bodies and the two direct calls were checked against
physical executable bytes. Original bytes, function boundaries, ABI, signatures,
parameter/local types, control flow and unrelated metadata were preserved. The
annotations were saved in Ghidra before actual C/ASM export. These are static
original findings; no original game, rendering pixels or runtime timing executed.
