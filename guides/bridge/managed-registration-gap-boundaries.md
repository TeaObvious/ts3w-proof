# Managed declarations beyond exact registration-name joins

The original declaration, registration and capture indexes agree within their stated boundaries. Their next unresolved relationship is broader than the existing six unmatched-name/overload cases: **149 native declarations have only a same-import-suffix registration under another declaring owner.** One original CAS-thumbnail pair even declares its final two arguments in different orders. An import suffix, a decoded managed signature and a native pointer are distinct evidence dimensions; none alone proves a common live binding or ABI.

This addendum references the existing [4,722 original declaration records](../../evidence/managed/native-methods.jsonl), [interop metadata](../../evidence/managed/interop-metadata.jsonl), [exact direct CIL callers](../../evidence/managed/direct-callers.tsv), [1,777 registrations](../../indexes/native-registrations.tsv), [six resolution boundaries](../../indexes/registration-resolution-boundaries.tsv) and [frozen capture frontier](../../inventory/native-capture-frontier.tsv). It supplements them with a [493-method gap list](../../indexes/managed-registration-gaps.tsv), [twenty shared-target groups](../../indexes/native-registration-shared-targets.tsv) and [small original method/table joins and follow-up questions](../../evidence/managed/registration-gaps/evidence.json). Existing rows, candidates and dispositions remain unchanged.

## Finite reconciliation

| Dimension | Result |
| --- | --- |
| Original method roots | 4,722 records:1,935 PInvoke plus331 InternalCall declarations, and2,456 separate Runtime-delegate methods. No Native-code-type method occurs. |
| Original registrations | 1,777 distinct records /1,733 native targets. |
| Exact owner/name lookup | 1,771 unique-name-candidate records, one two-declaration overload and five without an exact candidate. |
| Union of exact candidate MethodDefs | 1,773 original IDs, all present in the declaration index. |
| Native-flag declarations outside that union | 493 of2,266; not493 newly found native functions. |
| Shared native target groups | Twenty groups /64 records; pointer equality does not establish equivalent APIs. |

All registration source IDs, names, candidate sets and per-target multiplicities reconcile with the frozen frontier. Its pipe-separated groups can contain semicolon-separated overload IDs; both delimiters must be respected. For example, the two CAS overload MethodDefs `060002FB/060002FC` remain two candidates rather than a fabricated missing composite ID. The existing five unmatched names and one overload remain qualified by the [resolution guide](registration-resolution-boundaries.md); every existing native-alias-proven field stays false.

The493 unjoined native-flag declarations partition exactly:

| Family | Methods | Remaining evidence |
| --- | ---: | --- |
| mscorlib InternalCalls outside the selected game-name tables | 329 | Actual runtime binding/map and implementation owner or a justified runtime/shared-helper scope boundary. These are not329 missing game registrations. |
| Same import suffix under a different owner | 149 | Actual connector selection, module/export/alias path and physical marshaling/ABI.146 have a primary candidate with the same decoded managed signature, one differs and two have no exact primary candidate. |
| Neither exact owner/name nor import-suffix registration | 15 | Four are already related in the six-row boundary work; eleven add finite resolver/scope questions. No native VA is inferred. |

Six of the493 IDs are already related by the existing boundary index: `ScriptCore:06000249/06000553/060005A3/06000D65` and `UI:06003031/06003033`. Six related unjoined **IDs** are not the same count or category as six boundary **rows**. The two UI IDs are also the foreign-suffix cases without a primary exact candidate.76 of the493 have no direct site in the selected exact CIL-call index; this is not proof of unused code, reflection absence or exclusion. Runtime delegates and the existing unresolved-reference/callback/dispatch candidates remain separate.

## CAS thumbnail: same suffix, different declared order

All selected methods come from original S3SA assembly **ScriptCore**, whose exact package/resource/hash/MVID identity is centralized in [original inputs](../../evidence/managed/reference-inputs.json); [assembly provenance](../managed/assembly-provenance.md) explains extraction. The four complete selected views are:

- `ScriptCore:06000DFD`, UIManager import: [IL](../../evidence/managed/registration-gaps/ScriptCore.UIManager.UIManager_GetCASThumbnailImageImpl.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UIManager.UIManager_GetCASThumbnailImageImpl.cs)).
- `ScriptCore:06000EDE`, UTFConnectorUIManager import: [IL](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.UIManager_GetCASThumbnailImageImpl.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.UIManager_GetCASThumbnailImageImpl.cs)).
- `ScriptCore:06000E6E`, UIManager wrapper: [IL](../../evidence/managed/registration-gaps/ScriptCore.UIManager.GetCASThumbnailImage.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UIManager.GetCASThumbnailImage.cs)).
- `ScriptCore:06000F4F`, UTFConnectorUIManager wrapper: [IL](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.GetCASThumbnailImage.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.GetCASThumbnailImage.cs)).

| Original declaration | Owner / module | Arguments5,6 |
| --- | --- | --- |
| `06000DFD` | ScriptCore.UIManager / Sims3Common.dll | ThumbnailSize, Boolean |
| `06000EDE` | ScriptCore.UTFConnectorUIManager / UTFConnector.dll | Boolean, ThumbnailSize |

Both import the suffix `UIManager_GetCASThumbnailImageImpl`, return UInt32 and declare the first four inputs ResourceKey,Int32,UInt32,UInt32. Both wrappers contain48 CIL bytes and call their own MethodDef at `IL_002A`: UIManager loads `mSize` then `mLiveUpdate`; UTFConnectorUIManager loads `mLiveUpdate` then `mSize`. The original CIL therefore preserves the two different orders. C# fragments are ILSpy projections; retained resolver warnings are not evidence that the independently decoded original CIL is invalid.

Original descriptor row `01162E10` contains the eight bytes `9032780010000101`, resolving to target `00783290` and name pointer `01010010`. That original57-byte NUL-terminated name is `ScriptCore.UIManager::UIManager_GetCASThumbnailImageImpl`. It gives the existing UIManager owner/name candidate `06000DFD`; it does not bind the UTFConnector declaration `06000EDE`. The [registration index](../../indexes/native-registrations.tsv) retains the full row/name evidence; the small [join record](../../evidence/managed/registration-gaps/evidence.json) supplies original PE file offsets and the selected method relationship.

This is no new native address, recovered physical argument layout, alias or retail defect. No parameter-specific marshal descriptor is present for these two declarations' inputs, but that absence does not establish native Boolean/enum/ResourceKey width. The next proof needs actual original connector selection, module/export/internal-call resolution and the physical marshaling bridge for the chosen declaration. A generated native prototype cannot decide that owner/module question.

## Additional no-suffix questions

The eleven declarations beyond the already related four no-suffix cases are:

| Original IDs | Current finite evidence / next question |
| --- | --- |
| `ScriptCore:06000031/06000032` | ProfilerUtils Begin/EndLoadEvent imports; no selected direct sites. Differently named GameUtils load-event registrations are not proved aliases. Resolve native import/module selection and original scope. |
| `ScriptCore:06000058/06000059/0600005A` | Three Juice telemetry imports; no selected direct sites. Establish original reachability/scope and resolver evidence before exclusion or mapping. |
| `ScriptCore:06000A76/06000A7B/06000AB7/06000AB8/06000AB9` | SocialFeatures FlagPost,FlagComment and three rank imports; each has one indexed direct caller. Other rank-description/image registrations do not prove aliases; concrete binding or a justified scope boundary remains necessary. |
| `UI:06003027` | oleaut32.dll!VariantClear; caller `UI:0600302B@IL_0017` exists. Inspect the original marshaler context and external-library boundary; no missing TS3W-address registration follows. |

Their original MethodDef/ImportMap identities already exist in the central declaration and interop indexes. The [follow-up records](../../evidence/managed/registration-gaps/evidence.json) distinguish reused direct-site evidence from missing resolver/scope evidence. Telemetry/social/library names and zero selected callsites are not automatic bloat, unused or exclusion classifications.

## Reading the additive lists

`managed-registration-gaps.tsv` joins by exact `assembly:MethodDef-token` into the existing method index and original assembly manifest. `suffix_registration_ids` and the shared-target list use the same identity as the frontier's source bindings: `source_kind:record_or_call_va` from the registration index. Empty candidates mean no exact primary candidate, not no relevant method. `same_decoded_signature_candidate_ids` compares the existing decoded managed declaration signature only; it carries no physical ABI or alias claim. `followup_question_id` resolves to the small evidence record's question list. No duplicate method/signature corpus is introduced.

`native-registration-shared-targets.tsv` records only the twenty groups with multiple registration records at one original target. Each group's per-operation inputs, outputs, errors, side effects and bridge must still be checked. The one-pointer relationship cannot dispose of an unknown operation or establish equivalent contracts.

The capture frontier freezes the25 canonical-pair input snapshot at [2ab2fa2a80](https://github.com/TeaObvious/ts3w-proof/tree/2ab2fa2a80e5ee1ea95622558bf2fcb7ee600944); only five registered targets in those rows had a current pair. At the selected [533593f snapshot](https://github.com/TeaObvious/ts3w-proof/tree/533593fa2698c54cfabf79256ceddb930b9adcce), the [canonical index](../../indexes/native-evidence.tsv) contains75 pairs, seven corresponding to registered targets. The two additional registered targets are `0077D320` and `00D835D0`. These current paths are resolved through the canonical index; historical frontier rows are not silently recomputed or renamed. Neither pair count is semantic/runtime coverage.

This evidence is static. It changes no native definition, canonical pair, signature, symbol or existing index row. Unknown runtime bindings, reflection, generic/inherited MemberRefs and indirect callbacks remain open under their existing indexes. No complete native-binding map or whole-reference completion is claimed.
