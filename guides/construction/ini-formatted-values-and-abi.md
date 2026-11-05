# INI formatted values and physical arguments

Original PC1.67 static instructions, complete caller bodies and actual annotated
Ghidra output. Analyst names are descriptive. No parser or gameplay execution is
claimed. The imported MSVCR80 library is a separate runtime boundary.

## Binding and stack

4EF7F0 is cdecl with four fixed DWORD inputs: INI object, UTF16 section, UTF16
entry name and UTF16 format; variadic output pointers follow. AB0B60 pushes five
words for CostPerBasementTile: section ToolCosts, entry CostPerBasementTile,
format atFA2610 containing UTF16 `%f`, output at tunables+10. It initializes the
tunables even when the resource load fails. An incomplete three-word decompiler
signature does not describe these instructions.

The text lookup at4EF82B uses ECX as the INI object and three pushed words:
section, entry, local buffer. It performs12byte callee cleanup. Its signed result
is tested with JL; a negative result skips conversion and preserves the caller's
output. The wrapper returns0 in that path. Local string allocation/cleanup and
variadic stack addressing are separate from the logical section/key strings.
The saved call-site prototype expresses this physical lookup ABI.

At4EF840 the wrapper calls4FDEA0 with text pointer, format pointer and the ADDRESS
of its first variadic stack word. 4FDEA0 is exactly a five-byte E9 jump to4FDB00.
The three argument-list adapter inputs must not be confused with the INI wrapper's
four fixed inputs and following outputs.

## Argument-list dispatch

4FDB00 scans UTF16 percent markers using the pointer at114F330, initially4FDAF0.
It distinguishes escaped percent and suppressed fields before copying output
pointers to local storage. The scan loop caps its count at20, but actual dispatch
supports only counts0..10. Larger counts return0. The selected scanner pointer
at114F334 initially contains4FD860; each dispatch case expands the corresponding
number of output pointers onto its cdecl call stack. This pointer is data-driven,
so its initial target is not evidence that it can never be replaced.

## Floating output

4FD860 has two fixed UTF16 input/format words followed by output pointers. Its
`e`/`f`/`g` branch calls the imported MSVCR80.DLL `wcstod` at import pointerF964E0,
passing the current text and an end-pointer address. FSTP then stores a binary32
float at the requested output, and the scanner advances its output count. This
body does not test whether a digit was consumed, demand complete text exhaustion,
reject a negative value, or reject a nonfinite result. Other format specifiers
have independent custom integer/character/string branches; standard sscanf
semantics must not be assumed for the whole function.

| Condition at the selected boundary | Established result |
| --- | --- |
| INI text lookup returns negative signed status | No scan call; wrapper returns0; output not overwritten by this wrapper |
| Lookup succeeds; format `%f`; wcstod supplies resultR | Binary32 conversion ofR is stored; scanner increments the field count |
| wcstod end pointer leaves trailing text | The `%f` branch has no complete-text gate |
| wcstod reports no digit consumption | The scanner still stores its returned numeric result and increments the field count |
| Converter format needs more than10 outputs | Current dispatch returns0; its loop cap20 does not grant20-output support |

The imported CRT's exact lexical grammar, locale, range errors and special-token
behavior remain separate questions. Duplicate INI key selection and section/key
comparison require the actual virtual text lookup's producer. They are static
research boundaries, not claims that every parser question requires launching the
game. These remaining boundaries do not justify adding an invented numeric clamp.

## Complete original functions

| Address | Analyst name | Original evidence |
| --- | --- | --- |
| 004EF7F0 | Ini_ReadSectionFormattedValue | [ASM](../../evidence/native/functions/004EF7F0_Ini_ReadSectionFormattedValue.asm) ([annotated C](../../evidence/native/functions/004EF7F0_Ini_ReadSectionFormattedValue.c)) |
| 004FDEA0 | Utf16Scan_ForwardArgumentList | [ASM](../../evidence/native/functions/004FDEA0_Utf16Scan_ForwardArgumentList.asm) ([annotated C](../../evidence/native/functions/004FDEA0_Utf16Scan_ForwardArgumentList.c)) |
| 004FDB00 | Utf16Scan_DispatchArgumentList | [ASM](../../evidence/native/functions/004FDB00_Utf16Scan_DispatchArgumentList.asm) ([annotated C](../../evidence/native/functions/004FDB00_Utf16Scan_DispatchArgumentList.c)) |
| 004FD860 | Utf16Scan_ConvertFormattedFields | [ASM](../../evidence/native/functions/004FD860_Utf16Scan_ConvertFormattedFields.asm) ([annotated C](../../evidence/native/functions/004FD860_Utf16Scan_ConvertFormattedFields.c)) |
| 00AB0B60 | LotSettings_LoadToolTunables | [ASM](../../evidence/native/functions/00AB0B60_LotSettings_LoadToolTunables.asm) ([annotated C](../../evidence/native/functions/00AB0B60_LotSettings_LoadToolTunables.c)) |
