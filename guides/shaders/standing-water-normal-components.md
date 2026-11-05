# StandingWater normal component routing and parameter records

Reference is the centrally identified PC1.67 original executable and shader
archive. The selected cap0701 variant29 PASS names VS7187/PS7206 (one-based LINK
IDs, zero-based slots7186/7205). PS bytecode begins at archive offset10893802,
length972, identity5d9996b36adc3a57a8ab3f368501e7839bbab53b49f56c8499debbbfd5a181ab.
These are archive identities/offsets, not native function addresses. The selected
[serialized binding](../../evidence/shaders/standing-water-normal/selected-binding.tsv)
uses sampler2/NormalMap6E56548A and preset9.

## Program resolution

The [complete native LINK resolver](../../evidence/native/functions/0079AB70_ShaderDatabase_ResolveOneBasedProgram.asm) ([actual annotated Ghidra C](../../evidence/native/functions/0079AB70_ShaderDatabase_ResolveOneBasedProgram.c))
is74bytes/33instructions: ECX database, one DWORD stack ID/RET4, EAX object/null.
ID0 returns null. SUB EAX,1 converts the serialized ID to a vector slot; unsigned
JNC rejects index>=count, where count is SAR((end-begin),2). Therefore stored
VS7187/PS7206 select slots7186/7205. A selected slot is dereferenced without a
null-slot guard. Virtual+8 returning lowALtrue returns the object; otherwise
virtual+C receives literal0 and its lowAL result admits or rejects the object.
Child readiness/preparation semantics and pointer retention are unresolved.
The [PASS consumer](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.asm) ([annotated C](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.c))
calls this resolver at79EBE4/79EBF2 for its stored vertex/pixel IDs. These are
physical direct calls; the two indirect child targets are not invented graph edges.

## Component routing

The [original instruction slice](../../evidence/shaders/standing-water-normal/PS7206-normal-channels.asm.txt) ([explicit analyst translation](../../evidence/shaders/standing-water-normal/PS7206-normal-channels.c))
contains the two animated sample reads and complete component collection/normal
reconstruction prefix. At0098, source swizzle80EB0000 writes first W/Z into X/Y.
At00B4, destination802C0000 masks ZW and source80E40001 is identity: r0.z=second.z,
r0.w=second.w. It does NOT compact source XY into destination ZW. MAD00C0 decodes
all four lanes with2*x-0.99609375. MOV0148 source80E70002 then sets second normal
X from decoded W (Alpha) and Z from decoded Z (Blue). Both normal samples therefore
use Alpha/Blue. Reading Green/Red for the second sample is not this original
program. PP destination bits remain in the listing; no CPU precision emulation or
full shader translation is claimed.

## Packed native parameter counterpart

The [complete descriptor decoder](../../evidence/native/functions/0079D410_ShaderParameter_DecodePackedBinding.asm) ([actual annotated Ghidra C](../../evidence/native/functions/0079D410_ShaderParameter_DecodePackedBinding.c))
is165bytes/49instructions, physical ECX plus four stack words/RET10. It copies
the hash to+C, truncates selected fields to16bits, uses logical UInt32 shifts,
assembles descriptor+18 and optionally stores bufferBase+4*offset. Its stored
prototype/types remain unchanged; meaningful declared return is absent despite
incidental EAX. The existing [PASS reader](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.asm) ([annotated C](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.c))
calls it at79F6AF/79F864 for the two parameter groups. The original word pair
01034001/80001000 for hash3C45E334 (NormalMapScale) decodes descriptor00480D01,
count1/offset0. This establishes the binding record, not its live value/producer.

Selected PS7206 multiplies the combined normal's XY by c13 before normalization.
Resolving that NormalMapScale producer/value, complete variant selection, GPU
partial precision, local light lobes, rain variants and reflection/scene color-space
remains separate static work. No invented scale or brightness constant is inferred
from this channel proof. No original/runtime game or shader pixels were executed;
all claims here are original instruction/file-byte analysis.
