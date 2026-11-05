# Native script object lifecycle boundaries

The PC 1.67 registered wrappers retain their existing analyst names, inferred
stored prototypes and original managed ABI. Each stored wrapper body owns one
address byte and has **zero actual Ghidra Listing instructions**. The canonical
raw files explicitly distinguish separate bounded pristine PE decoding from
Listing. Their 52/37/37-byte windows end at their observed RETs; this establishes
bounded wrapper paths, without repairing the stored bodies or proving a recovered
original function extent. Actual annotated Ghidra C is retained verbatim, including
its inferred types and decompiler warnings.

| Entry | Original managed boundary | Final reference |
|---|---|---|
| `0076D1A0` | `Simulator_CreateObjectImpl(UInt64, UInt32, UInt32, Byte[]) -> UInt64` | [ASM](../../evidence/native/functions/0076D1A0_ScriptCore_Simulator_Simulator_CreateObjectImpl.asm) ([C](../../evidence/native/functions/0076D1A0_ScriptCore_Simulator_Simulator_CreateObjectImpl.c)) |
| `0076D1E0` | `Simulator_DestroyObjectImpl(UInt64) -> Void` | [ASM](../../evidence/native/functions/0076D1E0_ScriptCore_Simulator_Simulator_DestroyObjectImpl.asm) ([C](../../evidence/native/functions/0076D1E0_ScriptCore_Simulator_Simulator_DestroyObjectImpl.c)) |
| `0076CDC0` | `Simulator_IsInitDoneImpl(UInt64) -> Boolean` | [ASM](../../evidence/native/functions/0076CDC0_ScriptCore_Simulator_Simulator_IsInitDoneImpl.asm) ([C](../../evidence/native/functions/0076CDC0_ScriptCore_Simulator_Simulator_IsInitDoneImpl.c)) |

## Physical interface binding

Each wrapper calls the existing global getter
[ASM](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.asm) ([C](../../evidence/native/functions/00769390_GetGlobalInterfacePointer_11D5BBC.c)), obtains an interface through virtual `+17C`, and
calls lifecycle `+4` (create), `+C` (destroy), or `+8` (initialization query).
Creation forwards five 32-bit argument words, including the two words of the
instance ID. The other two wrappers forward the two words of the object ID.
These are physical stack observations; the retained inferred decompiler types do
not supersede the original managed declarations. Original creation data has marshal
blob `1D`; the initialization Boolean return has marshal blob `03` (`I1`).

Bounded original bootstrap and constructor evidence links the global at
`011D5BBC` to object `+8`, main vtable `0108C6D0`, and lifecycle vtable `0108C858`.
Main virtual `+17C` points to `00D7D460`, whose adjustment subtracts eight bytes.
The lifecycle slots bind `00D7B9E0`, `00D73700`, and `00D70D50`. None of those
three producer entries has a stored function or containing function. Their
1963/103/77-byte PE paths are separate bounded original evidence, not Ghidra
function bodies, actual Listing or producer pseudocode.

## Create, remove and query

The bounded `00D7B9E0` path selects OBJK creation at `00936990` or the
`00C6EFC0 -> 00C6E960` route. The latter creates before applying its position
scalar of `-20000.0f`. Native success and failure paths return the ID in `EDX:EAX`
or zero. This transport boundary does not implement the original managed property
serializer or `ScriptProxy` constructor, logic substitution, `Init(false)` and
`Dispose` policy.

The bounded `00D70D50` path tests native membership, conditionally calls
`00937E40`, and for a nonzero ID calls main virtual `+10C`, bound to `00D74880`.
That consumer marks or queues script destruction and notifies through a virtual
call. This evidence does not establish that every downstream removal callback
avoids managed `Dispose` inline.

The bounded `00D73700` path returns `AL=true` for an active object. Otherwise it
checks pending script state at `+20h`: a found entry whose state differs from two
returns false; state two or an absent entry returns true. This is the native
query contract, with the original managed Boolean marshaling retained.

## Current project boundary and limits

The Bridge interop workflow preserves raw creation-data adaptation, host lookup,
outfit preparation, registry creation, ownership transfer and initial presentation
order. Its catch attempts outfit cleanup before logging; cleanup and logging can
throw. A presentation failure after the ownership transfer does not reverse it.
Removal keeps the current effect-first, defer-created, destroy-created and resident
fallback order. The query retains created-lifetime, resident-pending and true
fallback behavior. Those are existing project policies; the native paths do not
prove their equivalence to the whole original managed workflow.

Original managed lifecycle and serializer code remain authoritative. The native
comparison neither fills missing database functions nor changes current project
policy. Three complete bounded PE wrapper paths remain distinct from their
incomplete stored metadata and zero Listing coverage. Necessary original table,
scalar and bounded producer bytes are retained in the
[original-data excerpts](../../evidence/native/native-script-object-lifecycle-data.tsv).

## Necessary original support bytes

The original-data excerpts retain the three absent producer paths (2143 bytes),
nine additional support windows (1414 bytes), and four table/scalar excerpts
(48 bytes). The six-byte global getter is reused through its existing canonical
pair above. These excerpts authenticate the claims without presenting raw PE bytes
as stored Ghidra instructions or inventing producer pseudocode.

| Support entry | Bounded bytes | Reference role |
|---|---:|---|
| `00D74520` | 177 | Active object lookup |
| `00D74880` | 232 | Script destruction consumer |
| `00D71060` | 40 | Native membership predicate; absent stored function |
| `00D7F740` | 278 | Global bootstrap |
| `00769390` | 6 | Global getter; existing canonical pair |
| `00D7D460` | 4 | Interface adjustment; absent stored function |
| `00C6EFC0` | 52 | Non-OBJK creation adapter |
| `00C6E960` | 552 | Manager creation and subsequent position |
| `00D7CF50` | 31 | Constructor/destructor prefix only; table assignment |
| `00D7E4A0` | 48 | Constructor prefix only; table assignment |

The 31-byte constructor/destructor prefix and 48-byte constructor prefix are
partial excerpts, not complete function bodies.
The remaining support excerpts are bounded original PE windows; this reference
makes no claim that actual Listing was exported for those support entries.
