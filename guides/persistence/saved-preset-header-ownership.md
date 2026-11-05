# Saved preset header and native program ownership

Original shipped PC1.67 TS3W.exe, statically reviewed in the selected original
Ghidra program. Names describe analyst roles. These are complete owned bodies;
metadata/signatures and one seeded wrapper boundary are repaired without changing
any original memory or file bytes. No runtime execution is claimed.

| Address | Instruction-established contract |
| --- | --- |
| 005BFAC0 | ECX constructor returns same receiver EAX; field5C starts at UInt32 value2. |
| 005BF830 | cdecl stream,preset,key-context; writes UInt32 envelope version2, exact preset5C, then body size. |
| 005C0110 | cdecl reader/context/output; accepts1/2, reads saved UInt32 into new preset5C; size0 still publishes preset and AL1. |
| 00410500 | Shared MOV EAX,[ECX+5C]; RET getter, full32bits, no normalization. |
| 00B31170 | Locked manager: fullID!=FFFFFFFF delegates productC99BD0; FFFFFFFF uses active key and design interface05DE1935; full5C survives release/unlock; missing returns0. |
| 00787F50 | Actual original managed ObjectDesigner_GetDesignPresetSubsort hook; cdecl oneUInt32 forwarded, fullEAX result,18byte body. |
| 005C0310 | thiscall plus output/context/retain words,RET0C,ALsuccess only; tree28 ->005C22D0; optional retained refs from12byte output entries. |

The constructor's2, an absent lookup's0 and a saved0 are different states.
Subsort is outside complate/XML. The12byte envelope is separate from the enclosing
lot Section2 UInt16 handle, making its fixed prefix14bytes. Do not infer absent
header from value0 or synthesize a default after reading an empty body.

00B31170 holds existing critical-section28 during selection; active design
requires nonzero key typeC0, uses keyB8, releases queried interface before unlock.
A physicalUInt32 ID is not the pointer type shown by prior inherited metadata.
The preserved managed identity is not renamed by the analyst role corrections.
00787F50 forwards a stack copy to a child that RET4-cleans it; its own plainRET
leaves the original caller argument. Its prior one-byte body was a placeholder,
not its complete function. The original bytes decode MOV/PUSH/CALL/MOV/CALL/RET.

005C0310 tests its owned tree before the actual directCALL005C0378->005C22D0.
Success and failure writeAL only, not a fullEAXstatus. The third stackword's lowbyte
controls native reference registration; actual C retains virtual-call aliases.
These native functions do not establish a CLR weak completion cache, reloaded CPU
pixel equality, host CWT first-value metadata policy or host thread scheduling.
Do not turn those host mechanisms into an original object layout. Full broker,
XML/compiler grammar and parent selection remain separate contracts.

## Canonical complete evidence

- 005BFAC0: [ASM](../../evidence/native/functions/005BFAC0_DesignPreset_InitializeEmpty.asm) ([annotated Ghidra C](../../evidence/native/functions/005BFAC0_DesignPreset_InitializeEmpty.c)).
- 005BF830: [ASM](../../evidence/native/functions/005BF830_Preset_WriteContextEnvelope.asm) ([annotated Ghidra C](../../evidence/native/functions/005BF830_Preset_WriteContextEnvelope.c)).
- 005C0110: [ASM](../../evidence/native/functions/005C0110_Preset_ReadContextEnvelope.asm) ([annotated Ghidra C](../../evidence/native/functions/005C0110_Preset_ReadContextEnvelope.c)).
- 00410500: [ASM](../../evidence/native/functions/00410500_UInt32Field5C_Get.asm) ([annotated Ghidra C](../../evidence/native/functions/00410500_UInt32Field5C_Get.c)).
- 00B31170: [ASM](../../evidence/native/functions/00B31170_ProductPresets_GetDesignSubsort.asm) ([annotated Ghidra C](../../evidence/native/functions/00B31170_ProductPresets_GetDesignSubsort.c)).
- 00787F50: [ASM](../../evidence/native/functions/00787F50_ScriptCore_World_World_ObjectDesigner_GetDesignPresetSubsortImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/00787F50_ScriptCore_World_World_ObjectDesigner_GetDesignPresetSubsortImpl.c)).
- 005C0310: [ASM](../../evidence/native/functions/005C0310_ComplateNative_BuildPrograms.asm) ([annotated Ghidra C](../../evidence/native/functions/005C0310_ComplateNative_BuildPrograms.c)).
