# Visual proxy stream versions

Selected static evidence from the centrally identified original PC 1.67
executable. Function names and field roles are analyst assignments. No original
game execution or Medieval native serializer is established by this evidence.

`VisualProxyResource_ReadStream` takes ECX resource and one stack stream, returning
a Boolean in AL. The unsigned comparison `(version - 1) <= 3` accepts precisely
versions 1, 2, 3 and 4. Version 5 is rejected.
[ASM](../../evidence/native/functions/0093C270_VisualProxyResource_ReadStream.asm) ([annotated pseudocode](../../evidence/native/functions/0093C270_VisualProxyResource_ReadStream.c)).

| Field | Versions 1–2 | Versions 3–4 |
| --- | --- | --- |
| Resource table header after version | Absent | Relative offset and extent, read through the shared helper |
| Entry count | Byte | Byte |
| Entry type 0 | Byte ID, byte key count, inline keys | Byte ID, byte key count, DWORD table indices |
| Entry type 1 | One inline key; memory ID becomes `0xFF` | One DWORD table index; memory ID becomes `0xFF` |
| Inline key order | UInt64 instance, UInt32 type, UInt32 group | Not used |
| Table key order | Not used | UInt32 type, UInt32 group, UInt64 instance |
| Bounds | One byte followed by six float-bit DWORDs | Same |
| Additional bounds word | Absent | Only version 4: DWORD into resource `+0x60` |
| Modular suffix | Absent in v1; byte and optional inline key in v2 | Byte and optional DWORD table index |

The six bounds DWORDs populate resource offsets `+0x38` through `+0x4C`.
The optional modular key populates `+0x50` through `+0x5C`. Entry order and all
key words are retained. Resource-type meaning of an entry is a later consumer;
this reader does not require the modular key to be an FTPT.

The shared table helper requires a nonzero relative offset, skips table loading
when extent is zero, otherwise seeks, reads a counted table and restores its
stream position. Its extent is **not** an exact byte cap. This distinction matters
when comparing a bounded host parser with native behavior.
[Table-helper ASM](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.asm) ([annotated pseudocode](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.c)).

Every indexed entry and indexed modular key uses an unsigned bounds check against
the temporary table count. Invalid indices return AL zero through cleanup.
Unsupported entry discriminators fall through the native switch, rather than
throwing a host-format exception. Counts allocate and mutate the live resource
before completion. Several stream calls accumulate status without a final status
test at the success return; AL one must not be interpreted as atomic, complete
validation of malformed input. Both paths release temporary table storage and
reader auxiliary state.

The actual function owns two instruction ranges, `0093C270..0093C497` and
`0093C4A0..0093C7A2`; the gap is not part of its saved Listing. Decompiled pointer
and stack-slot types are inferred; repeated temporary aliases do not establish
additional serialized fields.

Medieval version 5 needs its own original reference. Reusing this function's
accepted grammar or changing its version comparison is not evidence for that
version's suffix, slot format, footprint format or gameplay behavior.
