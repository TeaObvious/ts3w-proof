# Authored layout document, object and raw element names

Original PC1.67 static instruction evidence. The loader accepts a direct object
or a graph of objects. This is the native reader/factory path, not a detached DOM
schema or a claim of complete XML parser/runtime equivalence.

## Reader and cursor evidence

| Entry | Role | Original pair |
| --- | --- | --- |
| 00470F50 | XmlCursor_GetRawElementName | [ASM](../../evidence/native/functions/00470F50_XmlCursor_GetRawElementName.asm) ([actual annotated C](../../evidence/native/functions/00470F50_XmlCursor_GetRawElementName.c)) |
| 004710C0 | XmlCursor_PumpParser | [ASM](../../evidence/native/functions/004710C0_XmlCursor_PumpParser.asm) ([actual annotated C](../../evidence/native/functions/004710C0_XmlCursor_PumpParser.c)) |
| 00471150 | XmlCursor_AdvanceToken | [ASM](../../evidence/native/functions/00471150_XmlCursor_AdvanceToken.asm) ([actual annotated C](../../evidence/native/functions/00471150_XmlCursor_AdvanceToken.c)) |
| 00471370 | XmlCursor_CopyUtf16ToArena | [ASM](../../evidence/native/functions/00471370_XmlCursor_CopyUtf16ToArena.asm) ([actual annotated C](../../evidence/native/functions/00471370_XmlCursor_CopyUtf16ToArena.c)) |
| 00471470 | XmlCursor_OnStartElement | [ASM](../../evidence/native/functions/00471470_XmlCursor_OnStartElement.asm) ([actual annotated C](../../evidence/native/functions/00471470_XmlCursor_OnStartElement.c)) |
| 004717C0 | XmlCursor_InstallHandlers | [ASM](../../evidence/native/functions/004717C0_XmlCursor_InstallHandlers.asm) ([actual annotated C](../../evidence/native/functions/004717C0_XmlCursor_InstallHandlers.c)) |
| 004718B0 | XmlCursor_ConstructEntry | [ASM](../../evidence/native/functions/004718B0_XmlCursor_ConstructEntry.asm) ([actual annotated C](../../evidence/native/functions/004718B0_XmlCursor_ConstructEntry.c)) |
| 004718B9 | XmlCursor_ConstructContinuation | [ASM](../../evidence/native/functions/004718B9_XmlCursor_ConstructContinuation.asm) ([actual annotated C](../../evidence/native/functions/004718B9_XmlCursor_ConstructContinuation.c)) |
| 004B9860 | XmlParser_SetUserData | [ASM](../../evidence/native/functions/004B9860_XmlParser_SetUserData.asm) ([actual annotated C](../../evidence/native/functions/004B9860_XmlParser_SetUserData.c)) |
| 004B9880 | XmlParser_SetElementHandlers | [ASM](../../evidence/native/functions/004B9880_XmlParser_SetElementHandlers.asm) ([actual annotated C](../../evidence/native/functions/004B9880_XmlParser_SetElementHandlers.c)) |
| 004C0180 | XmlParser_CreateWithOptionalNamespaceSeparator | [ASM](../../evidence/native/functions/004C0180_XmlParser_CreateWithOptionalNamespaceSeparator.asm) ([actual annotated C](../../evidence/native/functions/004C0180_XmlParser_CreateWithOptionalNamespaceSeparator.c)) |
| 004C03A0 | XmlParser_CreateWithoutNamespace | [ASM](../../evidence/native/functions/004C03A0_XmlParser_CreateWithoutNamespace.asm) ([actual annotated C](../../evidence/native/functions/004C03A0_XmlParser_CreateWithoutNamespace.c)) |
| 0054BB10 | LayoutXml_ConstructReader | [ASM](../../evidence/native/functions/0054BB10_LayoutXml_ConstructReader.asm) ([actual annotated C](../../evidence/native/functions/0054BB10_LayoutXml_ConstructReader.c)) |
| 0054BC00 | LayoutXml_ReadObjectProperties | [ASM](../../evidence/native/functions/0054BC00_LayoutXml_ReadObjectProperties.asm) ([actual annotated C](../../evidence/native/functions/0054BC00_LayoutXml_ReadObjectProperties.c)) |
| 0054BD80 | LayoutXml_ReadObject | [ASM](../../evidence/native/functions/0054BD80_LayoutXml_ReadObject.asm) ([actual annotated C](../../evidence/native/functions/0054BD80_LayoutXml_ReadObject.c)) |
| 0054BEF0 | LayoutXml_ReadGraph | [ASM](../../evidence/native/functions/0054BEF0_LayoutXml_ReadGraph.asm) ([actual annotated C](../../evidence/native/functions/0054BEF0_LayoutXml_ReadGraph.c)) |
| 0054BFC0 | LayoutXml_ReadDocument | [ASM](../../evidence/native/functions/0054BFC0_LayoutXml_ReadDocument.asm) ([actual annotated C](../../evidence/native/functions/0054BFC0_LayoutXml_ReadDocument.c)) |

## Document and immediate grammar

0054BFC0 admits first element graph or object; another name reports2FC50001.
The direct-object arm invokes0054BD80 and appends the resulting object.
0054BEF0 accepts an immediate graph end without requiring a child and appends
successful objects in encounter order. Every immediate graph element is compared
to object.0054BC00 similarly compares immediate object elements to prop; these
are actual cursor-name comparisons, not searches which silently skip unknown tags.

0054BD80 requires clsid, obtains the selected factory interfaceEE3F516E and
fails with2FC50002 if the class cannot be constructed. Supplied clsid/id use
imported wide unsigned conversion with radix0 and null end-output. An absent
object ID instead uses loader generation state. Class identity, object/export
identity, custom-control identity and live object pointers are distinct.
Property failure returns null; sequential descriptor writes can already have
changed object storage. This does not establish whole-layout rollback, arbitrary
factory replacement, pending-reference completion or an XML authoring writer.

The selected property/array/descriptor contracts are in
[authored properties](authored-window-properties.md),
[value arrays](authored-value-arrays.md) and
[Caption text input](authored-caption-text-and-resource-key-input.md).
They do not imply generic property/struct/value namespace equivalence.

## Actual lexical element-name producer

0054BB10 constructs the cursor through004718B0/004718B9. Its actual path calls
004C03A0 with0. That wrapper passes a null namespace-separator stack argument and clears the
hidden EAX allocator-suite input before calling004C0180. Its three stack words
are encoding, optional separator and optional shared context; caller cleanup is
12bytes. A normal three-argument cdecl prototype would omit the live EAX input. Parser namespace mode+EC starts0 and remains0 on the null branch;
the separate nonnull separator branch sets it1. This proves the selected loader
uses the non-namespace creation path without requiring a whole Expat port.

004717C0 installs cursor userData with004B9860 and start/end callbacks with
004B9880. Start callback00471470 passes the delivered UTF16 name to00471370 and
stores its returned pointer into token+8. That copy consumes the full NUL-ended
UTF16 name without colon removal, prefix stripping or URI expansion.00470F50
returns the same pointer.00471150 advances buffered tokens and004710C0 feeds
more input through the actual parser when required.

Thus an unprefixed graph under a default namespace declaration still has the
lexical name graph. A declared p:graph has lexical name p:graph and does not equal
graph. The same distinction applies to immediate object/prop comparisons.
An XElement namespace URI/LocalName alone cannot reconstruct which original
prefix spelling was supplied. No prefix heuristic, namespace URI rejection or
new namespace exception follows from this evidence.

## Ownership, physical ABI and limits

004718B0 owns only9bytes/4instructions and flows into the separately owned
004718B9 continuation(124bytes/49instructions). The earlier entry's actual C
crosses that boundary; the two owned bodies are not silently merged. The continuation inherits EAX,
EBX, condition flags and the entry's saved-EBX stack word, and has no direct
call reference. Its inherited-register/stack rendering remains annotated as
a continuation rather than given a fabricated independent conventional ABI.
00471470 owns74+254bytes separated by six nonowned bytes; the gap is not counted
as instructions.00471370's physical EAX pointer return through RET4 is consumed
by the callback even when older inferred metadata displays void.0054BD80 has
an explicit UInt32 object-ID output pointer at stack+4 and RET4; its old
no-stack fastcall rendering incorrectly exposes that output as a local.
004710C0/00471150/0054BC00/0054BEF0 return meaningful AL only, whereas0054BFC0
returns a full UInt32 status: zero on success or reader+5C on failure.

The selected constructor/Create/registration/name-copy chain owns1676bytes,
and getter/advance/pump add250bytes; all were passively matched to the identified
pristine executable. Original class/provider/allocator/refqueue ordering,
parser DTD/entity/encoding/CDATA/error service and all native memory-failure
semantics are separate boundaries. The wrapper at0054C210 was not a defined
containing Function in the inspected database: raw calls54C242/54C24B are bounded
caller evidence, not a fabricated complete owned export. No original execution
or loaded UI outcome is claimed.

## Complete selected evidence and actual C limits

The17 complete selected owned Listings total3453bytes and1245instructions.
All owned bytes and complete original/modified imported FileBytes match the
identified pristine reference. The six-byte714BA..714BF envelope gap is excluded.
The original pairs retain actual annotated Ghidra C. Instruction annotations
not rendered inline by this decompiler are read directly from the Ghidra database
and embedded as comments inside that same C file, together with its entry plate.
No alternate pseudocode translation or separate annotation sidecar is substituted.

The constructor-entry C follows its physical fallthrough beyond the nine-byte
owned entry; its ASM remains the separate nine-byte owned Listing. Continuation
C retains inherited EAX/EBX/flags and stack aliases.4C0180 prints a cdecl-shaped
parameter list, while its actual custom storage assigns allocatorSuite to EAX
and only the other three words to the stack.54BD80 retains a puStack_c alias
despite its corrected explicit output-pointer prototype: unchecked indirect-call
stack inference still obscures the matching argument in C. The original caller
pushes, stack loads and RET4 establish that output; they are not rewritten in C.
Unexpanded allocator, factory and notification callback formal counts remain
opaque. Those residual artifacts do not invalidate the raw QName producer chain
or establish complete native object-factory and pending-reference parity.
