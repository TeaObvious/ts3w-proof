# Original catalog categories and preset thumbnail key

Selected complete original PC1.67 SimIFace enum declarations and one getter body.
The [central assembly identity](../../README.md) applies. Numeric FieldDef constant
metadata, not renamed project enum labels, establishes flags/underlying signedness.
Original types are separate from the current Core public metadata projections.

- [Actual ILSpy enum excerpts](BuildBuyProduct.enums.cs) pair with [all94 field rows](enum-fields.tsv):90 literal constants and four underlying value__ fields. The original WallFlags is signed Int32; the other three selected enums are UInt32. Current None/Flags additions, renamed Landmark8000 and omitted selectors are not original declarations.
- [Method index](method-index.tsv) pairs the complete58-byte getter [original CIL](BuildBuyPreset.KeyForThumbnail.il.txt) with [actual ILSpy C#](BuildBuyPreset.KeyForThumbnail.cs). [Call operands](call-edges.tsv) and [field operands](field-access.tsv) use exact same-module tokens. The original property preserves instance/type and merges high group byte with low24 presetID bits.

Original local signature token1100000D/maxstack5 and raw header/method instructions
were checked against the file-backed method. Other BuildBuyProduct/BuildBuyPreset
members are outside this selected evidence; no execution/runtime ordering, native
cache wire format, filesystem discovery policy or rendering readiness is implied.
