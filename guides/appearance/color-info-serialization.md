# ColorInfo serialization and hair palette slots

Reference: PC1.67 original package assemblies in the
[central managed identity manifest](../../evidence/managed/reference-inputs.json).
This is a static original-reader/writer comparison, not preset runtime acceptance.

## Original method evidence

The [method index](../../indexes/color-info-managed-methods.tsv) joins original
assembly/type/MethodDef tokens to complete IL and the independently generated
managed rendering. Key pairs:

- ColorInfo.Load06000250: [IL](../../evidence/managed/color-info/Sims3Metadata_ColorInfo_Load.il)
  ([managed](../../evidence/managed/color-info/Sims3Metadata_ColorInfo_Load.cs)).
- ExportNamedInstance06000246: [IL](../../evidence/managed/color-info/Sims3Metadata_ColorInfo_ExportNamedInstance.il)
  ([managed](../../evidence/managed/color-info/Sims3Metadata_ColorInfo_ExportNamedInstance.cs)).
- ResKeyTable.AddKey060009B9: [IL](../../evidence/managed/color-info/SimIFace_ResKeyTable_AddKey.il)
  ([managed](../../evidence/managed/color-info/SimIFace_ResKeyTable_AddKey.cs)).
- BinaryReader.ReadBoolean0600136D: [IL](../../evidence/managed/color-info/mscorlib_BinaryReader_ReadBoolean.il)
  ([managed](../../evidence/managed/color-info/mscorlib_BinaryReader_ReadBoolean.cs)).

## Envelope and versioned body

| Field | Original representation and condition |
| --- | --- |
| Header | Int32 version, Int32 body byte length; body begins at byte8. Writer emits version6. |
| Footer location | Reader seeks from body start by the declared length, reads keys, remembers the position after them, then returns to body start. |
| Key table | Byte count; each row is InstanceId UInt64, GroupId UInt32, TypeId UInt32, little-endian. AddKey deduplicates complete keys in first-occurrence order. |
| Usage subcategory | UInt16 only from version2. |
| Palette | Int32 count on read, UInt32 array length on write; count entries of UInt32 ARGB. |
| Fabrics | UInt32 count; per fabric a byte key index, UInt32 color count and UInt32 ARGB entries. |
| HSV bases | None before3; version3 has UInt32 count and BinaryReader strings parsed with Single.Parse; from4, UInt32 count and UInt32 values divided by1000f. |
| Favorite | One BinaryReader boolean from5. Zero is false; every nonzero byte is true. |
| Favorite content type | UInt32 from6. |

The writer's BigEndianUnicode encoding does not change integer endianness.
ColorInfo.Load uses AddKey while loading footer rows, then indexes the resulting
unique KeyList. Consequently raw footer count is not the valid fabric-index
bound. For[A,A], index1 fails; for[A,A,B], indices0/1 select A/B.

Two useful independently derived edge cases are a favorite byte2 (valid true)
and footer[A,A] with fabric index1 (invalid). These are IL-derived expectations,
not executed tests or round trips through a replacement writer.

## Hair slots and packed channels

Original Color.ARGB accessors preserve the UInt32 unchanged. The
[getter IL](../../evidence/managed/color-info/SimIFace_Color_GetArgb.il)
([managed](../../evidence/managed/color-info/SimIFace_Color_GetArgb.cs)) and
[setter IL](../../evidence/managed/color-info/SimIFace_Color_SetArgb.il)
([managed](../../evidence/managed/color-info/SimIFace_Color_SetArgb.cs)) establish
this without guessing channels from a rendered swatch.

CASHair.get_CurrColorInfo stores four indexed hair colors and makes their alpha
255: [IL](../../evidence/managed/color-info/UI_CASHair_CurrentColorInfo.il)
([managed](../../evidence/managed/color-info/UI_CASHair_CurrentColorInfo.cs)).
CASHairAdvancedDialog.OnSaveHairClick can export eight slots while populating
the first four: [IL](../../evidence/managed/color-info/UI_CASHairAdvancedDialog_OnSaveHairClick.il)
([managed](../../evidence/managed/color-info/UI_CASHairAdvancedDialog_OnSaveHairClick.cs)).
Do not require every ColorInfo resource to have exactly four entries.

## Failure and scope limits

Load returns false for versions>6, but true without decoding for versions<=0.
The resource-key constructor calls Load without propagating that Boolean as an
exception. Read failures can throw from BinaryReader, allocation, key indexing
or version3 Single.Parse. The original does not enforce exact consumption of
the declared body or all trailing resource bytes. A bounded host validator or a
palette-only projection has a different admission scope and must say so.

This closes the selected serialized layout and consumer slots. It does not
establish catalog order/precedence, package lifetime, optional frontend wiring,
all malformed-input behavior or a successful preset save/reload. No target
assembly was loaded for execution; the reconstructed C# tree was only a search aid.
