# Facial-blend resource admission

Reference: PC1.67, identified in the [central reference](../../evidence/reference.json).
Analyst function names and provisional decompiler types are distinguished below.

## Canonical original evidence

| Function | Exact paired evidence |
| --- | --- |
|005E3980 SimBuilder_SetFacialBlend | [ASM](../../evidence/native/functions/005E3980_SimBuilder_SetFacialBlend.asm) ([C](../../evidence/native/functions/005E3980_SimBuilder_SetFacialBlend.c)) |
|005E4E80 SimBuilder_ApplyOutfitAppearance | [ASM](../../evidence/native/functions/005E4E80_SimBuilder_ApplyOutfitAppearance.asm) ([C](../../evidence/native/functions/005E4E80_SimBuilder_ApplyOutfitAppearance.c)) |
|005A68B0 registered script adapter | [ASM](../../evidence/native/functions/005A68B0_ScriptCore_CASUtils_CASUtils_SimBuilderSetFacialBlendImpl.asm) ([C](../../evidence/native/functions/005A68B0_ScriptCore_CASUtils_CASUtils_SimBuilderSetFacialBlendImpl.c)) |

These are complete Ghidra-owned instruction listings. The body of005E4E80
excludes the six-byte gap005E4F9A..005E4F9F. The two SimBuilder names are
analyst-assigned Ghidra names, not recovered original symbols. Original bytes
were checked against the reference executable. Provisional decompiler types
and the Boolean return-register limitation are explained in the paired C files.

## Input reader and deferred acquisition

The necessary wire-reader comparisons and selected key-reader byte window are
in [decoder contract data](../../evidence/native/decoder-contract-data.tsv).
At005EB447 the outfit reader calls005E56E0 to decode a key. The checks at
005EB49B..005EB4B6 reject zero type and retired instanceB4F4A465070DFD80;
other key/amount rows are preserved, without installed-resource acquisition in
that loop. Rejected rows are zeroed rather than compacted there.

005E56E0 uses inline TGI when no external vector exists. With a vector,
version<21 reads a byte index and version>=21 reads UInt16, then copies16 bytes.
This is decoding, not admission to a loaded builder. Full malformed-index and
whole-outfit decoder contracts are not claimed by the selected window.

## Builder and script behavior

| Stage | Original behavior |
| --- | --- |
| Existing key |005E399E..005E39BB matches the complete held key.005E3B4B..005E3B65 updates its amount, ORs dirty bits5000 and returns true without reacquisition. |
| New key |005E3ADE supplies interface03593C6A to resource-manager virtual+34.005E3AE6 tests Boolean AL. Success retains key/amount/reference. |
| Failed acquisition |005E3AEA..005E3B48 unlinks, releases and frees the newly allocated node and returns AL0. |
| Outfit consumer |005E4E80 iterates outfit+2B8/+2BC with stride24.005E5125..005E5145 skips zero amount and invokes SetFacialBlend otherwise.005E514A advances without testing AL. |
| Script adapter |005A690B calls SetFacialBlend and returns its AL. Invalid/missing builder returns AL0 at005A6915. |

An absent blend therefore need not prevent applying the rest of an outfit.
The decoded outfit need not lose its unavailable resource key. Rechecking
package membership before every update would wrongly change the held-entry
path, which does not reacquire. Resource acquisition can also fail for reasons
other than absence; package membership alone does not establish typed success.

The amount is physically a float stack word although the unchanged provisional
C signature renders an int. AL is the Boolean result; upper EAX bits are not
a meaningful UInt32 return. The consumer adds no finite-value clamp. Concrete
factory errors, wrong-interface/malformed resources, callback/lifetime races and
actual rendered model acceptance remain open. No original runtime execution or
replacement-engine gameplay test is implied.
