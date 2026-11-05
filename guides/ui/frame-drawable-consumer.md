# FrameDrawable state selection, drawing and property helpers

This bounded static PC 1.67 reference connects packed-state selection and drawing-command production to the Frame representation, selected property metadata and two shared memory helpers. It preserves the actual saved Ghidra C, including its incorrect projections. No original runtime rendering, reopen-persistence test or complete UI lifetime protocol is claimed.

The existing [registered bridge ASM](../../evidence/native/ui/frame-drawable/0077D320_ScriptCore_UIManager_UIManager_FrameDrawableGenericImpl.asm) ([C](../../evidence/native/ui/frame-drawable/0077D320_ScriptCore_UIManager_UIManager_FrameDrawableGenericImpl.c)) and [initializer ASM](../../evidence/native/ui/frame-drawable/00523830_InitializeFrameDrawable.asm) ([C](../../evidence/native/ui/frame-drawable/00523830_InitializeFrameDrawable.c)) remain the canonical pairs. The [storage/managed guide](frame-drawable-dispatch.md) establishes their boundaries and original registration. **77D320 still has singleton metadata and zero Listing instructions**; its separately qualified 124-byte/40-instruction original CFG, 16-byte table and padding are not a repaired function definition.

## Six complete existing owned bodies

Names below are analyst-assigned roles actually read back from the saved database. They do not imply repaired types or calling conventions.

| Operation | Exact existing ownership | Canonical evidence |
| --- | --- | --- |
| `FrameDrawable_SelectStateRow`, 522C50 | 137 bytes / 46 instructions | [ASM](../../evidence/native/ui/frame-drawable-consumer/00522C50_FrameDrawable_SelectStateRow.asm) ([actual C](../../evidence/native/ui/frame-drawable-consumer/00522C50_FrameDrawable_SelectStateRow.c)) |
| `FrameDrawable_Draw`, 522DC0 | Four disjoint ranges, 2,558 bytes / 689 instructions | [ASM](../../evidence/native/ui/frame-drawable-consumer/00522DC0_FrameDrawable_Draw.asm) ([actual C](../../evidence/native/ui/frame-drawable-consumer/00522DC0_FrameDrawable_Draw.c)) |
| `FrameDrawable_GetPropertyContext`, 522D90 | 38 bytes / 12 instructions | [ASM](../../evidence/native/ui/frame-drawable-properties/00522D90_FrameDrawable_GetPropertyContext.asm) ([actual C](../../evidence/native/ui/frame-drawable-properties/00522D90_FrameDrawable_GetPropertyContext.c)) |
| `NativeStructProperty_WriteFields`, 511A10 | 134 bytes / 54 instructions | [ASM](../../evidence/native/ui/property-descriptors/00511A10_NativeStructProperty_WriteFields.asm) ([actual C](../../evidence/native/ui/property-descriptors/00511A10_NativeStructProperty_WriteFields.c)) |
| `AllocateWithAllocatorHeader`, 5050B0 | 85 bytes / 36 instructions | [ASM](../../evidence/native/memory/allocator-header/005050B0_AllocateWithAllocatorHeader.asm) ([actual C](../../evidence/native/memory/allocator-header/005050B0_AllocateWithAllocatorHeader.c)) |
| `FreeWithAllocatorHeader`, 505080 | 42 bytes / 17 instructions | [ASM](../../evidence/native/memory/allocator-header/00505080_FreeWithAllocatorHeader.asm) ([actual C](../../evidence/native/memory/allocator-header/00505080_FreeWithAllocatorHeader.c)) |

Every owned instruction and original byte is retained. Draw owns half-open ranges `[522DC0,52325D)`, `[523260,52330D)`, `[523310,5233C6)` and `[5233D0,5237CE)`. The three gaps total 16 bytes and are not added; the last contains a jump/alignment sequence not reached by this entry's decoded CFG. The following eleven-DWORD style table at5237D0 and the selector's four-DWORD table at522CDC are separate data. [Selected data, original offsets, branch tables and bounded code contexts](../../evidence/native/ui/frame-drawable-consumer/followup-data.json) preserve those distinctions. This union is actual metadata ownership, not a next-entry window or a semantic-completeness claim for its callees.

The C files retain their exact genuine exported suffixes. Current DB instruction comments omitted by the decompiler are carried in explicitly addressed blocks before those suffixes. Their placement does not imply corresponding inline C statements. Function heads remain the actual rendered database comments. No synthetic call arguments, variable substitutions or cleaner replacement C were inserted.

## Packed state and borrowed rows

The selector receives complete receiver ECX and a packed UInt32 at entry ESP+4. It returns an interior eight-byte style/color row in EAX and uses RET4. Low three bits select base modes0..3; unsigned modes4..7 return Normal unconditionally. Mask08 enables checked variants; other bits are ignored. This native flag is distinct from managed storage ordinal4 for CheckedNormal.

| Base mode | Mask08 clear | Mask08 set, in order |
| --- | --- | --- |
| 0 Normal | Normal+C | CheckedNormal+2C, Normal+C |
| 1 Disabled | Disabled+14, Normal+C | CheckedDisabled+34, Disabled+14, Normal+C |
| 2 Highlighted | Highlighted+1C, Normal+C | CheckedHighlighted+3C, CheckedNormal+2C, Highlighted+1C, Normal+C |
| 3 Active | Active+24, Normal+C | CheckedActive+44, CheckedNormal+2C, Active+24, Normal+C |

Every candidate before Normal requires a nonzero style DWORD. Its color is not tested. Normal is returned without testing its style, so a zero non-normal style is a fallback sentinel while a nonzero style/color0 remains selected. The pointer aliases receiver storage: no allocation, copy, retain or ownership transfer occurs. Local null/capacity checks are absent; receiver validity belongs to the caller.

## Physical drawing inputs and pre-dispatch effects

Primary-vtable slotFBD978 contains522DC0. The retained original caller [514640 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00514640.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00514640.c)) optionally invokes the Window+204 drawable through virtual+10. Besides ECX receiver it passes three physical stackarguments:

| Entry position | Meaning at the retained caller |
| --- | --- |
| ESP+4 | DrawContext |
| ESP+8 | Four Float32 bounds `{0,0,width,height}` |
| ESP+C | Four words `{Window[+78],0,Window[+200],Window[+1FC]}` |

Width/height are Window bounds differences. This is the immediate producer, not a complete contract for those Window writers. Eight exits use RET0C. The raw C has only two explicit stackarguments and aliased pointer/float locals; it is not a recovered physical ABI.

Draw selects renderer0/control0 through retained [50EC40 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0050ec40.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0050ec40.c)). That helper supplies the embedded builder; concrete backend targets and lifetime remain separate. Draw uses builder virtual+4/+38, passes physical third-context word0 to the state selector, and reads Float32 receiver+4C/+50/+54/+58 as opposing extents.

For each axis, an ordered extent sum greater than the Float32 span enters the clamp sequence. Original x87 instructions load that span, multiply by Float32 constant0.5, store a binary64 call argument and call the PE import thunk for `MSVCR80.dll!floor`. The returned x87 value is stored as Float32 **without popping**. FCOMIP compares the original first extent with the retained result. An ordered above branch selects the Float32 scratch; otherwise it selects the original extent. The opposite extent becomes Float32 `span-selectedFirst` by SUBSS. This is a cap/remainder operation, not proportional scaling.

The actual instructions and raw literals govern x87 retained precision, narrowing, SSE rounding, signed zero and exceptional values. If execution continues with unordered flags, COMISS/JBE skips the clamp and FCOMIP/JA does not take its ordered-above branch. This is not a finite/nonnegative validation or a general safe algebraic rewrite.

Style9 shrinks the outer rectangle by one; style10 shrinks the later inner outline rectangle. Nonzero third-context word+8 issues an optional builder fill **before** style dispatch. Draw then reads selected-row+4 color and makes four calls to50F1E0 with the raw color, alpha-only/alpha|00FFFFFF words and Float32 factors near0.2/0.6. Hidden or out-of-range style therefore does not mean the whole dispatcher has no earlier effects.

| Style values | Bounded branch behavior |
| --- | --- |
| 0 Default / 2 Solid | Four virtual+38 rectangle calls. |
| 1 Hidden / unsigned values above10 | Shared epilogue after the preamble and optional fill. |
| 3 Dotted / 4 Dashed | Common patterned loops; factor1 versus3. |
| 5 Inset / 6 Outset | Separate argument arrangements to5112F0. |
| 7 Groove / 8 Ridge | Two bands; style8 swaps paired color-array arrangements. |
| 9 OutsetOutline / 10 InsetOutline | Separate shaded arrangements plus width1.0 outline through522CF0. |

Patterned loops have no local positive/finite-step validation or iteration cap. Their termination for degenerate inputs is not promised. Helper channel arithmetic, concrete builder command targets, clipping, resource release and actual pixels are outside this package. Named helper calls in the genuine C do not silently establish those dependencies.

## Three current Draw holds

The observed current names `drawBuilder` and `availableVerticalSpan` are retained. Three other dispositions remain open:

| Current identity | Established machine role and contrary C projection | Disposition |
| --- | --- | --- |
| `piVar1`, reported `EAX:4`, `int *` | Selector row address; the C also uses it for original receiver+5C and a Float32 geometry argument. | Whole HighVar held; no row-only or mixed-role rename. |
| `uVar9`, reported `Stack[-0x80]:4`, `uint` (earlier source identity `uVar10`) | Raw selected color; the C also uses it for a Float32 geometry argument. | Whole HighVar held; no color-only rename. |
| `dVar8`, reported `ST0:10`, `double` | Two nonoverlapping floor-half-span results have the same semantic role. | Requested `flooredHalfSpan` was reported successful but not observed. Underlying DB effect remains unknown; no replay. |

Let `B=entryESP-78hex` after the normal prologue. The receiver is saved atB+14, the row atB+10. On outline paths the receiver is reloaded while five caller-clean helper words remain, so `[ESP+28]` is the original receiver; the next load is receiver+5C. It is not selected-row+5C.

The fourth solid rectangle call is displayed as `(unaff_EBP,unaff_ESI,uVar9,piVar1)`. Original5231AE..5231D7 instead prepare four Float32 geometry words, in argument order fromB+40/B+3C/B+30/B+44. The last two displayed held identifiers are outer-right and inner-bottom projections. This does not mean the machine passes pointer/color bits as coordinates. Patterned paths reuseB+10/B+14 for other coordinate lifetimes on disjoint branches. Printed storage alone is not a universal symbol identity.

This ledger uses the caller-expected cleanup4/16 for builder virtual+4/+38; Draw supplies those arguments without caller ADDs. Actual concrete target bodies and their cleanup/lifetime rules are not proved here. No HighVariable split, ABI/type correction or complete name maintenance is inferred. Two whole-variable roles and one technically unobserved name remain open; no complete name-maintenance claim follows.

## Concrete property context and selected managed bridge

The existing [original FrameDrawable IL](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.FrameDrawable.il.txt) ([C#](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.FrameDrawable.cs)) identifies BorderWidth ID030D0000 and OutlineColor ID030D0002. The [selected original forwarding/import IL](../../evidence/native/ui/frame-drawable-consumer/managed/selected-property-bridge.il.txt) ([C#](../../evidence/native/ui/frame-drawable-consumer/managed/selected-property-bridge.cs)) retains exactly12 relevant methods: four UI forwarders, four ScriptCore wrappers and four import declarations. [Selection/provenance](../../evidence/native/ui/frame-drawable-consumer/managed/selection.json) ties them to the already identified original S3SA assemblies. C# diagnostics remain; original IL governs tokens and operands. A null managed manager can fail before native admission; static interface forwarding does not prove runtime implementation selection.

Original registration records connect the selected ScriptCore imports to Rect getter77BAC0/setter77B950 and UInt32 getter77B670/setter77D820. The existing frontend proofs are reused: [Rect getter ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0077bac0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0077bac0.c)), [Rect setter ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0077b950.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0077b950.c)), [UInt32 getter ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0077b670.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0077b670.c)), [UInt32 setter ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0077d820.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0077d820.c)). The Rect getter artifact is an explicitly bounded240-byte legacy window:225 local code bytes/73 instructions and15CC padding, not a newly established function ownership range. Those retained native frontends queryEEC58382 and invoke virtual+10 to get the property context before generic descriptor lookup. For the concrete Frame provider, query522C10 returns completeobject+4 forEEC58382. The secondary vtableFBD950+10 points to522D90.

`FrameDrawable_GetPropertyContext` thus receives the **secondary** ECX pointer, not the complete receiver, and writes four DWORDs `{FBD910,ECX-4,1,classId}`. Its virtual+14 result is linked by the original secondary vtable to the bounded class-ID candidate522C40, returning030D54B9. It uses RET4; no semantic EAX result is established. The output aliases the complete object, without allocation/retain/ownership transfer. Pointer validity is a caller obligation.

The data file contains selected original code contexts for query522C10, address adapter51A5A0 and class-ID candidate522C40. These are explicitly qualified byte contexts, **not** new function definitions or invented ASM/C pairs. The property-query ID EEC58382, state-storage query ID030D54AC and class ID030D54B9 remain distinct. The retained generic [lookup ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00511ca0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00511ca0.c)), [reader ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00511aa0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00511aa0.c)) supply the selected descriptor search/read path; this package does not duplicate those pairs.

Frame class metadataFBD910 has size60hex and three20-byte property rows:

| Property | Offset/count/tag low12 | Selected path |
| --- | --- | --- |
| BorderWidth030D0000 | +4C / 1 / 14 | Address callback51A5A0 viaFBC0AC; metadataFBCDE0 describes16 bytes/four primitive rows. |
| Hidden state rows030D0001 | +C / 8 / 14 | Address callback523800 viaFBD880; nested8-byte style/color metadata. Callback/lifetime completeness remains separate. |
| OutlineColor030D0002 | +5C / 1 / 09 | Direct four-byte primitive metadataFBB960. |

The four BorderWidth subrows atFBCD90 have signed offsets0/4/8/C, tag0B/count1 and no overrides; primitive metadataFBB920 has size4. The selected native consumer reads the corresponding +4C/+50/+54/+58 cells as opposing Float32 extents. OutlineColor travels through managed Color.ARGB/UInt32 forwarding and the native direct DWORD cell+5C. The original native defaults remain raw1.0 andFF000000. This package does not add complete SimIFace type output or claim a universal managed layout/NaN roundtrip or initialized-output failure result from these12 methods alone.

## Field writes and allocator-header protocol

`NativeStructProperty_WriteFields` receives three caller-clean stackwords: destination value/context, source value/context and allocator. Destination word0 selects metadata with row pointer+C/count+10. The walker advances20-byte descriptors, skips flag8000 and low12-bit tag1, and constructs temporary input `{type0,sourceBase+signed16(row+E),rowCount}` for the existing generic descriptor writer. AL0 stops immediately after the first failed field write; previous writes are not rolled back. Zero fields/all skipped return AL1. Upper EAX is inherited, not normalized to a complete32-bit success result. Pointers, counts and signed offsets are trusted locally. The walker supplies neither whole-struct memcpy nor atomicity and has no direct allocator/refcount/notification operation; delegated writers retain their own contracts.

For the selected BorderWidth metadata this gives four primitive4-byte subfield writes in descriptor order through the existing generic writer. Hidden-state style tag05 has separate callbacks5402E0/540320; their parser/temporary lifetime and complete ownership are not inferred from this field walker or the nested descriptor data. Other property notifications and frontend failure policies are also separate. The selected original generic [511D40 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00511d40.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00511d40.c)) remains reused evidence, rather than a duplicate canonical pair.

`AllocateWithAllocatorHeader` takes requested size, a raw rounded word, diagnostic label and optional allocator interface. DWORD arithmetic computes `(rawWord+0F)&FFFFFFF0` and `size+10hex`, both unchecked for wrapping. A supplied allocator receives virtual+4 with `(size+16,label,0,roundedWord,16)`; otherwise default global11CC864 is supplied to4E6F70. Allocation failure returns EAX0. Success stores the optional allocator in header word0 and returns base+16; the other12 header bytes are not initialized here. Raw4 becomes16, so it is not evidence of effective alignment4.

`FreeWithAllocatorHeader` treats null as a no-op. Otherwise it subtracts16, reads the stored allocator and invokes virtual+C(base,0), or supplies base/current default global11CC864 to4E5E70. No destructor, refcount decrement, synchronization, double-free/stale-pointer guard or allocator lifetime guarantee is supplied. Callers must retain the matching header and allocator validity. Factory/destructor/registry routes and backend policies remain separate; these generic helpers are not duplicated under Frame-specific names.

## An additional unchecked writer, not valid-state or runtime evidence

For the concrete primary Frame query route030D54AC, original522C10 returns complete ECX unchanged. **Conditional on that concrete route**, the registered bridge funcID1 stores a full DWORD at `receiver+C+8*state` and funcID3 at `receiver+10+8*state`. It checks function ID, not state, and performs no Float32 conversion.

| Raw store | State | Offset / later consumer |
| --- | --- | --- |
| style funcID1 | 8 / 9 | +4C / +54, horizontal extents |
| color funcID3 | 8 / 9 | +50 / +58, vertical extents |
| style funcID1 | 10 | +5C, outline prepass raw word |

These are conditioned x86 address calculations, not admitted managed states, safe calls, arbitrary handle/class binding or an observed runtime sequence. They show why the eight initialized rows do not establish exclusive writer protection for adjacent extent/outline fields. Other writers, bounds enforcement, invalidation and lifetime remain open. They also do not resolve the C HighVar holds.

## Remaining boundaries and index meaning

Concrete renderer targets/stack models, varnode/merge-group provenance, the unobserved ST0 symbol outcome, full state producers/other writers, hidden callbacks, host/allocator/object lifetime and runtime/FP effects remain separate questions. No unsupported type, synthetic function, global indirect/transitive caller closure or original execution is claimed. Current captures preserve actual names; historical legacy pairs remain fixed-commit references with their own boundaries.

The [six-entry follow-up index](../../indexes/frame-drawable-consumer.tsv) points to one canonical ASM/C pair per identity. The two earlier canonical pairs are reused, bringing the current collection to75 reference entries. These are reference/function entries, not75 independent APIs or complete subsystems. New native path-map rows have empty previous-path/previous-commit fields because these six pairs have no prior public canonical predecessor. Existing historical mappings are retained unchanged; an absent predecessor is not a fabricated old blob.
