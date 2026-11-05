# Ghost LOD shader substitutions

Original PC1.67 TS3W.exe. Analyst name describes observed instructions, not a
recovered source symbol. [Full961-byte/235-instruction ASM](../../evidence/native/functions/00696860_GhostFixup_RebuildLodShaderOverrides.asm) ([actual annotated Ghidra C](../../evidence/native/functions/00696860_GhostFixup_RebuildLodShaderOverrides.c)).
Entry00696860 is pointed to by00FF3C30+10. Its owned body ends at00696C20;
15alignment bytes00696C21..2F are excluded, next function starts00696C30.

## Physical call and state transitions

ECX is the fixup owner. Four DWORD stack arguments are supplied; all three
success exits and the clone-failure exit use RET10hex. Only AL is the boolean
result. Decompiled undefined4, CONCAT31 and stale upper EAX do not establish a
32bit return payload. The retained inferred prototype has five parameters when
its auto-this parameter is counted; that is not five physical stack words.

When owner+8 is zero, a nonnull cached source at owner+C is transferred to the
output and the cache cleared. Otherwise the supplied LOD is returned and its
virtual+0 invoked. Nonzero style initializes a seven-entry parameter override
and inserts15 shader replacements. Source byte+72 selects a virtual+0 plus
apply-in-place path, or a clone path. The clone path calls original
ModelLOD_CloneWithMaterialSubstitutions006DB3D0; failure invokes virtual+4 on a
partial result when present, cleans temporary substitutions and returns AL0.
Success passes source to008C8D00 with owner+C, then publishes the result pointer,
invokes result virtual+0 and releases the local through virtual+4. These slots
are inferred retain/release; helper internals and source flag semantics remain
unexpanded. Apply-in-place006DB170 and clone have their own contracts.

## Exact shader key map

| Authored UInt32 shader keys | Replacement UInt32 key |
| --- | --- |
| 1C608236,548394B9,53881019,9EFF872B,01772897,5A81F684 | EFCD14BE |
| CF8A70B4,5EDA9CDE,B51EC997 | 8C88B4A8 |
| 84FD7152,9D9DA161,FCF80CE1,A7B368FB | 00C394A6 |
| A78F71C4 | E73CDE21 |
| 05F75EF1 | BBD4CD0D |

Only these keys are inserted by this function. Constants are raw32bit hashes,
not signed ordinals. Seven refers to parameter overrides, not shader map size.
The parameter builder00696560, flag-based height producer00694C80 and startup
initializer00694FD0 remain separate. This function does not establish their
complete table values or shader equations. A virtual dispatch is the verified
consumer edge; unrelated model/death gameplay decisions are not inferred.

## Related boundaries and limits

[Ghost request/style projection](../objects/ghost-appearance-request.md) establishes
raw type/flag transport and unsigned style admission. [Rectangle transfer](rectangle-transfer.md)
establishes selected original scene copy arithmetic. Those mechanisms do not
close full ghost drawable timing, original clocks, model height offset, native
shader arithmetic, GPU completion or rendered appearance. Original memory bytes
remain pristine; this is static evidence, without target/runtime execution.
