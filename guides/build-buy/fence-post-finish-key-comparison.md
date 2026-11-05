# Fence finish raw-key comparison

Original shipped PC1.67 TS3W.exe. Static complete owned-body/instruction/physical
ABI review; analyst role names/types. No C# state or game execution is implied.

| Entry | Complete original reference |
| --- | --- |
| A66380 FenceDesignTriple_EqualsAllKeyWords | [ASM](../../evidence/native/functions/00A66380_FenceDesignTriple_EqualsAllKeyWords.asm) ([annotated C](../../evidence/native/functions/00A66380_FenceDesignTriple_EqualsAllKeyWords.c)) |
| B14910 FenceDesignMap_RegisterUniqueTriple | [ASM](../../evidence/native/functions/00B14910_FenceDesignMap_RegisterUniqueTriple.asm) ([annotated C](../../evidence/native/functions/00B14910_FenceDesignMap_RegisterUniqueTriple.c)) |
| D46D80 WallPlacementHelper_InstallFinishKeys | [ASM](../../evidence/native/functions/00D46D80_WallPlacementHelper_InstallFinishKeys.asm) ([annotated C](../../evidence/native/functions/00D46D80_WallPlacementHelper_InstallFinishKeys.c)) |
| B146F0 FenceDesignMap_WriteResource | [ASM](../../evidence/native/functions/00B146F0_FenceDesignMap_WriteResource.asm) ([annotated C](../../evidence/native/functions/00B146F0_FenceDesignMap_WriteResource.c)) |
| B14A20 FenceDesignMap_ReadResource | [ASM](../../evidence/native/functions/00B14A20_FenceDesignMap_ReadResource.asm) ([annotated C](../../evidence/native/functions/00B14A20_FenceDesignMap_ReadResource.c)) |

## Comparator and actual consumer

A66380 owns111bytes/41instructions. IncomingECX is a valid48-byte left triple;
one stackpointer at entryESP+4 supplies a valid48-byte right triple. Both exits
RET4. Each of three consecutive16-byte keys compares rawDWORDoffsets0,8,C,4,
repeated at+10 and+20. All12conditionalbranches target the same mismatch block.
MOV EAX,1 and XOR EAX,EAX establish FULLUInt32EAX1/0; this is not AL-only.
Equality is signedness-independent; no pointer shortcut, nullpointer fallback,
FP coercion, resource resolution or allocation occurs. The pointer prototype
expresses inspected raw words, not a recovered original class layout.

B14910 owns92bytes/43instructions, thiscall one supplied triple pointer,RET4void.
Its retained list at+74/+78 advances0x30bytes and tests the comparator result's
lowbyte, stopping on the first match. Because A66380 returns normalized full0/1,
that lowbyte consumer is valid without weakening the comparator's full return.
On absence it appends all12DWORDs inline or through CA0860 growth. Its original
plate's non-generalization of nullable-key equality remains valid; this pair now
supplies the precise raw-key comparison instead of a generic unknown helper.
B14910 does not allocate or return a design ID, mutate its input triple or prove
a host dictionary's reservation/lowest-free/refcount policy.

## Full-key producer and representation boundary

D46D80 takes ECX placementhelper and three full key pointers,RET0Cvoid. It copies
all16bytes of diffuse to helper38, specular to48 and designCOMP to28. COMP is not
a third texture. Resource broker/interface lookup and retained helper reference
ownership follow; current actual C has documented virtual/output-alias artifacts,
so those apparent aliases are not imported as concrete layout facts.

B146F0 writes089132E8 version1,count and14-byte rows: threeUInt16registered key
handles,UInt32ID,UInt32refs. No wall Pattern lane. B14A20 reads fullUInt32ID/refs
into its two maps, copies all48keybytes and registers the existing default triple
through B14910. It does not overwrite that default storage. Complete native ID
allocation/default transitions and actualpost UInt16 versus mapUInt32 boundary
are separate producer/consumer work; they are not accepted host policy here.

Host projected values use nullable GameResourceKey fields. Original raw48byte
comparison does not establish how an absent Nullable value or a present zero key
must map into native key memory. A host normalization that collapses all-null
lanes or ignores Pattern needs its actual source value producers documented;
this helper alone is not proof of that normalization or complete gameplay parity.

Exact existing function/Listing boundaries and adjacent codeunit envelopes were
reviewed. No function body, Listing instruction or original byte changed. Full
actual annotated C and owned ASM carry the final reference; no bounded objdump
window substitutes for either canonical pair.
