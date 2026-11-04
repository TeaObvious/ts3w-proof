# Enumeration simple-name roots

This is a bounded static PC 1.67 finding for two explicitly registered native
entries. It establishes concrete code candidates and managed forwarding, while
function ownership and downstream lookup/string semantics remain unresolved.
The original registration names are `MonoScriptHost_GetEnumSimpleName` and
`MonoScriptHost_GetEnumSimpleHash`; the latter does not contain `NameHash`.

## Binding and candidate bodies

The original [host binder ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d7e9f0.asm.txt)
([Ghidra C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d7e9f0.c))
contains direct binding calls at D7EB06 and D7EB15 to E82820, with target addresses
D7CE10/D7CEA0 and name-string pointers 0108CEAC/0108CE74. These are executable
binder arguments rather than rows in the eight-byte registration tables.
The current [registration index](../../indexes/native-registrations.tsv) records
this distinct source kind.

| Entry | Managed declaration | Independently decoded candidate body | Direct control flow |
| --- | --- | --- | --- |
| D7CE10 | ScriptCore MethodDef 06000548: String(Type, UInt64) | D7CE10..D7CE9B, 140 bytes / 44 instructions | Two internal branches; one return at D7CE9B. |
| D7CEA0 | ScriptCore MethodDef 06000549: UInt32(Type, UInt64) | D7CEA0..D7CF4D, 174 bytes / 58 instructions | Lookup branch plus NUL-scan loop; returns at D7CF23/D7CF4D. |

All candidate-root instruction starts are reachable through the roots' direct
CFGs, and neither root contains an indirect jump. Original bytes are independently
read from the identified PE. These are **candidate code intervals**, not confirmed
Ghidra function bodies: no function creation, database boundary change, native
pseudocode production or original runtime execution is claimed here. Padding after
the returns supports the separation but is not the sole boundary criterion.

## Physical contract

Both roots immediately dereference the first stack argument at +4 and then its
field +4, without a local null guard. E71040 receives that field; its returned
pointer and the original UInt64 low/high words are passed to D7CC60. The caller
loads global 011EF514 into ECX, although D7CC60's observed body loads its own ECX
before the typed lookup helpers. Do not invent a receiver requirement from that
caller load alone. The roots save/restore ESI/EDI, reserve 0x90 local bytes and
use plain `RET`, with no immediate argument-pop count. Native stack slots are
Type-like pointer, UInt64 low word, UInt64 high word; generated or managed
calling-convention labels do not replace this instruction evidence.

When D7CC60 returns nonzero, both roots use pointer field +0C as narrow text.
When it returns zero, both initialize a local text-output descriptor and call
930FA0 with the **original two UInt64 words** and the NUL-terminated format string
at FBA898: `%I64x` (bytes `25 49 36 34 78 00`). This is a hexadecimal formatting
request. It is not a decimal fallback and is not proved equivalent to `Enum.ToString`
or flag-name composition. The formatter's truncation/error/locale behavior and
successful buffer invariants remain separate dependencies.

D7CE10 pushes the selected text pointer, invokes E75550, pushes its EAX and calls
EA43B0, returning that result in EAX. E75550 loads TLS index 011969DC and calls
KERNEL32 `TlsGetValue` through IAT F96208. It is a TLS lookup, not a proven string
converter. EA43B0 receives the TLS result and text pointer; its managed-string
allocation/encoding/error and ownership contract still needs proof. The managed
return declaration alone cannot fill in those details.

D7CEA0 hashes the selected text through 7CFE50. For a found record, it counts
bytes to the first NUL and excludes the terminator. For a lookup miss, it
passes the descriptor's end-minus-begin byte count directly. The already reviewed
[hash helper ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007cfe50.asm.txt)
([Ghidra C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007cfe50.c))
starts at 811C9DC5, multiplies by 01000193, then XORs the imported `tolower`
result for each signed byte, with UInt32 arithmetic. A zero byte count returns
811C9DC5. This is lowercase FNV-1 order, not FNV-1a. Non-ASCII and locale behavior
remain constrained by the MSVCR80 `tolower` dependency and signed-byte input.

## Lookup and managed boundaries

The selected D7CC60 helper reads an unsigned byte at `[argument1+4]+6`, subtracts
3 and uses an unsigned upper-bound check against 8. Tags outside 3..11 return
zero. The admitted tags dispatch through nine original DWORDs at D7CD44..D7CD67:

| Tag | Branch target | Typed child target |
| --- | --- | --- |
| 3 | D7CCA6 | D7A960 |
| 4 | D7CC92 | D7A6D0 |
| 5 | D7CC7E | D7A440 |
| 6 | D7CCCE | D7ABF0 |
| 7 | D7CCBA | D7A960 |
| 8 | D7CCF6 | D7B100 |
| 9 | D7CCE2 | D7AE80 |
| 10 | D7CD23 | D7B640 |
| 11 | D7CD0A | D7B380 |

Each child path loads 011EF514 into ECX. Tags 10/11 forward both value words;
other branches forward the low word to their respective helpers. D7CC60 cleans
three stack words with `RET 0C`. The dispatch alone does not establish child
comparison width, signedness, enum aliases, field order, cache ownership or
flags policy. The descriptor pointer and +0C string require their producer.

Fresh ILSpy inspection of the [identified pristine ScriptCore assembly](../../evidence/managed/enum-roots/provenance.json) confirms
public wrappers [06000586 IL](../../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleName.il.txt) ([C#](../../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleName.cs))
and [06000587 IL](../../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleHash.il.txt) ([C#](../../evidence/managed/enum-roots/ScriptCore.Simulator.GetEnumSimpleHash.cs)), eight IL bytes each: load Type, load UInt64,
call 06000548/06000549 at IL_0002, then return. They perform no local null/type/
value validation. The declarations are private static P/Invoke methods of
`Sims3Common.dll`: [06000548 IL](../../evidence/managed/enum-roots/ScriptCore.Simulator.MonoScriptHost_GetEnumSimpleName.il.txt) ([C#](../../evidence/managed/enum-roots/ScriptCore.Simulator.MonoScriptHost_GetEnumSimpleName.cs))
and [06000549 IL](../../evidence/managed/enum-roots/ScriptCore.Simulator.MonoScriptHost_GetEnumSimpleHash.il.txt) ([C#](../../evidence/managed/enum-roots/ScriptCore.Simulator.MonoScriptHost_GetEnumSimpleHash.cs)). The custom binder is the native connection. No observation of
original runtime marshaling or enum execution is inferred from those declarations.

A bounded E8/E9 byte-pattern scan of the original `.text` found no direct native
call/jump to either root. It does not search indirect runtime calls and cannot
establish absence of callers. These roots remain relevant because the explicit
binder and original managed declarations provide independent entry provenance.
