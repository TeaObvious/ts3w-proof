# Authored Caption text and resource-key input

The reference is the shipped PC 1.67 `TS3W.exe`. The selected base-window
Caption descriptor and its string/count1 commit are established in
[descriptor and empty commit](authored-caption-descriptor-and-empty-commit.md).
This guide follows the actual scalar/array input services and their complete
owned instruction bodies. It does not establish arbitrary class constructors,
resolver providers, allocator failures or whole-layout error recovery.

## Physical inputs and results

Stack offsets refer to the caller's return-address boundary. Custom storage
records actual consumed words and registers; a calling-convention display does
not add another argument.

| Entry | Physical contract | Complete original evidence |
| --- | --- | --- |
| 0054AF20 | Loader ECX; UTF16 text stack4; copied pointer EAX; RET4. | [43I/106B ASM](../../evidence/native/functions/0054AF20_LayoutXml_CopyUtf16IntoArena.asm) ([C](../../evidence/native/functions/0054AF20_LayoutXml_CopyUtf16IntoArena.c)) |
| 00471360 | Cursor ECX; no stack arguments or invented EDX input; text pointer EAX; plain RET. Existing fastcall display retained. | [8I/16B ASM](../../evidence/native/functions/00471360_XmlCursor_ReadLeadingText.asm) ([C](../../evidence/native/functions/00471360_XmlCursor_ReadLeadingText.c)) |
| 004AF360 | UTF16 text stack4, output16-byte key stack8; boolean AL; plain RET, caller removes8. | [89I/209B ASM](../../evidence/native/functions/004AF360_ResourceKey_ParseUtf16Text.asm) ([C](../../evidence/native/functions/004AF360_ResourceKey_ParseUtf16Text.c)) |
| 00471230 | Cursor ECX; arena stack4, character-count output stack8; text pointer EAX; RET8. | [112I/295B ASM](../../evidence/native/functions/00471230_XmlCursor_AppendConsecutiveText.asm) ([C](../../evidence/native/functions/00471230_XmlCursor_AppendConsecutiveText.c)) |
| 004FEF40 | UTF16 text stack4, optional end-pointer output stack8, radix stackC; unsigned64 EDX:EAX; plain RET, caller removes12. | [10I/26B ASM](../../evidence/native/functions/004FEF40_NumericText_ParseUnsigned64.asm) ([C](../../evidence/native/functions/004FEF40_NumericText_ParseUnsigned64.c)) |
| 004FEC40 | Same first3 words; only low byte of stack10 is mode, remaining3 bytes unused. Mode0 selects signed bounds, nonzero unsigned bounds. Shared raw64 EDX:EAX retains the existing longlong display; plain RET, caller removes16. | [219I/725B ASM](../../evidence/native/functions/004FEC40_NumericText_ParseSignedOrUnsigned64.asm) ([C](../../evidence/native/functions/004FEC40_NumericText_ParseSignedOrUnsigned64.c)) |

## Text producer and selected consumer

0054AF20 counts UTF16 units through the first NUL, rounds arena allocation to8
bytes and copies through that terminator. The scalar caller at0054B103 consumes
EAX and stores it at0054B10C. It is a real pointer return, not a global void
interpretation based on an earlier incomplete prototype. Allocation failure at
0054AF5F branches to0054AF6F with EAX0 and still reaches the copy loop. The
normal copy path does not establish a clean null/OOM return contract for that
failed native allocation. CLR allocation, null handling and failure frontiers
are separate.

00471360 borrows its cursor's arena and delegates to00471230. If the cursor is
at a start token1,00471230 advances once, then concatenates consecutive
kind4 payloads only. It stops at the first nontext token, reports character
count, and returns null for zero characters or refill failure. Arena extension
failure at00471289 branches to0047129C past a payload copy, and the failure
at0047131E branches to00471331 past the NUL write. Either path can still reach
a nonnull EAX return at00471354. Thus a nonnull result alone does not prove
complete payload plus NUL. The normal output path uses the UTF16 NUL at
00FAE580 and8-byte alignment. The array caller at
0054B3A6 tests EAX and substitutes its selected empty fallback. This does not
flatten descendant elements or establish every XML entity/comment/error rule.

## Resource-key grammar and commit

004AF360 reads type and group through imported `MSVCR80.dll!wcstoul` with
radix16, requiring a colon at each returned end pointer. It writes those fields
at output+8/+C as it reads them; a later failure does not undo those writes.
Instance uses004FEF40, which pushes mode1 into004FEC40. An optional apostrophe
requires the first value to fit32 bits, then reads another imported32-bit word
and requires exactly8 consumed UTF16 units after the apostrophe. The result
combines the first word as high32 and the second as low32. Only successful
completion writes the instance word. Final NUL or a first space is admitted;
text after that first space is not validated. AL reports success or failure.

Separators and returned end positions, rather than a generic strict hexadecimal
format, determine acceptance. An empty component can leave its end on the
required separator. A failed key parse is distinct from an absent key and does
not select a literal or call a resolver. The selected descriptor's prepared-null
string is cleared on commit, as established by the descriptor guide.

## Numeric instruction order and pseudocode limit

004FEC40 skips only code units below256 whose fixed-address classification byte
has the selected space bits, then handles sign/radix/prefix. It records whether
any digit was consumed, restores the original input pointer when none was, and
consumes valid digits after detecting overflow. Saturation and errno34 precede
final minus negation. In unsigned mode this makes negative overflow return1.
The wrapper's unsigned result and the shared routine's mixed signed/unsigned
mode must remain distinct.

The actual C displays `extraout_ECX` after `__aulldvrm`; that is an incomplete
model of the helper's additional result, not evidence of an uninitialized native
ECX. The CALL at004FED42 targets00F7F480. Instructions004FED47 and004FED4B
store quotient EAX/EDX, and004FED4F stores remainder ECX at stack+2C.
The equal-quotient branch compares the next digit with that stored remainder at
004FEDC0. Together these implement the quotient/remainder overflow threshold
for unsigned64 maximum divided by the admitted radix. Read that physical dataflow
with the actual C; do not translate `extraout_ECX` as an arbitrary host value.

[Exact numeric/text operands](../../evidence/native/data/ui-authored-caption-input.txt)
retain the two256-byte classification/case tables, UTF16 NUL and imported IAT
file word. Initial whitespace includes9..13,32 and160; ASCII case entries
establish the selected hexadecimal letter mapping. Both tables occupy writable
`.data`. The32 recorded direct incoming table references are memory reads;
that finite census does not exclude computed/indirect writers, address escape
outside that census or later locale changes. Initial file bytes are not runtime
immutability. The imported32-bit CRT is a different service from004FEC40;
its resolved SxS version, locale and OS classification must be established
separately before claiming equality with another runtime.
