# Authored value-array slots and error admission

Original PC1.67 TS3W.exe SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Static instruction/producer evidence; no original-target or product execution.

| Existing original responsibility | Complete actual evidence |
| --- | --- |
| Authored array reader0054B1F0:271instructions/812bytes | [ASM](../../evidence/native/functions/0054B1F0_LayoutXml_ReadAuthoredArray.asm) ([actual annotated C](../../evidence/native/functions/0054B1F0_LayoutXml_ReadAuthoredArray.c)) |
| Authored property producer0054B600:291instructions/797bytes, refreshed actual C | [ASM](../../evidence/native/functions/0054B600_LayoutXml_ApplyAuthoredProperty.asm) ([actual annotated C](../../evidence/native/functions/0054B600_LayoutXml_ApplyAuthoredProperty.c)) |

The array reader receives ECX loader and one stack DWORD pointing at the prepared
value-buffer descriptor. All five exits pop4bytes; status is AL only. Descriptor
+0 is native type metadata, +4 current payload pointer, +8 declared count; metadata
+8 supplies element stride. Physical inputs remain those of the existing body.

The cursor uses loader+98. A start child must have exact UTF16 name `value`.
Before reading it, zero-based index must be below declared count. An optional
`type` must resolve through the existing exact type lookup and compatibility
helper. Present `key` selects resource resolution exclusively; otherwise selected
`value` attribute or child text/empty text goes through the scalar converter.
The keyed callback receives current element buffer, authored child type (zero
when omitted), and parsed key. Failed providers report2FC50009 and continue.
Missing/failed key resolution can leave the destination unchanged. Resource
acquisition, provider retention and full cursor implementation remain actual
callee boundaries, not inferred pointer admission.

At the common value completion, payload advances by exactly one native stride
and index increments once. Null/unresolved data is not compacted; later data is
not mirrored into slot0. At the closing node, index must equal declared count.
Too many/too few values report2FC50007 and return AL0. Unknown child/cursor/type
name errors have separate AL0 paths. Incompatible type or selected scalar failure
can report an error, skip the child and return AL1 immediately; AL1 does not mean
that every declared element was written. No blanket rollback follows from this
status. The producer0054B600 tests AL at0054B849 after its direct call0054B844.

The [selected32 literal bytes](../../evidence/native/data/ui-authored-value-arrays.txt)
are `value`, `type`, `key` and empty UTF16, including terminators. Other constants
are instruction immediates. Actual C retains a type-propagation warning and local
aliases around unresolved foreign helpers. Physical instruction roles/AL branches
are authoritative; no unrelated helper prototype was guessed to clean the C.

## StdDrawable's indexed bank

The existing [drawable/image lifetime reference](drawable-image-references.md)
closes constructor0053E640's two zeroed eight-image banks, startup00F80F70's
count8 image descriptor and typed writer0051A5D0's exact per-slot publication.
[State selection](../../evidence/native/functions/0053DC40_UiStdDrawable_SelectStateImage.asm) ([actual C](../../evidence/native/functions/0053DC40_UiStdDrawable_SelectStateImage.c)) then reads the matching
row/fallback chain. Together these establish independent slots: an absent base
row is not filled from hover/active/disabled/checked rows. They do not establish
that any particular unresolved resource key is a live image pointer, nor close
all layout/resource reader error and publication paths.

Both complete owned bodies are contiguous,562instructions/1609bytes total.
The existing0054B600 assembly is unchanged. All owned instruction/data bytes
match pristine original FileBytes; no body, Listing, byte, reference, type or
unrelated metadata change is part of this bounded annotation scope.
