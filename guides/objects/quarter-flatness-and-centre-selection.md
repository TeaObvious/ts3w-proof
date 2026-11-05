# Quarter flatness and centre selection

Original PC1.67 TS3W.exe, identified centrally. Analyst names describe reviewed
roles. These are actual saved Ghidra annotations/C and complete original owned
ASM, with explicit nonowned envelope gaps. Static evidence only; no original
runtime, host numeric fixture, gameplay, allocation or timing acceptance.

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 00AD0B00 | LotQuarter_FailsFlatnessTolerance | [ASM](../../evidence/native/functions/00AD0B00_LotQuarter_FailsFlatnessTolerance.asm) ([C](../../evidence/native/functions/00AD0B00_LotQuarter_FailsFlatnessTolerance.c)) |
| 00AF7E40 | TileQuarter_GetOuterVerticesAndCentre | [ASM](../../evidence/native/functions/00AF7E40_TileQuarter_GetOuterVerticesAndCentre.asm) ([C](../../evidence/native/functions/00AF7E40_TileQuarter_GetOuterVerticesAndCentre.c)) |
| 00A8C690 | LotLevelHeight_SampleLocalPosition | [ASM](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.asm) ([C](../../evidence/native/functions/00A8C690_LotLevelHeight_SampleLocalPosition.c)) |
| 00ACFE30 | TileQuarterList_AnyPredicateFailure | [ASM](../../evidence/native/functions/00ACFE30_TileQuarterList_AnyPredicateFailure.asm) ([C](../../evidence/native/functions/00ACFE30_TileQuarterList_AnyPredicateFailure.c)) |
| 00B3C330 | PlacementArea_TestSlopeSupport | [ASM](../../evidence/native/functions/00B3C330_PlacementArea_TestSlopeSupport.asm) ([C](../../evidence/native/functions/00B3C330_PlacementArea_TestSlopeSupport.c)) |

## Actual callback and ABI

B3C330 tests retained area/attribute04, catalog and tool exemptions before calling
ACFE30 over its prepared quarter list. Its immediate PUSH atB3C399 supplies exact
callbackAD0B00. That entry was previously unowned in the selected analysis and
is now defined from the original operand/prologue and complete physical flow.
The callback has two cdecl DWORDs(lot,packedquarter), ordinary RET, EAX0flat and
EAX1failure. ACFE30 calls it with two stack words, ADDESP8, checks lowAL and stops
on the first failure. Its own result is lowALBoolean; empty path's upperEAX is not
success data. Parent exceptions include spiral/elevated-floor AD01D0 and optional
feedback3F; scalar threshold success is not complete placement admission.

## Signed onehot geometry and real centre

AF7E40 has four cdecl pointer arguments, void return. The source record is four
bytes x,z,level,onehot mask. [Necessary selector/threshold data](../../evidence/native/data/quarter-flatness-operands.tsv)
retain the original eight dispatch pointers and exact comparison operand.
Masks1/2/4/8 produce outer pairs -Z,+X,+Z,-X, in the following order:
1:(x+1,z),(x,z);2:(x+1,z+1),(x+1,z);4:(x,z+1),(x+1,z+1);
8:(x,z),(x,z+1). Byte increments wrap before signed extension. Centre is x+.5,z+.5
with SIGNED INTEGER level, stored as{float,float,int}. Actual Ghidra output uses
that reviewed12byte type; the older apparent third float was an inferred pointer
artifact. Other masks do not produce ordinary full output.

AD0B00 reads two binary32 outer heights fromlot+290 grid and calls A8C690 for the
centre. FCOMIP/JA rejects strict abs(first-second)>tolerance, then strict
abs(second-centre)>tolerance. The exact tolerance bits are3D4CCCCD. The centre
remains x87ST0; no forced binary32 centre spill precedes the second subtraction.
Equality passes. Under masked FP exceptions, unordered does not takeJA; an explicit
finite guard is a narrower host policy. Process FP exception/control setup is
not established by these selected functions.

## Binary32 diagonal decision before x87 interpolation

A8C900..91B loads four binary32 corners, executes two ADDSS diagonal sums,
COMISS and JBE. Strict rounded(sum00+11)>rounded(sum10+01) chooses00/11. A rounded
tie chooses01/10, even when unrounded sum00+11 is slightly larger. Only afterward
does the sampled triangle use x87 subtraction/multiply/add and ST0 return.
This is neither bilinear interpolation nor an unconditional higher unrounded mean.

Under ordinary nearest-even SSE, h00=1,h01=0,h10=1,h11=2^-24 rounds both diagonal
sums to1. The original selected centre is exactly.5 for these values; max of
unrounded binary64 sums followed byhalf gives.5000000298023224. This is a static
counterexample under the stated rounding domain. It is not a measured original
runtime result or proof of process MXCSR initialization. General x87 rounding,
NaN signaling, extreme exponents and ambient control words remain separate.

## Boundaries

The original level sampler includes out-of-lot/recursion/level-boundary and vertex
fast paths before interpolation. Four supplied host heights do not establish all
of those queries. Original flatness consumes upstream packed coverage; independent
polygon/closed-triangle selection does not automatically match its prepared list
at every boundary. The scalar callback is failure-polarity, not a positive IsFlat.

All five complete envelopes1782bytes590instructions match pristine original bytes;
actual signed output type/callback signature and saved annotations checked. The
selector table and threshold are independently compared with original PE data.
No original FileBytes changed. Canonical pair links and indexes/manifest are
maintained; raw scratch and provisional annotations are excluded.
