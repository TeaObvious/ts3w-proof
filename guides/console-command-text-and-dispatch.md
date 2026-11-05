# Console command text and dispatch

This contract concerns original PC 1.67 `TS3W.exe`. Function names below are
analyst names. The retained stored prototypes have not been retyped; physical
registers, word widths and branch instructions govern their interpretation.
The original managed [CommandSystem](../evidence/managed/types/ScriptCore.CommandSystem.cs)
owns the public façade, AppDomain delegation and interpretation of boxed
arguments. Its `ParseCommandAndArgument` helper is not the native text lexer.

## Original path

| Stage | Input and output | Complete original function |
| --- | --- | --- |
| Token bounds | Bounded UTF-16 input, separator and output pointers; returns its success flag in AL. The six physical stack words are preserved. | [Token reader ASM](../evidence/native/functions/004FFF10_ConsoleCommandText_ReadTokenBounds.asm) ([annotated pseudocode](../evidence/native/functions/004FFF10_ConsoleCommandText_ReadTokenBounds.c)) |
| Parse | Manager in ECX; UTF-16 text and output command frame on the stack, `RET 8`. Resolves the command name before parsing argument variants. | [Parser ASM](../evidence/native/functions/0058A690_ConsoleCommandManager_ParseText.asm) ([annotated pseudocode](../evidence/native/functions/0058A690_ConsoleCommandManager_ParseText.c)) |
| Dispatch | Manager in ECX and resolved frame on the stack, `RET 4`. Performs synchronized lookup, updates frame status and invokes the admitted dispatcher. | [Dispatcher ASM](../evidence/native/functions/0058A2A0_ConsoleCommandManager_DispatchResolved.asm) ([annotated pseudocode](../evidence/native/functions/0058A2A0_ConsoleCommandManager_DispatchResolved.c)) |
| Execute | Manager in ECX and UTF-16 text on the stack, `RET 4`. Allocates and initializes the frame, parses, emits the event and dispatches, then releases it. | [Executor ASM](../evidence/native/functions/0058AB80_ConsoleCommandManager_ExecuteText.asm) ([annotated pseudocode](../evidence/native/functions/0058AB80_ConsoleCommandManager_ExecuteText.c)) |

The registered managed entry is
[Command_ExecuteCommandStringImpl](../api/ScriptCore.CommandSystem/0x0115edc0.md).
The registration, help and list adapters remain separately indexed under
[ScriptCore.CommandSystem](../api/ScriptCore.CommandSystem/README.md).

## Token grammar and pointer ownership

The command caller passes separator `0x20`. Only U+0020 and U+0009 are separators
and are skipped initially. Quotes toggle parity: `ADD` at `004FFF98` and
`TEST BYTE [counter],1` at `004FFFA1` establish this. The decompiler's character
counter test against zero is inaccurate. No backslash escape grammar, Unicode
whitespace expansion or unmatched-quote rejection is established.

An input-final code unit terminates the token independently of quote parity.
A final nonseparator belongs to the token; a final space or tab does not.
The final quote itself is not counted because the last-unit branch precedes
the quote update. Only matching first and last quotes are removed. Embedded
quotes remain in the bounded token.

The next-input output is captured before stripping outer quotes. The function
writes output pointers and local state; it does not modify or temporarily
NUL-terminate the input. An isolated quote can produce token-begin greater than
token-end after stripping. The downstream string constructor's acceptance or
failure in that case remains unproved.

The stored lexer return type is wider than the meaningful result. Success and
failure are determined by AL; upper EAX bits are not a 32-bit Boolean contract.
For the parser, stored `char *` and the decompiler's byte-oriented expressions
must be checked against the actual 16-bit loads and two-byte traversal.

## Parser selection and values

The parser initializes the frame's command identity at `+4` to `FFFFFFFF`,
constructs a bounded command name and looks it up before parsing arguments.
An unknown command exits through that unresolved identity. Arguments occupy
32-byte variants, with the observed kind word at `+0A` and payload at `+10`.
Variant flag bit 4 participates in cleanup; allocation, growth and destruction
helpers remain separate owners.

Numeric conversion receives a pointer into the original NUL-terminated suffix,
not a temporarily isolated token. The fallback name/string construction uses
token bounds. Prefix bytes at `00FCD030` and `00FCD028` are respectively UTF-16
`0x` and `-0x`; their comparison helper's complete case policy remains open.
The corresponding conversions select unsigned or signed 64-bit hex values.

Otherwise a digit, or `-` followed by a digit, enters decimal selection.
`wcspbrk` searches the original suffix for `.eE `: no match or a first space
selects `wcstol` base 10; another match selects `wcstod`, followed by Float32
storage. There is no demonstrated full-token or finite-value check here.
CRT locale, overflow and floating-point environment behavior are not inferred.

Case-insensitive comparisons recognize true aliases `true`, `on`, `yes`, `t`,
`y`, and false aliases `false`, `off`, `no`, `f`, `n`. Their variant kind word is
1 and their payload is a Boolean byte. This matters to consumers such as the
original move-objects command, which checks the actual Boolean variant tag.

## Status and lifetime

The dispatcher locks through manager offset `+48`, resolves the frame identity
and requires the dispatcher at manager `+44`. An admitted frame receives
`XCHG [frame+D8],1`; the virtual callback at slot `+8` runs before unlocking.
The dispatcher returns 1 independently of the callback's return register.

The absent path exchanges status with 2 and returns the previous frame status.
It must not be reduced to constant false without proving the frame constructor's
initial status. Dispatcher backend scheduling and callback threading remain
unresolved.

The executor requests a frame of size `E0`, calls the frame constructor with
identity `-1`, invokes virtual slot `+4`, then parses. A resolved command emits
the event through `00892A80` with the observed words `4` and `0E` plus text,
then invokes the dispatcher. Only dispatch result 1 yields its AL success
flag. Both result paths release through virtual slot `+8`.

The constructor, allocator internals and virtual-slot semantics are not fully
recovered. Their presence proves neither synchronous command completion nor a
particular scheduling thread. The registered script wrapper and the manager's
execution result are distinct return contracts.

## Evidence limits

These are static original-instruction and actual annotated-decompiler findings.
No game execution, command acceptance test, CRT boundary test or threading test
is claimed. Complete owned Listings preserve gaps between Ghidra body ranges;
the code index records bounding envelopes, not bytes fabricated across gaps.
The comments embedded in each canonical pseudocode file state local ABI and
decompiler hazards. Child lookup, conversion, frame-constructor and backend
semantics remain open where explicitly identified above.
