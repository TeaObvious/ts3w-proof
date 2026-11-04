# Resolution boundaries for five unmatched registrations and one overload

The five unmatched table names have no exact declaring-type/method declaration
in the selected original ten-assembly corpus. Two have real UI imports with the
same entrypoint suffix but a different owner and module; the other three have
related, differently named imports. None of those relationships proves a native
alias. The CAS overload ambiguity has a narrower answer: both inspected public
wrappers call the three-parameter MethodDef, while the two-parameter declaration
has no direct CIL callsite in this corpus. Its runtime binding and physical ABI
remain separate questions.

The [six-row resolution index](../../indexes/registration-resolution-boundaries.tsv)
records exact addresses, signatures, import names, original method IDs and direct
caller offsets. It supplements the frozen
[1,777-binding lookup](../../indexes/native-registrations.tsv), not replacing
its original table names with guessed aliases. Input identities and MethodDef
signatures come from [the central original inputs](../../evidence/managed/reference-inputs.json)
and [native declaration index](../../evidence/managed/native-methods.jsonl).
[Direct caller edges](../../evidence/managed/direct-callers.tsv) distinguish exact
CIL MethodDef resolution from unresolved native name binding.

## Search boundary and negative results

The check covered all **179,462 MethodDefs** in those ten original S3SA
assemblies, including ordinary managed methods rather than only the 2,266
native-declared methods. All P/Invoke ImportMap entrypoint names were compared
separately; changing an import's managed name is not enough to hide its actual
entrypoint from this check. Exact table type/name matching found zero declarations
for each of the five names, and two for the CAS registration.

An independent targeted scan also decoded **165,766 CIL bodies, 79,332 `ldstr`
instructions and 44,684 MemberRefs**, without decoding failures. It searched the
case-insensitive name substrings `GetLocalizedStringByStringKey`, `ChangeLocale`,
`SetParamCompositeVal`, `GetAllSimulationObjectNames`, `HasBeenToWorld`,
`HasSaveFile` and `SimBuilderAddPartImpl` in actual `ldstr` values and MemberRef
names. No such literal or MemberRef-name occurrence was found. The declarations
and calls below mostly use same-assembly MethodDef operands, which explains why
this separate MemberRef search does not find them. This is a bounded negative
result, not absence of dynamic string construction, reflection, external
assemblies or runtime aliases.

No NUL-terminated ASCII-compatible `UTFConnector.dll`, `Sims3Common.dll` or
`GameUtils_HasSaveFileImpl` literal was found in the original EXE's file bytes.
That search is encoding-specific and does not prove that no resolver can provide
those imports. The ten managed input hashes and MVIDs were rechecked; no mod,
prepared DLL or reconstructed source tree supplied these conclusions.

## The two localization names belong to a different managed import owner

| Native table name after `ScriptCore.LocalizedStringService::` | Record / native target | Actual original import | Direct caller |
| --- | --- | --- | --- |
| `LocalizedStringService_GetLocalizedStringByStringKey` | `01161290 / 007439B0` | `UI:06003031`, `Sims3.UI.LocalizedStringService`, `UTFConnector.dll`, same suffix entrypoint | `UI:06003036 @ IL_0001` |
| `LocalizedStringService_ChangeLocale` | `011612A0 / 00743A10` | `UI:06003033`, `Sims3.UI.LocalizedStringService`, `UTFConnector.dll`, same suffix entrypoint | `UI:06003038 @ IL_0001` |

These are genuine original P/Invoke declarations, not fabricated ScriptCore
methods. The first takes one `string` and returns `string`; the second takes one
`string` and returns `void`. Both have `winapi` import metadata and LPWStr input
marshaling. Their original return-parameter metadata includes the custom
`Sims3.UI.StringFromVariantMarshaler`; even the void declaration retains that
metadata. It must not be silently rewritten to an ordinary string/void ABI.
See their exact parameter/return descriptors in
[interop metadata](../../evidence/managed/interop-metadata.jsonl).

Complete tiny original CIL bodies, with descriptive headings rather than renamed
tokens, are:

```text
UI:06003036 GetLocalizedStringByStringKey(string) -> string; 7 CIL bytes
IL_0000: ldarg.1
IL_0001: call string Sims3.UI.LocalizedStringService::LocalizedStringService_GetLocalizedStringByStringKey(string) /* 06003031 */
IL_0006: ret

UI:06003038 ChangeLocale(string) -> void; 7 CIL bytes
IL_0000: ldarg.1
IL_0001: call void Sims3.UI.LocalizedStringService::LocalizedStringService_ChangeLocale(string) /* 06003033 */
IL_0006: ret
```

The corresponding managed projection simply forwards the argument and returns
the import result where one exists. It performs no table-name substitution:

```csharp
// Original UI wrappers: no native-binding decision is made here.
public string GetLocalizedStringByStringKey(string key) =>
    LocalizedStringService_GetLocalizedStringByStringKey(key);
public void ChangeLocale(string locale) =>
    LocalizedStringService_ChangeLocale(locale);
```

The native evidence remains
[007439B0 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007439b0.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007439b0.c)) and
[00743A10 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00743a10.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00743a10.c)).
A resolver would have to bridge the actual `UI/Sims3.UI/UTFConnector.dll` identity
to the ScriptCore-qualified table name for these to be the same live binding.
No such rewrite or export-resolution path has been established here.

## Composite value: the active import explicitly says StringVal

Record `01161E30` names `ScriptCore.SACS::SACS_SetParamCompositeValImpl` and
points to `00766E90`. Neither a MethodDef nor an ImportMap entry uses that exact
suffix. The actual related declaration is `ScriptCore:06000D65`,
`SACS_SetParamCompositeStringValImpl(uint,string,string,string) -> void`, imported
from `Sims3Common.dll`. Its string-value wrapper `06000D86` calls it directly:

```text
ScriptCore:06000D86 SetParam(uint,string,string,string) -> void; 11 CIL bytes
IL_0000: ldarg.1
IL_0001: ldarg.2
IL_0002: ldarg.3
IL_0003: ldarg.s value
IL_0005: call void ScriptCore.SACS::SACS_SetParamCompositeStringValImpl(uint32,string,string,string) /* 06000D65 */
IL_000a: ret
```

```csharp
// Original string-value overload preserves the StringVal import name.
public void SetParam(uint driverHandle, string paramPrefix,
                     string paramName, string value) =>
    SACS_SetParamCompositeStringValImpl(driverHandle, paramPrefix, paramName, value);
```

The sibling `06000D87` uses `06000D64`,
`SACS_SetParamCompositeImpl(uint,string,string,uint)`, also at `IL_0005`; that
sibling's exact name is present in the registration table at native `00766DC0`.
It is not a replacement declaration for the missing `CompositeVal` name.
Existing native [00766E90 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00766e90.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00766e90.c))
contains an unreliable generated stack/signature projection. Similar names and
related native code do not establish that this target satisfies `06000D65`.
The native alias/resolver and physical ABI remain open.

## Simulator names: singular imports in both connector implementations

Record `01162010` names
`ScriptCore.Simulator::Simulator_GetAllSimulationObjectNamesImpl`, native
`0076D920`. No original MethodDef or ImportMap entry has that exact suffix.
The related original operations instead request **one name for a ResourceKey**:

| Wrapper | Exact direct import | Module | Declared contract |
| --- | --- | --- | --- |
| `ScriptCore:06000582 @ IL_0001` | `ScriptCore:06000553`, `Simulator_GetSimulationObjectNameImpl` | `Sims3Common.dll` | `ResourceKey -> string` |
| `ScriptCore:060005CD @ IL_0001` | `ScriptCore:060005A3`, same import suffix, owner `ScriptCore.UTFConnectorSimulator` | `UTFConnector.dll` | `ResourceKey -> string` |

Both complete wrappers have seven CIL bytes: `IL_0000 ldarg.1`,
`IL_0001 call string <their exact import>(ResourceKey)`, `IL_0006 ret`.
Their managed projections return that one import result. Neither constructs an
all-names operation or rewrites the import name. The separate all-keys import
`ScriptCore:06000552`, `Simulator_GetAllSimulationObjectKeysImpl() -> ulong[]`,
has its own exact table registration at `0076D490`; it is not evidence that the
unmatched all-names name resolves.

Existing [0076D920 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x0076d920.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x0076d920.c))
is retained as native evidence with its unresolved generated stack/return
projection. It does not authenticate either singular managed declaration's ABI.

## HasBeenToWorld: a real managed facade alias, an unresolved native alias

Record `011971B8` binds
`ScriptCore.GameUtils::GameUtils_HasBeenToWorldImpl` to `00EC1520`. No MethodDef
or ImportMap entry has that exact suffix. There is a real original public method
`SimIFace:06000E5B HasBeenToWorld(string,string)`; it calls the **interface
HasSaveFile**, not an import named HasBeenToWorld:

```text
SimIFace:06000E5B; complete 13-byte CIL body
IL_0000: ldsfld class Sims3.SimIFace.IGameUtils Sims3.SimIFace.GameUtils::gGameUtils /* 04000D67 */
IL_0005: ldarg.0
IL_0006: ldarg.1
IL_0007: callvirt instance bool Sims3.SimIFace.IGameUtils::HasSaveFile(string,string) /* 06000DDB */
IL_000c: ret

ScriptCore:060002A0 HasSaveFile(string,string); complete 8-byte CIL body
IL_0000: ldarg.1
IL_0001: ldarg.2
IL_0002: call bool ScriptCore.GameUtils::GameUtils_HasSaveFileImpl(string,string) /* 06000249 */
IL_0007: ret
```

```csharp
// Original facade dispatch; the actual retained interface instance matters.
public static bool HasBeenToWorld(string worldName, string saveName) =>
    gGameUtils.HasSaveFile(worldName, saveName);
// Original ScriptCore implementation forwards to a differently named import.
public bool HasSaveFile(string worldName, string saveName) =>
    GameUtils_HasSaveFileImpl(worldName, saveName);
```

`06000249` imports `GameUtils_HasSaveFileImpl` from `Sims3Common.dll`, two LPWStr
strings and an Int8-marshaled boolean return. The ScriptCore implementation
matches the interface signature, but the live `gGameUtils` receiver and its
initialization are outside this selection. Most importantly, the original
managed facade alias does not prove an import resolver alias from HasSaveFile
back to the native table's HasBeenToWorld name.
Existing [00EC1520 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00ec1520.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00ec1520.c))
retains unresolved physical stack/signature details. No runtime success/failure
of either facade or import was observed.

## CAS: caller role is resolved more narrowly than the native ABI

The single native registration `011562B8 -> 005A5CB0` has two original private
P/Invoke declarations, both importing `CASUtils_SimBuilderAddPartImpl` from
`Sims3Common.dll`, both with Int8-marshaled boolean return:

| Original MethodDef | Declared parameters | Direct CIL calls in the ten assemblies |
| --- | --- | --- |
| `ScriptCore:060002FB` | `uint handle, ResourceKey partKey` | None found. |
| `ScriptCore:060002FC` | `uint handle, ResourceKey key, int tbIndex` | `060003D2 @ IL_0003`, `060003D3 @ IL_0009`. |

The original two-parameter **public wrapper** does not call the two-parameter
private import. It supplies a zero third argument to `060002FC`:

```text
ScriptCore:060003D2; complete 9-byte CIL body
IL_0000: ldarg.1
IL_0001: ldarg.2
IL_0002: ldc.i4.0
IL_0003: call bool ScriptCore.CASUtils::CASUtils_SimBuilderAddPartImpl(uint32,ResourceKey,int32) /* 060002FC */
IL_0008: ret

ScriptCore:060003D3; complete 15-byte CIL body
IL_0000: ldarg.1
IL_0001: ldarga.s part
IL_0003: ldfld ResourceKey Sims3.SimIFace.CAS.CASPart::Key /* 0A000085 */
IL_0008: ldarg.3
IL_0009: call bool ScriptCore.CASUtils::CASUtils_SimBuilderAddPartImpl(uint32,ResourceKey,int32) /* 060002FC */
IL_000e: ret
```

```csharp
// Original public wrappers: both select the three-argument MethodDef.
public bool SimBuilderAddPart(uint handle, ResourceKey partKey) =>
    CASUtils_SimBuilderAddPartImpl(handle, partKey, 0);
public bool SimBuilderAddPart(uint handle, CASPart part, int tbIndex) =>
    CASUtils_SimBuilderAddPartImpl(handle, part.Key, tbIndex);
```

This establishes which declaration the inspected CIL calls. Zero direct callsites
does not prove that `060002FB` is unused by reflection or runtime code. It must
remain in the declaration index rather than be discarded as an impossible API.

The existing native [005A5CB0 ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x005a5cb0.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x005a5cb0.c))
allocates 16 local bytes and uses plain `RET`. Before the virtual resolver call,
`5A5CBC` reads `[ESP+0x14]` after that allocation. After the virtual call,
`5A5CE1/CE5/CEC/CFB` read DWORDs at the then-current
`ESP+0x20,+0x24,+0x18,+0x1C`, respectively. Mapping those post-call offsets back
to original managed arguments requires the resolver's stack cleanup and interop
bridge; this guide does not assign them a guessed argument layout. Original
ResourceKey metadata declares sequential `uint TypeId`, `uint GroupId`,
`ulong InstanceId`. Without the original physical struct/extra-argument handling,
these facts do not establish which overload its binder chooses or what native
role `tbIndex` has. The
four-parameter generated C prototype is not a recovered managed declaration.

## Remaining resolution boundary

The original descriptor consumer's `D7EB57` binder call passes exactly the stored
registration name and native pointer; its two explicit pre-loop bindings are
separate. The [table guide](native-registration-tables.md) retains the paired
consumer/binder evidence. Nothing in that verified loop alone changes namespaces,
`UTFConnector.dll`, StringVal, singular/plural operation names or HasSaveFile.
The missing links require a concrete loader/export or runtime-binder alias path,
physical marshaling evidence, or original runtime observations. These six rows
are now individually dispositioned; they are not falsely promoted to resolved
native-method joins or evidence of a retail runtime defect.
