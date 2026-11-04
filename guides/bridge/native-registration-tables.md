# Native registration tables and managed declaration candidates

The original PC 1.67 EXE contains the 43 previously identified descriptor tables
with **1,775 exact name/address records and 1,731 distinct native targets**.
Every record, NUL-terminated UTF-8 name, getter, selected descriptor slot and null
sentinel in that known set has been checked again directly against the original
file-backed PE bytes. This verifies that set; it is not a census of all native
bindings or proof that each registration executed.

The [registration lookup index](../../indexes/native-registrations.tsv) also
includes two explicit binder calls already present in the table consumer,
bringing this bounded index to **1,777 bindings and 1,733 distinct targets**.
`source_kind` distinguishes eight-byte table records from direct callsites.
[Registration table data](../../evidence/bindings/registration-tables.json)
records the 43 table bounds, getter bytes and descriptor evidence. Original
identity is centralized in [PC 1.67 references](../../references/pc-167.md).

## Exact file data and boundaries

Each table stores `{native_target_u32le, registration_name_pointer_u32le}` at an
eight-byte stride. JSON `stop_exclusive_va` is also the sentinel address. The
legacy `end` field denoted the **last record**, not an exclusive end; the new
schema states the boundary explicitly. All 43 sentinels are eight zero bytes.
The observed consumer terminates on the zero **function pointer**; it need not
check the sentinel's name word. Nonzero target pointers in the verified rows all
map to executable, file-backed `.text`.

The TSV preserves each record's eight exact bytes, original name pointer,
complete NUL-terminated name bytes as hex and decoded UTF-8 string, native target
and original record file offset. File offsets come from actual PE section
mapping, not an assumed `VA - imagebase` shortcut. Every record matches the
legacy map and API index by address, target and exact name. The 43 table labels
and their provenance come from the existing proof at commit
`cf6f60a42fe8c5bd181495a32161217972cefebc`; this is reused evidence, not a claim
that these registrations were newly discovered. Target ASM/C links reuse that
pinned canonical proof unless an already corrected canonical pair exists in
this Research repository; those rows point to the current repository path.
The reused current pairs were verified against Research commit
`3223a36865a682d455589a66fccbe18a9a231165`; the index is discovery and lookup,
not a new function-body acceptance.

Every seeded getter has the same verified 13-byte body:

```text
mov eax,[esp+4]
mov dword ptr [eax],<this table VA>
ret 4
```

It takes an output pointer, stores the table address there, and cleans that
one stack word. It does not itself bind a managed method. JSON gives exact
getter bytes and paired links to the existing canonical ASM/C evidence. This
check selected the previous getter addresses; it did not search the whole PE
for this byte pattern and does not treat such a pattern as proof of global
coverage.

## Selected descriptors and false candidates

For each table, one previously selected descriptor is retained. Its vtable
slot `+0x10` points to the verified table getter, and slot `+0x0C` points to the
reported type-name getter. The first five vtable slots are preserved as exact
bytes. Forty type-name getters are `mov eax,<literal address>; ret`; their
literal bytes decode to the names recorded in JSON.

Three selected descriptors use instance state instead of a literal:

| Table label | Type-name getter | Actual input dependence |
| --- | --- | --- |
| `ScriptCore.EATrace` | `0x005360C0` | Returns `[ECX+4]`. |
| `ScriptCore.Simulator` | `0x005360C0` | Returns `[ECX+4]`. |
| `ScriptCore.UIManager` | `0x0060FC70` | Returns `[ECX+0x44]`. |

The returned names for those three require real construction state and are not
recovered from a table's analyst label. Sharing the same getter does not prove
that EATrace and Simulator return the same instance value.

The legacy descriptor-candidate list contained 52 pointer-pattern hits. Nine
additional CommandSystem-associated candidates were not in its selected set.
They remain explicitly listed as **unselected candidates**, not additional
verified descriptors or registration roots. Matching a pointer word inside data
is weaker evidence than a descriptor's independently established role.

## The static consumer and activation boundary

The existing static path joins a real descriptor to the table consumer. The
startup callback `0x00EC96E0` calls the SACS wrapper `0x007675E0`; the wrapper
constructs a descriptor and passes it to host virtual slot `+0x48`. The host
implementation `0x00D744E0` inserts descriptors into its list at `+0x1600`:
[startup ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00ec96e0.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00ec96e0.c)),
[SACS wrapper ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007675e0.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007675e0.c)),
[list-insertion ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d744e0.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d744e0.c)).

The consumer at `0x00D7E9F0`, specifically `D7EB1A..D7EB78`, walks that list,
invokes each descriptor's `+0x10` getter, reads native target at record `+0`, reads
name at `+4`, calls `0x00E82820(name,target)`, and advances by eight bytes until
the target is zero:
[consumer ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d7e9f0.asm.txt)
([annotated pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d7e9f0.c)).
The binder converts the name through `0x00E48380`, then forwards the result and
native target to `0x00E45BD0` with global registry `0x011F536C`:
[binder ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00e82820.asm.txt)
([annotated pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00e82820.c)).
Registry key representation, duplicate insertion/replacement policy, interpreter
marshaling and full lifetime are not established by this table recheck.

This path proves a static use of the actual format. It is not a fresh proof of
construction and activation for every one of the 43 descriptors. Runtime
registration order, conditions, successful binding and invocation remain
unobserved. Named rows, including online-oriented or diagnostic names, remain
in the evidence; names alone do not establish a supported exclusion.

## Two explicit bindings outside the 43 tables

Immediately before the table loop, the same consumer explicitly calls the same
binder twice. The push immediates, name strings and relative call targets have
been independently checked in the original PE; these are not discovered by a
whole-image pointer scan.

| Name | Native target | Bind callsite | Original managed candidate |
| --- | --- | --- | --- |
| `ScriptCore.Simulator::MonoScriptHost_GetEnumSimpleName` | `0x00D7CE10` | `0x00D7EB06` | `ScriptCore:06000548` |
| `ScriptCore.Simulator::MonoScriptHost_GetEnumSimpleHash` | `0x00D7CEA0` | `0x00D7EB15` | `ScriptCore:06000549` |

Their TSV ASM/C links point to the **consumer that performs the bind**, not to
newly accepted complete bodies or semantics of those target functions. These
two witnesses already demonstrate why 1,775 table records cannot be called a
complete native-binding inventory. Other direct bindings, runtime internal
calls, dynamic targets and callbacks require their own rooted analysis.

## Managed name join and unresolved overloads

The candidate join uses the newly identified original ten-assembly
[native declaration index](../../evidence/managed/native-methods.jsonl) and its
[central input identities](../../evidence/managed/reference-inputs.json).
The immutable source contains 4,722 declaration records: the join uses its
2,266 native-declared methods (1,935 P/Invoke and 331 InternalCall) and excludes
2,456 runtime delegate shapes. Input digests and the final ten-assembly manifest
schema are recorded in the registration-table provenance. Method IDs resolve
through the central assembly name/version/MVID identities, including ScriptCore
MVID `da71f9d5-3a90-44c6-8f98-5bafd2fca18a`; a same token in another assembly is
not the same declaration.

The join compares exact `declaring type::method name` after removing the assembly
qualifier from the type string. It retains each assembly-qualified MethodDef
ID; it does not derive addresses from tokens. `candidate_import_matches`
separately records whether the P/Invoke import name equals the registration's
method-name suffix. The two `ScriptCore.Reflection` rows are `InternalCall`
declarations with no P/Invoke record; their value is `not-pinvoke`, not an
import-name mismatch. This is supporting metadata, not overload resolution or
runtime binding evidence.

Of the 1,775 table rows, 1,769 have one exact name candidate, one has two
same-name candidates, and five have none in this declared-native method search.
The two explicit direct bindings each have one candidate, so the combined TSV
has 1,771 unique-name candidates, one ambiguous row and five unmatched rows.
A single candidate still does not prove calling convention, marshaling, parameter
widths, return-register use, or any native behavioral contract.

The ambiguous registration is
`ScriptCore.CASUtils::CASUtils_SimBuilderAddPartImpl`, record `0x011562B8`,
pointing to `0x005A5CB0`. Both original declarations are retained:
`ScriptCore:060002FB` and `ScriptCore:060002FC`. One has two declared parameters
and the other three; selecting either solely by name would lose an original
candidate. Native call/ABI evidence is needed before choosing a callable
signature.

The five unmatched **table names** are:

- `ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedStringByStringKey`
- `ScriptCore.LocalizedStringService::LocalizedStringService_ChangeLocale`
- `ScriptCore.SACS::SACS_SetParamCompositeValImpl`
- `ScriptCore.Simulator::Simulator_GetAllSimulationObjectNamesImpl`
- `ScriptCore.GameUtils::GameUtils_HasBeenToWorldImpl`

"No exact name candidate" means no matching declared-native row in the selected
original ten-assembly metadata index. It does not prove a registration is dead,
absent at runtime, or ABI-incompatible. Native aliases also remain separate TSV
rows: sharing a target address does not make their declarations or semantics
interchangeable.
