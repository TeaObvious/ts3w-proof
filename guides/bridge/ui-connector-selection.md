# UI connector handoff through an AppDomain key

Both original connector constructors request `CurrentDomain.SetData("UIManager", this)`. The UI static constructor reads that key, casts the result to `IUIManager` and caches it in `gUIMgr`. These are concrete original call/data relationships. They do not yet identify which constructor runs, whether the requests share a live domain, or which declared native module resolves.

The selected methods come from original **ScriptCore, UI, SimIFace, Sims3Metadata and mscorlib** S3SA resources. Exact package/resource, assembly hash, module name, version and MVID identities are centralized in [original inputs](../../evidence/managed/reference-inputs.json); [assembly provenance](../managed/assembly-provenance.md) describes decoding. The original EXE identity is [the central native reference](../../evidence/reference.json). The original bodies were checked against raw metadata/CIL and independently reviewed. No target assembly was executed, no reconstructed source tree or mod supplied the evidence, and no new native function definition or canonical ASM/C pair is adopted.

## Complete selected method views

There are **twelve methods: nine bodies totaling 817 CIL bytes, two bodyless mscorlib InternalCalls and one abstract interface declaration**. Bodyless declarations are not reconstructed implementations. The IL is retained verbatim. C# views add leading explanatory comments while retaining the original ILSpy projection and its diagnostics. Unresolved-type warnings are not evidence of invalid original execution; original IL and metadata govern token/type/branch claims.

| Original identity | Method | Body boundary | Evidence |
| --- | --- | --- | --- |
| `ScriptCore:06000E5B` | `ScriptCore.UIManager::.ctor` | 23 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/ScriptCore.UIManager..ctor.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/ScriptCore.UIManager..ctor.cs)) |
| `ScriptCore:06000F3C` | `ScriptCore.UTFConnectorUIManager::.ctor` | 23 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/ScriptCore.UTFConnectorUIManager..ctor.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/ScriptCore.UTFConnectorUIManager..ctor.cs)) |
| `UI:0600124A` | `Sims3.UI.UIManager::.cctor` | 481 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/Sims3.UI.UIManager..cctor.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.UI.UIManager..cctor.cs)) |
| `UI:06001274` | `Sims3.UI.UIManager::GetCASThumbnailImage` | 24 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/Sims3.UI.UIManager.GetCASThumbnailImage.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.UI.UIManager.GetCASThumbnailImage.cs)) |
| `UI:060011E8` | `Sims3.UI.InitUIManagerTask::.ctor` | 18 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/Sims3.UI.InitUIManagerTask..ctor.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.UI.InitUIManagerTask..ctor.cs)) |
| `UI:060011E9` | `Sims3.UI.InitUIManagerTask::Simulate` | 12 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/Sims3.UI.InitUIManagerTask.Simulate.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.UI.InitUIManagerTask.Simulate.cs)) |
| `UI:0600124B` | `Sims3.UI.UIManager::ForceStaticConstructionForUTFDesigner` | 1 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/Sims3.UI.UIManager.ForceStaticConstructionForUTFDesigner.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.UI.UIManager.ForceStaticConstructionForUTFDesigner.cs)) |
| `mscorlib:06000A97` | `System.AppDomain::GetData` | InternalCall declaration; no body | [IL](../../evidence/managed/ui-connector-selection/System.AppDomain.GetData.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/System.AppDomain.GetData.cs)) |
| `mscorlib:06000AB3` | `System.AppDomain::SetData` | InternalCall declaration; no body | [IL](../../evidence/managed/ui-connector-selection/System.AppDomain.SetData.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/System.AppDomain.SetData.cs)) |
| `mscorlib:06000A8B` | `System.AppDomain::get_CurrentDomain` | 6 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/System.AppDomain.get_CurrentDomain.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/System.AppDomain.get_CurrentDomain.cs)) |
| `SimIFace:06000239` | `Sims3.SimIFace.IUIManager::GetCASThumbnailImage` | abstract interface declaration; no body | [IL](../../evidence/managed/ui-connector-selection/Sims3.SimIFace.IUIManager.GetCASThumbnailImage.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.SimIFace.IUIManager.GetCASThumbnailImage.cs)) |
| `Sims3Metadata:060001DE` | `Sims3.Metadata.Pattern::RandomizeColor` | 229 CIL bytes | [IL](../../evidence/managed/ui-connector-selection/Sims3.Metadata.Pattern.RandomizeColor.il.txt) ([annotated C#](../../evidence/managed/ui-connector-selection/Sims3.Metadata.Pattern.RandomizeColor.cs)) |

The [method lookup](../../indexes/ui-connector-selection-methods.tsv), [method/interface metadata](../../evidence/managed/ui-connector-selection/methods.json) and [fifteen qualified chain relations](../../indexes/ui-connector-selection-chain.tsv) keep exact CIL calls, field operations and declared implementation candidates distinct. An interface-compatible declaration is not an observed concrete virtual target.

## Constructors request one key spelling

`ScriptCore.UIManager` (TypeDef `0200007A`, constructor `06000E5B`) and `ScriptCore.UTFConnectorUIManager` (`0200007C`, constructor `06000F3C`) each have the same complete 23-byte CIL body: base constructor, `CurrentDomain`, literal `UIManager`, `this`, `SetData(string, object)` at `IL_0011`, then RET. Separate InterfaceImpl rows 88/89 declare the original `SimIFace.IUIManager` interface. Neither constructor constructs the other implementation or contains a connector/module selection branch.

Each call occurs in its own execution context. Equal key spelling does not prove equal actual domains, overwrite semantics or registration order. No constructor execution is observed. `GetData` (`mscorlib:06000A97`) and `SetData` (`06000AB3`) are InternalCalls with RVA 0; `get_CurrentDomain` (`06000A8B`) is a six-byte wrapper around bodyless `getCurDomain` (`06000A8A`). Their native store/domain, locking and lifetime implementations remain open. The SetData SecurityPermission/LinkDemand attribute is original metadata, not observed permission enforcement.

## The UI consumer caches the interface

The complete 481-byte `UI:0600124A` static constructor first sets `gUIMgr` (`040013A1`) to null. It then calls CurrentDomain/GetData at `IL_00A1/00AB`, casts to IUIManager at `IL_00B0` and stores the result at `IL_00B5`. Only afterward, at `IL_00BA`, does it read `InitUIManagerTask.sIsRunningUTFDesigner` (`04001390`). There is no explicit local missing-key/wrong-type fallback between that cast/store and the subsequent interface uses. This is a static path observation, not a recorded exception, success or failure.

The constructor subsequently registers shutdown/UI callbacks through the cached value. Its later branch at `IL_01B4` targets `IL_01E0`, skipping selected hierarchy/user-tool/tooltip/balloon setup. It does not choose a different connector instance or module. The full body retains other initialization work; this guide does not give every downstream helper a new behavior/lifetime contract.

The 24-byte `UI:06001274` thumbnail consumer loads cached `gUIMgr` at `IL_0000` and calls `IUIManager.GetCASThumbnailImage` at `IL_0006`. Zero result returns null; nonzero reaches `UIImage` construction (`06000418`). It does not call GetData again or add a separate cached-manager null guard. Current receiver identity, rebinding, cache freshness and UIImage resource lifetime remain open.

A separate confirmed reader, `Sims3Metadata:060001DE`, reads CurrentDomain.GetData(`UIManager`) at `IL_000A` and casts at `IL_000F` before its color work. It requests the key within that method rather than reading UI.gUIMgr. Its complete 229-byte body is provided; equality/synchronization with a prior UI cache and broader color/resource semantics are not inferred.

## Empty force-method body and class initialization are separate

`UI:060011E8` stores true into the designer flag at `IL_0007`, then calls `ForceStaticConstructionForUTFDesigner` (`0600124B`) at `IL_000C`. The latter's complete body is **one RET**: there is no object construction, key refresh or connector-field write inside that body. This does not show absence of class-initialization effects when the method is invoked. Original UIManager type flags are `00000101`, without BeforeFieldInit, and it has the explicit static constructor above. Actual invocation/initialization order and connector activation remain unobserved.

`InitUIManagerTask.Simulate` (`060011E9`) contains twelve CIL bytes and requests destruction of its own task ObjectId. It adds no selection step and does not establish completed destruction or lifetime guarantees.

## Different thumbnail declarations remain different bindings

The existing [managed registration-gap contract](managed-registration-gap-boundaries.md) supplies four complete original import/wrapper views and their exact registration boundary. The two **48-byte wrappers are reused**, separate from the selected 817 CIL bytes:

- `ScriptCore:06000E6E`: [IL](../../evidence/managed/registration-gaps/ScriptCore.UIManager.GetCASThumbnailImage.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UIManager.GetCASThumbnailImage.cs)); `IL_002A` calls `06000DFD`, whose [IL declaration](../../evidence/managed/registration-gaps/ScriptCore.UIManager.UIManager_GetCASThumbnailImageImpl.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UIManager.UIManager_GetCASThumbnailImageImpl.cs)) imports from **Sims3Common.dll** with `ThumbnailSize, Boolean` as final arguments.
- `ScriptCore:06000F4F`: [IL](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.GetCASThumbnailImage.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.GetCASThumbnailImage.cs)); `IL_002A` calls `06000EDE`, whose [IL declaration](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.UIManager_GetCASThumbnailImageImpl.il.txt) ([C#](../../evidence/managed/registration-gaps/ScriptCore.UTFConnectorUIManager.UIManager_GetCASThumbnailImageImpl.cs)) imports from **UTFConnector.dll** with `Boolean, ThumbnailSize` as final arguments.

The wrappers load those fields in the respective declared orders. Both imports share the entrypoint suffix `UIManager_GetCASThumbnailImageImpl`, return UInt32 and declare the first four arguments ResourceKey, Int32, UInt32, UInt32. The AppDomain handoff does not merge modules, bind both declarations to one native address, recover physical argument widths/marshaling, or establish a retail defect.

[Binding/table evidence](../../evidence/managed/ui-connector-selection/binding-boundaries.json) preserves registration `01162E10` (`9032780010000101`): name `ScriptCore.UIManager::UIManager_GetCASThumbnailImageImpl`, target `00783290`. Its exact original owner/name candidate is `ScriptCore:06000DFD`; UTFConnector `06000EDE` is not joined by that owner/name. This is a registration candidate, not a proved resolver/physical ABI. The existing [1,777-record registration index](../../indexes/native-registrations.tsv), [six-row resolution boundary](../../indexes/registration-resolution-boundaries.tsv) and [frozen capture frontier](../../inventory/native-capture-frontier.tsv) are unchanged.

The original descriptor vtable `0100FBBC` has getter addresses at +0C/+10. Getter `0060FC70` is four bytes reading `[ECX+44h]`; getter `00784170` is thirteen bytes writing table `01162D90` through its stack output pointer and returning RET4. The table sidecar retains these 17 code bytes and 20 descriptor bytes directly from the original PE. It is not a new live Native read or canonical pair. The analyst UIManager label does not supply the actual pointed-to type name: descriptor construction/field+44 writer and the managed activation path remain missing.

## Finite searches and next evidence

The [search-candidate index](../../indexes/ui-connector-selection-search-candidates.tsv) retains **151 raw pattern candidates**: fifteen exact UIManager ldstr patterns across four assemblies, 133 gUIMgr loads, two gUIMgr stores and one designer-flag store. It identifies selected sites with complete original IL confirmation; remaining byte matches are not asserted CIL instruction boundaries, semantic readers/writers or runtime reachability. This is not a full mutation census, reflective writer search or indirect closure.

The bounded original search found no selected call/newobj constructor-token sequence in 2,635 ScriptCore CIL bodies, no constructor MemberRef parented by either selected same-assembly TypeDef, and no exact TypeRef to either concrete class in the ten original assemblies. These negatives do not exclude reflection, native/runtime activation, dynamic construction, type enumeration or other assemblies; they do not choose a retail connector or prove unused code. Six NUL-terminated ASCII name searches over original EXE file bytes were also negative for the selected class/module spellings; other encodings, constructed names and dynamic resolver paths remain open.

The concrete remaining questions are:

1. Which original activator constructs each connector, in which domain and order? Direct selected-token/type-reference negatives do not answer this.
2. Which writer constructs descriptor field+44, and how is that name used to activate the managed type? No value is inferred from its analyst label.
3. Which runtime maps the three mscorlib InternalCalls, and what store/domain/retention semantics does it implement?
4. Which module/export/interop bridge resolves each PInvoke declaration before any physical argument order/width or common target is assigned?
5. Which additional candidate sites are actual CIL readers/writers, and what controls rebinding and lifetime? No runtime observation or global reachability closure is supplied.
