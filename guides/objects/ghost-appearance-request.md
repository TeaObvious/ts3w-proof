# Ghost appearance request and display style

Original PC1.67 TS3W.exe, static instruction/physical ABI and complete body review.
Names on internal functions are analyst assignments. No native or C# event,
renderer, fixture or gameplay execution was performed.

| Entry | Role | Complete original pair |
| --- | --- | --- |
| 0078D490 | Original ScriptCore.World::World_ObjectSetGhostState | [ASM](../../evidence/native/functions/0078D490_ScriptCore_World_World_ObjectSetGhostState.asm) ([annotated C](../../evidence/native/functions/0078D490_ScriptCore_World_World_ObjectSetGhostState.c)) |
| 0095E0A0 | VisualState_SetGhostRequestAndNotify | [ASM](../../evidence/native/functions/0095E0A0_VisualState_SetGhostRequestAndNotify.asm) ([annotated C](../../evidence/native/functions/0095E0A0_VisualState_SetGhostRequestAndNotify.c)) |
| 006965D0 | GhostFixup_InitializeStyleAndFlags | [ASM](../../evidence/native/functions/006965D0_GhostFixup_InitializeStyleAndFlags.asm) ([annotated C](../../evidence/native/functions/006965D0_GhostFixup_InitializeStyleAndFlags.c)) |

## Actual frontend and physical words

78D490 is a complete66-byte cdecl function ending in the plain RET at78D4D1.
Object identity is two DWORD slots at+4/+8, then UInt32 raw ghostType+C and full
ageGenderSpeciesFlags+10. Managed identity remains the verified original
ScriptCore.World::World_ObjectSetGhostState(UInt64,UInt32,UInt32),void. A physical
four-word prototype does not change that managed import.

The function obtains ObjectRegistry_GetGlobal, resolves the borrowed object using
CONCAT44(high,low), fetches VisualState through Object_GetComponentByMask and
original global11EA2A8, then calls95E0A0 with the two raw words. Any missing
registry/object/component returnsvoid. All three conditional exits target the
same final RET. There is no fallback component, error return or normalization.
Actual final C correctly retains the64-bit object resolution and raw words.

The older canonical80-byte window was a next-entry bound, including14CC bytes
fromD4D2 throughD4DF. The saved database held a1-byte function and the first5-byte
CALL had undefined Listing, while the following23instructions were defined. The
actual complete body now has24owned instructions. Recovery defined ONLY that CALL
with a five-byte restricted no-flow/no-analysis DisassembleCommand; no existing
instruction or unrelated code unit was cleared. Existing bytes, all branches,
RET, padding and next seeded sculpture function atD4E0 were guarded unchanged.
The original export name/namespace and prior registration metadata were preserved.

## Raw VisualState event versus renderer style

95E0A0 is complete59bytes/18instructions, thiscall twoUInt32 words RET8void.
TESTghostType/JBE distinguishes zero from any nonzero including high-bit values.
It ORs10000 into VisualState+8 for nonzero, otherwise ANDsFFFEFFFF; other bits are
preserved. Then it constructs two DWORD payload words in raw type/flags order
and calls ObjectEvents_Dispatch(event22,owner+4,payload). Every call dispatches;
there is no repeated-value test, clamp27+, age/species interpretation or resource
lookup here. Do not equate host desired-snapshot memoization with native dispatch.
The selected leaf does not close all event consumer timing/ownership.

6965D0 is complete53bytes/17instructions, thiscall twoUInt32 words RET8.
Its constructor initialization writes base/derived vtables, initializes refcount
viaXCHG and zero fields. CMPghostType,1B followed by SBB/AND stores at+8 the raw
type when UNSIGNED type<27, otherwise0. It stores the entire unmodified flags at
+10. Raw0 is disabled, raw26 selects26, raw27/FFFFFFFF select0. Native VisualState
bit10000 can therefore be set for a raw nonzero request whose display style is0.
EAX remains the receiver, but no independent caller return contract is inferred
from that fact. Full fixup resource/shader/renderer lifetime remains separate.

## Evidence and limits

All3pairs total178bytes/59instructions;2new internal pairs plus the upgraded
frontend pair. Actual saved annotated C and original owned Listing reconstruct
all envelopes with no gap and match pristine original PE bytes. Analyst metadata
and the narrowly specified frontend Listing/body definition are saved clean;
all original FileBytes remain pristine. No original instruction bytes, adjacent
functions, packages, managed code, runtime object or render resource were changed.
The scope establishes raw words, component gate, repeated event behavior and
unsigned style projection, not complete occult gameplay or material appearance.
