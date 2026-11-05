# Original x86 formatter argument cursor

The original PC 1.67 chain starting at `005F6250` forwards the caller's argument area to a format-directed consumer. The consumer advances a running pointer by different amounts for width, precision and value operands. This establishes an operational variadic argument stream after the wrapper's two fixed inputs. It does not recover the original source declaration or identify a particular CRT implementation.

All conclusions below are static instruction and data-table findings for the [PC 1.67 reference](../../references/pc-167.md). The [instruction ledger](../../evidence/native/text-formatting/instruction-contexts.tsv) includes exact bytes, VAs, RVAs, PE file offsets and the retained GNU/LLVM disassembly. Its [boundary record](../../evidence/native/text-formatting/context-boundaries.json) distinguishes stored ranges from selected caller contexts and singleton metadata. These are qualified instruction records, **not canonical ASM/C function exports**; no replacement C or enlarged function body is supplied. The [context lookup](../../indexes/formatter-argument-contexts.tsv) resolves the ten finite contexts.

## Call chain and input boundary

| Entry | Verified responsibility in this slice | Retained range, exclusive end / bytes |
| --- | --- | --- |
| `005F6250` | Passes destination, format word and address of caller argument area; returns destination in EAX | `[005F6250,005F626A)` /26; read-only stored-body snapshot |
| `00930DA0` | Forwards that same area pointer on four formatting attempts; destination/growth handling is not closed here | `[00930DA0,00930EC9)` /297; historical inventory |
| `004F3140` | Direct tail jump to `004FC070` | `[004F3140,004F3145)` /5; historical inventory |
| `004FC070` | Builds byte-output state and calls the engine | `[004FC070,004FC0DA)` /106; historical inventory |
| `004FBAC0` | Walks the format and consumes value operands | `[004FBAC0,004FBFDF)` /1,311; historical inventory |
| `004FAD80` | Parses the descriptor and consumes star operands through a pointer to the same cursor | `[004FAD80,004FB0ED)` /877; historical inventory |
| `004FACC0` | Copies bounded byte-output spans into adapter state | `[004FACC0,004FAD3D)` /125; historical inventory |

Let `W` be ESP at entry to `005F6250`; all offsets in the frame equations are hexadecimal. The destination word is at `W+4` and the format word at `W+8`. After PUSH ESI, `005F6259 LEA EAX,[ESP+10h]` computes `W+0Ch`: the address immediately beyond those two inputs. It does not load one fixed third value. The wrapper passes this address and the format word on the stack, puts the destination in ECX, calls `00930DA0`, copies the preserved destination to EAX and executes plain RET. Caller cleanup is retained.

The read-only wrapper snapshot was named `FUN_005f6250`, with current-model return `void *`, convention `__cdecl`, two fixed formals `void * param_1` and `undefined4 param_2`, and an unknown stack projection `uStack0000000c`. These are recorded projections, not recovered source types. In particular, the format word's character type and the internal variadic flag were not independently exposed. An ellipsis after the same two unchanged fixed formals is supported as a compatible representation of the original running argument area; no signature adoption or canonical wrapper pair is asserted by this reference.

Two selected real CALLs corroborate the input boundary. `005F6BE0` pushes its extra formatting word at `005F6C08`, then format and destination, calls at `005F6C18` and cleans `0Ch` at `005F6C28`. In `005F67C0`, PUSH EDI at `005F694B`, format at `005F6961`, and destination at `005F6966` precede CALL `005F697D`; ADD ESP,0Ch follows at `005F6989`. Each selected call supplies one extra word. `005A57B0` is an E9 jump context to `005F67C0`, not another direct formatter CALL: its retained metadata owns only one byte, while decoding the E9 requires five bytes. These are finite captured dependents, not an image-wide caller census.

`00930DA0` passes the same incoming area-pointer value to `004F3140` at `00930DDD`, `00930E11`, `00930E82` and `00930EB0`. Each site passes four physical stack words and has explicit `ADD ESP,10h` cleanup. Its RET8 at `00930E31` balances its two stacked inputs. It does not itself dereference or advance the argument-area pointer. Growth/retry policy remains a separate dependency: reusing the starting area value does not guarantee that an aliased output or `%n` side effect occurs only once.

## The same cursor reaches parser and value engine

For adapter entry ESP `P`, the four physical caller words are destination at `P+4`, count at `P+8`, format at `P+0Ch` and argument-area pointer at `P+10h`. `004FC073` loads the fourth word; `004FC087` pushes it. `004FC093` loads the format, and `004FC0AD` calls the engine with EAX=format and stacked callback `004FACC0`, output-state address and argument-area pointer. The adapter removes those three words and returns with plain RET. Its separate four-word interface does not introduce another fixed formal in the wrapper.

For engine entry ESP `Q`, its stable ESP after allocation and four saved-register pushes is `S=Q-848h`. The area pointer is stored at `S+854h=Q+0Ch`: the engine's own pointer-argument slot. `004FBB52` takes that slot's address and supplies it to `004FAD80`. After parser entry ESP `T` moves by `24h`, the load at `004FAD84` resolves to `T+8` and puts that address in EBX. Thus parser updates through `[EBX]` change the cursor subsequently consumed by the engine.

Width `*` at `004FAE40..004FAE45` advances `[EBX]` by four and reads the DWORD at the old pointer. Precision `.*` does the same at `004FAEA6..004FAEAB`, in width-then-precision order. The value path advances that same slot again. The loop at `004FBFBA..004FBFBE` retains the updated cursor for the next specifier. The floating-path store encoded as `[ESP+858h]` follows a four-byte push, so it still addresses `S+854h`; it is not another cursor.

Advancing this local pointer word does not by itself rewrite the wrapper's argument data. Explicit `%n` stores, output aliases and unexpanded helpers can cause other writes. No general noninterference, persistent-pointer ownership, readable-area length or lifetime guarantee follows.

## Operand widths and counterexamples

The [dispatch data](../../evidence/native/text-formatting/dispatch-data.json) retains all four selector/target pairs, the `%n` store table and both null-string fallbacks: 360 separately addressed data bytes. Every table target used in this slice is a checked instruction start. These data ranges are outside the retained function-owned ranges.

| Selected format path | Operand read and cursor advance | Concrete boundary |
| --- | --- | --- |
| Width `*` | DWORD; +4 | Negative width is negated and adjustment flag set to zero. `INT_MIN` remains `80000000h` after ordinary 32-bit NEG. |
| Precision `.*` | DWORD; +4 | Negative star precision is replaced with zero. |
| `d i X b o u x`, default/ordinary integer length | DWORD; +4 | `hh`/`I8` and `h`/`I16` select low8/low16 with sign or zero extension; the area stride remains4. |
| Those integer conversions with `ll` or `I64` | Two DWORDs; +8 | Integer tag15 is normalized to tag5 inside the integer-value branch only. |
| Those integer conversions with `I128` | Cursor +16 | These branches do **not** load a new 16-byte value. They feed previously held local words to a renderer; correct 128-bit formatting is not established. |
| `A E F G a e f g`, including `L` modifier | QWORD x87 load; +8 | `004FBD25 FLD QWORD PTR [EAX]`; tag10 does not widen this read. Completed instruction/x87 behavior and exact rendering remain separate. |
| `s S` | Pointer DWORD; +4 | Final tag11 walks WORD elements through `004FDFA0`; other tags walk BYTE elements. Lowercase default is narrow, uppercase default uses tag11; `l` forces tag11 and `h` the narrow path. No complete Unicode contract. |
| `c C` | Low BYTE from a four-byte slot; +4 | Both branches, including tag11, read only the low byte. A wide-character output implementation is not established. |
| `n` | Destination pointer DWORD; +4 | Writes the current EBX count through that pointer, with no local null guard on this path. Store width depends on the numeric tag below. |
| `p` | DWORD; +4 | Parser forces tag14, precision1 and conversion `x`; this is not a recovered portable pointer type. |
| Immediate `%%` | No operand; +0 | A star already parsed on another unusual/unsupported conversion can still have consumed a word before dispatch. |

The integer loads and advances are pinned at `004FBBF1..004FBC67` and `004FBC86..004FBD19`; the I128 advances are at `004FBBBA` and `004FBCC3`. String consumption is at `004FBD51..004FBDCD`; character consumption at `004FBE69..004FBE96`; count-pointer consumption at `004FBE20..004FBE2C`.

For `%n`, length tags1,2,3,4,5 select stores of **1,2,4,4,8 bytes** through the table at `004FC054`. Other tags use the four-byte default. The eight-byte case writes EBX and its sign extension at `004FBE55..004FBE5A`. Consequently `%lln` stores8 bytes, but `%I64n` stores4: the tag15-to5 normalization is absent from this branch. Modifier spelling does not establish a general source-language type-size contract.

Static examples make the order explicit: a completing `%*.*lld` path consumes width4, precision4, then value8, totaling16 consecutive bytes; `%d%d` consumes two successive DWORDs; a character word `1234ABCDh` supplies byte `CDh` while advancing4. None was executed. They assume readable selected operands, completed parser/instruction paths and no intervening alias write. A cursor at `FFFFFFFCh` can wrap to zero after +4; no checked end pointer accompanies these paths.

Decimal width/precision parsing uses ordinary 32-bit arithmetic. Width is tested with signed `JG` against `800h`. Precision uses a signed comparison with a `7FFFFFFFh` sentinel exemption. These comparisons are not a total malformed-format validator, overflow check or unconditional safe output limit.

## Output state, errors and remaining dependencies

The adapter's 16-byte state contains byte-buffer pointer at+0, copied offset at+4, effective count at+8 (zero if destination is null) and a flag byte at+0Ch. The bounded callback copies no more than the computed remaining count on the examined paths and latches the flag when a request exceeds that count. Its truncation scan classifies leading bytes below `C2h`, below `E0h` and below `F0h` as lengths1,2,3; it stops at `F0h` or higher. It does not validate continuation bytes or establish complete UTF-8 correctness. Copy target `00F7F286` remains unexpanded and has no assigned standard-library identity here.

After a nonnegative engine result, a nonnull destination gets a byte NUL at destination+result when result<count; otherwise at destination+count-1 when count>0. This physical store rule is not a complete error/truncation/count-accuracy contract. The engine generally increments its logical count using requested output lengths, not the callback's copied count, and treats callback -1 separately.

The actual argument area and string operands must be readable for the selected consumption; `%n` destinations must be writable. No type/count/alignment/encoding validator or complete lifetime contract for the unnamed area is established. Numeric helpers `004FB1C0`, `004FB3E0`, `004FB650`, WORD conversion `004FDFA0`, copy helper `00F7F286` and allocation/growth/error helper `005F6200` remain dependencies. Full malformed-format behavior, x87 exception/rounding effects, all caller roots and runtime behavior remain open. The evidence supports the original cursor contract without claiming the formatter is completely reconstructed or universally safe.
