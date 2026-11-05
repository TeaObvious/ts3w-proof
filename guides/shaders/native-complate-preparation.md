# Native complate program preparation

## Artifact and selected evidence

This is static analysis of the pristine PC 1.67 `TS3W.exe` identified in the
[reference overview](../../references/retained-proof-overview.md). The current inferred prototypes and types
remain provisional. No game, editor, compositor or shader was executed.

| Native entry and analyst name | Complete original instruction envelope and actual annotated Ghidra C |
| --- | --- |
| `005C0310` ComplateNative_BuildPrograms | [ASM](../../evidence/native/functions/005C0310_ComplateNative_BuildPrograms.asm) ([C](../../evidence/native/functions/005C0310_ComplateNative_BuildPrograms.c)) |
| `005C22D0` ComplateNative_CompileDestinationTree | [ASM](../../evidence/native/functions/005C22D0_ComplateNative_CompileDestinationTree.asm) ([C](../../evidence/native/functions/005C22D0_ComplateNative_CompileDestinationTree.c)) |
| `005BA4A0` ComplateNative_CompileStep | [ASM](../../evidence/native/functions/005BA4A0_ComplateNative_CompileStep.asm) ([C](../../evidence/native/functions/005BA4A0_ComplateNative_CompileStep.c)) |
| `0049F000` Bytes_CompareCaseFolded, reused byte comparer | [ASM](../../evidence/native/functions/0049F000_Bytes_CompareCaseFolded.asm) ([C](../../evidence/native/functions/0049F000_Bytes_CompareCaseFolded.c)) |

Complete Ghidra Listing bodies cover 1,053 instructions and 3,244 original bytes.
The full envelopes contain 3,256 bytes. The destination compiler's three body
ranges omit 12 interior alignment bytes; those bytes remain visible in its linear
original-byte envelope. All Listing bytes, full envelopes and 77 direct E8 call
sites were checked against the reference executable. Two independent actual
annotated MCP decompiler readbacks agree for all three functions. Whole-file
Original and Modified FileBytes remain equal to the pristine executable.

## Wrapper status and native call chain

`005C0310` consumes ECX and three stack arguments and returns with `RET 0x0C`.
The instruction at **callsite `005C0378` targets function `005C22D0`**. The wrapper
returns a success byte in AL: missing owned state or failed native compilation
clears AL, and success writes AL=1. It does not normalize upper EAX into a
full-width Boolean. The current uint-like decompiler expression is retained as
an analysis artifact, with that limitation stated in its original-function
comment. Its optional retention branch visits result entries after success;
the full resource lifetime is outside this selected status contract.

`005C22D0` traverses native part/destination/step data, constructs compositor or
fabric resource records, calls the operation-property compiler at `005BA4A0`
(callsite `005C25CC`), and visits child nodes recursively (callsite `005C29CA`).
These are native preparation mechanisms, rather than managed Metadata methods.
The complete initial object and ordinary-wall producer chains are unresolved.

## Enabled admission differs between the native and managed originals

The native step loop obtains enabled text and passes it through the native
expansion helper `005B92A0` at callsite `005C256A`. Selected instructions then
compare it with the original six-byte NUL-terminated literal `false` at
`00F99C00`. The literal was verified directly in the reference PE.

At `005C2599`, the byte comparer receives the lesser of the text length and five.
The subsequent length tests require exactly five characters before the branch at
`005C25B2` omits the step. Other text reaches the native operation compiler. The
reused comparer applies the original CRT byte `tolower`; this is not Unicode
case folding and no non-ASCII equivalence is claimed.

The original managed [TextureStep construction](managed-complate-preparation.md)
has a different gate: empty text is enabled, while nonempty text must parse as
Boolean true; malformed or false text yields no managed step. Similar managed
and native operations therefore do not prove interchangeable admission. The
complete native expansion helper's arithmetic, formatting and error behavior
is not established by this selected gate review.

## Selected DrawFabric key production

`005BA4A0` writes a native class property and dispatches operation-specific
property helpers. Its selected DrawFabric branch expands the pattern name,
hashes it, resolves a key through native owner lookup `005B82F0`, and writes that
key under property `DCFF6D7B`. Lookup failure propagates false from this branch.
The full helper grammar, exact pattern selection and reservation/retirement
lifetime remain unresolved. Unknown-class downstream acceptance is not proved
by the operation compiler's return value.

## Coverage limits

The selected functions establish a native preparation route alongside original
managed Metadata processing. They do not establish the full initial catalog,
wall, CAS, design-swap, threading, cache, lifetime, serialized acceptance or pixel
contract. In particular, the initial producer is not assigned to managed policy
merely from matching template/expression/step vocabulary. Native parameter
recovery remains incomplete and no signature/type repair is claimed here.
