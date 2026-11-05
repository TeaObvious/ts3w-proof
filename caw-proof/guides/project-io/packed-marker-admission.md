# Packed-world marker admission

This selected original CAW boundary distinguishes a packed-world query from complete editable-project validation. The [CAW module identity](../../README.md#original-module-identities) and [original import](../../api/Sims3Common/WorldWrap/2675.md) identify the reference.

## Original caller and result width

The export entry is exactly a five-byte JMP; following INT3 bytes are padding. [Export instructions](../../evidence/native/Sims3Common/functions/109981C0_WorldWrap_IsSinglePackedWorldFile.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/109981C0_WorldWrap_IsSinglePackedWorldFile.c)). Ghidra expands the tail target in that C rendering; its plate distinguishes those instructions from the export entry.

`WorldWrap_IsSinglePackedWorldFile` at `0x109981c0` tail-jumps to `0x10233b20`. The target has one cdecl LPWStr stack argument and a meaningful AL boolean, with plain RET. Original `CSHostWrap:0x06000502` marshals the result as U1; `0x06000577` directly calls it. [Complete target instructions](../../evidence/native/Sims3Common/functions/10233B20_CAW_IsSinglePackedWorldFile.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/10233B20_CAW_IsSinglePackedWorldFile.c)).

The path guard `0x10910a60` is tested in AL. A false result returns false before constructing the local reader. Otherwise BL starts as one. Failed preparation (`0x1070b2b0`) or failed open (`0x1051ff80`, arguments1,6,0) retains that one. These selected calls do not establish every filesystem or malformed-package error category.

After admitted preparation/open, the function creates the exact physical key words `[1,0,0x0477bd6a,0]`: instance1,group0,type0477BD6A under the original resource-key layout. It calls `0x1051fc60` with ECX localreader and six stack words:

| Argument | Supplied value |
| --- | --- |
| key16 | Pointer to those four DWORDs |
| streamOut | NULL |
| requestedMask |1|
| modeWord |6|
| optionsWord |1|
| metadata16Out |NULL|

A true probe result clears BL; false leaves BL one. The selected admitted path therefore returns the inverse probe result. Cleanup calls are retained in the complete body: `0x1051efa0` after that probe path and `0x1051ed50/0x1051f1e0` after construction. Their full ownership semantics remain separate child contracts. Only AL is assigned to the final result; upper EAX is incidental.

## Probe-only versus stream-read behavior

`0x1051fc60` receives ECX reader and **six physical stack words**, with `RET0x18` on its return paths. [Complete reader instructions](../../evidence/native/Sims3Common/functions/1051FC60_CAW_PackedResourceFindOrRead.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/1051FC60_CAW_PackedResourceFindOrRead.c)).

It admits mode exactly3 or6. Under the local critical-section calls, reader DWORD`+0x14` must be nonzero and contain all requested-mask bits. Virtual slot`+0x28` of the object at reader`+0x70` receives the key pointer; nonnull row becomes the probe boolean. Exact key-comparator implementation remains an unexpanded static question.

If supplied, metadata output receives row DWORDs0/4/8 and zero-extended WORD`+0x0c`. This metadata copy is independent of whether a stream was requested. At `0x1051fcee`, the actual stack slot tested is `streamOut`, entrySP`+0x08`.

**With streamOut NULL, the function releases its local critical section and immediately returns the row-presence boolean.** It does not read the marker payload, test its size, require zero bytes, count duplicates, validate sidecar ownership, apply later row-sentinel checks or construct a stream on this path. No caller can turn those absent checks into original behavior merely by naming the operation a packed-world test.

With nonnull streamOut, the remaining body checks row availability/sentinel fields and follows cached or allocated record-read paths. Row WORD`+0x0c` and options bit0 choose a later alternative path labelled `DecompressedRecordData`; its child codec is not expanded here. Only paths reaching final stream publication write streamOut (includingNULL on constructionfailure). Mode/access/missing-row/sentinel early rejects leave that output unchanged; optionalmetadata may already have been written before a later sentinel rejection. The final publication boolean reflects stream construction. The original marker caller supplies NULL and never enters those branches.

## Evidence limits

The selected bodies establish the physical key, AL result, early-error/default paths and probe/read split. They do not establish complete package validity, duplicate-key admission, per-index exact matching, open failure categories, stream ownership or decompression algorithms. The [selected direct calls](../../evidence/native/Sims3Common/packed-marker-calls.tsv) retain those unexpanded boundaries. No original editor execution or malformed-file test is claimed.
