# Authored Model bounds and insertion flags

PC1.67 static; analyst names and actual saved annotated C/full owned Listing.

9492B0 uses ECXModel+pointer to16byte model key, RET4, void. On changed full key,
it stores all key words BEFORE attempting the736884F1 proxy query. Only success
replaces Model+60/+70 Float4 bounds; failure retains prior bounds. It publishes
key and bounds commands73477A1C/70F3BE97, notifies owner and releases temporaries.
This establishes authored proxy authority and retained replacement failure, not
a fallback box computed from mesh vertices or an original lot-wide loading batch.

93B930 is cdecl(keyPointer,output8Floats,auxWordPointer), RET, BooleanAL. Provider
virtual0C receives key, outputresource and four zero words. Success requests typed
interfaceB7B8BAAF, retains it, copies view+38/+3C/+40 as minXYZ with minX duplicated
in W, and+44/+48/+4C as maxXYZ with maxX duplicated in W; auxDWORD comes from+60.
It releases view/resource. Provider missing/failure returns false without writing
caller output. A successful provider with missing typed view reaches an unsafe
native dereference; universal malformed-block safe behavior is not established.
This is a typed resource-view query, not the parser for all VPXY serialized versions
or provider file priority. Those child implementations remain separate static leads.

948D90 physically uses ECXModel plus ONE unused DWORD stack word, RET4; lowALalways1.
The previous fastcall1 prototype omitted the stack word purged by the original RET.
Its live-component branch is selected by runtime token011EA0FC; the entire mapping
to authored catalog component hashes is not inferred from that load alone.
Ordinary branch subtracts max-min withSUBPS, forms absolute extents by MAXPS(-size,size),
and compares with exact epsilon34000000. Only low3 comparison bits matter.
If all three extents are at most epsilon, it skips setting the flag. Otherwise
binary32 MULPS computes X*Y then*Z, and COMISS compares exact threshold3C03126F
against volume. JBE skips equality, greater volume and unordered. Otherwise it
sets Model+50 bit800 and refreshes. Invalid inverted/NaN domains and the special
live-component branch are not universal host finite-box equivalence.

[Exact original constants](../../evidence/native/data/model-bounds-insertion-constants.tsv)
retain epsilon, minus-one and volume threshold. Their address/bytes match the
pristine reference and selected Ghidra memory; no redundant function checksums.

## Canonical original bodies

- ModelComponent_ApplyResourceBoundsChange: [ASM](../../evidence/native/functions/009492B0_ModelComponent_ApplyResourceBoundsChange.asm) ([pseudocode](../../evidence/native/functions/009492B0_ModelComponent_ApplyResourceBoundsChange.c)).
- ModelComponent_ApplyInsertionBoundsFlags: [ASM](../../evidence/native/functions/00948D90_ModelComponent_ApplyInsertionBoundsFlags.asm) ([pseudocode](../../evidence/native/functions/00948D90_ModelComponent_ApplyInsertionBoundsFlags.c)).
- ModelBounds_QueryAuthoredProxy: [ASM](../../evidence/native/functions/0093B930_ModelBounds_QueryAuthoredProxy.asm) ([pseudocode](../../evidence/native/functions/0093B930_ModelBounds_QueryAuthoredProxy.c)).
