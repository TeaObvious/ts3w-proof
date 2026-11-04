# Original managed declarations and native-root candidates

This index covers all ten S3SA assemblies in the three identified PC 1.67
GameBin packages. It records declarations and static CIL operands. It does not
assign native addresses to metadata tokens, establish live dispatch, or claim
complete callback/behavior coverage.

The [central input manifest](../../evidence/managed/reference-inputs.json) joins
each original package/resource to its decoded PE, assembly version, module name,
MVID and SHA-256. The [assembly provenance guide](assembly-provenance.md)
describes the execution-free analysis route.

## Corpus and admitted scan

| Assembly | TypeDefs | MethodDefs | Parsed CIL bodies | PInvoke | InternalCall | Runtime delegate methods |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| mscorlib | 892 | 8,256 | 6,731 | 0 | 329 | 80 |
| ScriptCore | 140 | 4,625 | 2,635 | 1,930 | 2 | 56 |
| SimIFace | 793 | 5,990 | 3,492 | 0 | 0 | 436 |
| Sims3GameplayObjects | 9,842 | 55,580 | 54,875 | 0 | 0 | 52 |
| Sims3GameplaySystems | 11,087 | 75,877 | 72,706 | 0 | 0 | 844 |
| Sims3Metadata | 120 | 959 | 910 | 0 | 0 | 8 |
| Sims3StoreObjects | 1,275 | 6,732 | 6,705 | 0 | 0 | 4 |
| System | 138 | 1,340 | 1,278 | 0 | 0 | 12 |
| System.Xml | 477 | 5,177 | 5,013 | 0 | 0 | 20 |
| UI | 1,836 | 14,926 | 11,421 | 5 | 0 | 944 |
| Total | 26,600 | 179,462 | 165,766 | 1,935 | 331 | 2,456 |

TypeDef counts include module/nested definitions. The remaining 13,696 methods
have zero RVA; there are no non-IL methods with a nonzero RVA in this corpus.
The scan read all 10,379,094 bytes of the 165,766 present CIL bodies and decoded
3,765,252 instructions without an IL operand-boundary failure. No method has the
`Native` code-type flag. All 37 AssemblyRefs exactly match selected corpus
assembly name, version, culture and public-key token.

There are 2,266 PInvoke/InternalCall declarations and 2,456 separate runtime
delegate method declarations. Those runtime methods belong to 614 declaring
types. The 615 delegate shapes also include `[mscorlib]System.MulticastDelegate`,
which owns no Runtime method declaration. Delegate shapes are not automatically
native game bridges. Framework-library
InternalCalls remain identified as framework roots. Import module names are
literal metadata: 1,638 `Sims3Common.dll`, 148 `Sims3Common`, 148
`UTFConnector.dll`, and one `oleaut32.dll`. These strings do not prove how the
original host resolves an import.

## Linked lookup indexes

Use `assembly:MethodDef-token` as the method ID within this identified corpus.
Join its assembly name to the central input manifest before interpreting it.
MethodDef tokens are scoped to an assembly and are not native addresses.

| Index | Content |
| --- | --- |
| [Native/runtime declarations](../../evidence/managed/native-methods.jsonl) | 4,722 records with exact MethodDef token, declaring type/name, decoded signature, original signature blob, method/implementation flags and PInvoke import data. `runtime_delegate_shape` separates delegate declarations. |
| [Additional method identities](../../evidence/managed/method-identities.jsonl) | 20,487 non-root definitions referenced by these indexes. Union with the declaration index gives the lookup without duplicate definitions. This is not an all-MethodDef export. |
| [Direct callers](../../evidence/managed/direct-callers.tsv) | 16,676 call/callvirt/newobj/jmp sites whose declared operand resolves to an indexed root: 4,576 native-declaration sites and 12,100 runtime-delegate sites. Each row links source method, exact IL offset/opcode, operand token/kind, and target method ID. |
| [Method references](../../evidence/managed/method-references.jsonl) | 37,693 distinct assembly/token operands used by the published calls/address uses or unresolved call-like references. Original MemberRef/MethodSpec signatures and generic arguments remain explicit. |
| [Callback candidates](../../evidence/managed/callback-candidates.jsonl) | 14,758 `ldftn`/`ldvirtftn` address uses and 615 delegate-type declarations. No `calli` or method-valued `ldtoken` instruction was found in the admitted bodies. |
| [Dispatch candidates](../../evidence/managed/dispatch-candidates.jsonl) | 844 explicit MethodImpl mappings, 1,882 virtual/interface native/runtime declarations, and one direct-call count for every root. These are metadata/operand relationships, not observed runtime dispatch. |
| [Interop metadata](../../evidence/managed/interop-metadata.jsonl) | Parameter sequence/name/flags, exact raw marshal/default/custom-attribute blobs for each native/runtime declaration, and delegate-type attributes. Sequence zero denotes return metadata where present. |
| [Assembly references](../../evidence/managed/assembly-references.json) | Every original AssemblyRef token and its exact selected identity match. |
| [Counts and schema](../../evidence/managed/native-roots-summary.json) | Per-assembly counts, scan dimensions, schema notes and remaining limits. |

Signatures retain the raw signature header, generic parameter count, required
parameter count, return and parameter types. The original blob preserves the
exact metadata encoding, including distinctions not reproduced by a readable
type label. Parameter attributes and marshal descriptors are separate metadata;
do not infer them from a C# `ref`/`out` spelling alone.

## Resolution and open boundaries

A MethodDef resolves within its own PE. A MemberRef resolves only when its
declaring type/name and decoded signature identify one exact declared method
in the validated corpus. A MethodSpec retains its generic argument signature
and names the declared generic method; it does not identify an instantiated
native body. This resolver does not guess inherited-member binding or erase
constructed generic owner arguments to make a match.

There are **24,345 unresolved reference tokens** in the combined index. The
call-like subset contains **24,218 tokens at 91,934 static sites**. The other
127 tokens comprise 85 address-use operand tokens at 108 `ldftn`/`ldvirtftn`
sites and 42 MethodImpl-declaration tokens, with no overlap between those two
groups. These outside-subset references are not added to the call-site count.
Their signatures and available occurrence counts remain in the method-reference index as
`unresolved-or-ambiguous`. They may involve constructed generic owners,
inherited binding, an absent exact declared signature, an unsupported owner or
ambiguity. These possibilities are not individually resolved by that label.
They are not silently classified as irrelevant or non-native. A complete
native-call coverage claim must account for them and the dynamic paths below.

`callvirt` names a declared target, not a proved live implementation. MethodImpl
maps and delegate signatures do not establish a registration site, callback
receiver, ABI, ownership, lifetime, thread or eventual invocation. Reflection,
host-generated calls, native-to-managed entry, virtual/interface dispatch,
generic runtime instantiation and runtime-loaded assemblies need separate
evidence. A root with no identified direct caller is not declared unused.

Native registration-table names may later be joined to these declarations as
explicit candidates, retaining overload ambiguity and assembly identity. An
equal string, import entry point, token ordinal or argument count alone cannot
establish a native function address or marshaling contract.
