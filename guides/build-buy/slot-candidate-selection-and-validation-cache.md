# Slot candidates and full validation cache

Reference: shipped original PC1.67 TS3W.exe. Names are analyst assignments;
physical instructions govern the unchanged inferred C signatures. Object pointers,
two-word GUIDs, native slot indices, slot-name hashes and heading ordinals have
different physical roles. The selected functions do not establish complete
geometry, object lifetime or every managed callback implementation.

## Canonical functions and physical ABI

| Original responsibility | Complete ASM (annotated Ghidra C) | Physical ABI |
| --- | --- | --- |
| First validated candidate | [0x00ccb570](../../evidence/native/functions/00CCB570_SlotCandidates_SelectFirstValidated.asm) ([pseudocode](../../evidence/native/functions/00CCB570_SlotCandidates_SelectFirstValidated.c)) | ECX collector; five stack DWORDs; RET14h; low AL success |
| Full validation cache store | [0x00ccb480](../../evidence/native/functions/00CCB480_SlotValidationCache_StoreCandidate.asm) ([pseudocode](../../evidence/native/functions/00CCB480_SlotValidationCache_StoreCandidate.c)) | ECX cache; seven stack DWORDs; RET1Ch |
| Begin held-object cache scope | [0x00ccb200](../../evidence/native/functions/00CCB200_SlotValidationCache_BeginHold.asm) ([pseudocode](../../evidence/native/functions/00CCB200_SlotValidationCache_BeginHold.c)) | ECX collector; held pointer and low mode-byte DWORDs; RET8 |
| Full validation cache lookup | [0x00cc9870](../../evidence/native/functions/00CC9870_SlotValidationCache_TryGetCandidate.asm) ([pseudocode](../../evidence/native/functions/00CC9870_SlotValidationCache_TryGetCandidate.c)) | ECX cache; seven stack DWORDs; RET1Ch; low AL found |
| Manager defaults and embedded state | [0x00cf1780](../../evidence/native/functions/00CF1780_UserToolManager_InitializeDefaults.asm) ([pseudocode](../../evidence/native/functions/00CF1780_UserToolManager_InitializeDefaults.c)) | ECX manager; plain RET; initialized pointer result |
| Apply selected slot placement | [0x00d26bb0](../../evidence/native/functions/00D26BB0_HandTool_ApplySlotCandidatePlacement.asm) ([pseudocode](../../evidence/native/functions/00D26BB0_HandTool_ApplySlotCandidatePlacement.c)) | ECX hand tool; five stack DWORDs; RET14h |
| Find the pointed slot candidate | [0x00cfd780](../../evidence/native/functions/00CFD780_HandTool_FindPointedSlotCandidate.asm) ([pseudocode](../../evidence/native/functions/00CFD780_HandTool_FindPointedSlotCandidate.c)) | ECX hand tool; seven stack DWORDs; RET1Ch; low AL success |
| Register mutable debug settings | [0x00cef2b0](../../evidence/native/functions/00CEF2B0_UserToolSettings_RegisterDebugTunables.asm) ([pseudocode](../../evidence/native/functions/00CEF2B0_UserToolSettings_RegisterDebugTunables.c)) | ECX settings record; plain RET |

## Producer, key and output order

The pointed-candidate producer begins the collector with the actual held native
pointer and the global mode byte at011EE7B8. It chooses direct picked-host versus
nearby-host production and then calls the first-validated selection. The outputs
are a native host pointer, slot INDEX, observed distance and yaw. The original
candidate collection, rotation-count and angular ranking computation is described
in [slot flags and angular ranking](slot-flags-and-angular-ranking.md).

BeginHold clears the validation tree when the held pointer or low mode byte
changes. It always clears candidate count and refreshes held yaw at collector+2C,
or writes zero when no suitable held placement component is available. A native
pointer/mode scope is not an inferred GUID, generation or universal cheat key.

Cache keys contain four DWORDs: host GUID low/high, slot index and heading
ordinal. Lookup restores the validation byte and raw rule DWORD, and can copy
an available failure record to the optional output. Store retains that complete
validation result unconditionally; the caller performs rule-bit2 DoNotCache
filtering. This is a full-validation cache, not merely a table of callback answers.

Selection sorts candidate rows, attempts the complete cache key, and otherwise
invokes the original validation path. **After successful validation**, it applies
the PlacementOnly heading gate using the binary32 constant at0107F33C. A successful
selection returns the candidate outputs and clears candidate count. These observed
ordering and key/value meanings do not establish equivalence for a reconstruction
that filters headings before validation or caches only a callback answer. No
extra callback purity, skipped side-effect or failure-cache policy is inferred.

The selected placement consumer resolves a slot by native INDEX and applies its
pose/placement branches. Slot/product PlacementOnly04000000 distinguishes selected
parenting versus movement behavior. Its managed placement callback uses the actual
slot NAMEHASH at slot+4 and two-word object GUID arguments. Index, name hash,
heading ordinal, object pointer and GUID are not interchangeable. Other branches
remain visible in the complete paired body; this guide does not replace them
with a universal managed placement rule.

## Constructor defaults and mutable controls

The manager constructor places normal slot search radius2 at+154 and the original
binary32 defaults010832D4/00FC2368 at+158/+15C. CEF2B0 receives the manager+150
subrecord and registers highlighting, upgrade/normal search radius, two snap
fields, sledgehammer movement and deck water controls. The corresponding+8/+C
snap fields are mutable debug settings. Constructor defaults are not immutable
constants or a proof of every current search radius.

[Selected physical constants and referencing instructions](../../evidence/native/slot-candidate-selection-data.tsv)
retain exact binary32 bits without guessed rounding or angle conversion. The
existing00FF0C50 collision-distance sentinel is retained in
[audio/view collision data](../../evidence/native/audio-view-collision-data.tsv).
[Incoming original direct calls](../../evidence/native/slot-candidate-selection-incoming.tsv)
retain source function identities and physical E8 bytes. The global direct-call
index records outgoing targets; absent canonical pairs and indirect dispatch
remain unresolved rather than receiving fabricated C or a guessed callee.

One incoming E8 at00CE6E01 has no retained containing-function identity. It is
kept as an instruction reference, without inventing a function boundary or C
body. Incoming callers00D281E0/00D286A0 have retained function identities but no
canonical paired exports in this selected reference. Their instruction bytes
are authenticated; full caller behavior remains outside these eight bodies.
