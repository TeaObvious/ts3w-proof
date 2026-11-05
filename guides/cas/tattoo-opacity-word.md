# Tattoo opacity: original packed-word extraction

This selected contract uses the original PC 1.67 reference identified in the
[overview](../../references/retained-proof-overview.md). Internal names are analyst assignments. Evidence
is static original instructions and actual annotated Ghidra output; no tattoo,
CAS, parser or rendering test was executed.

Original [ScriptCore.CASUtils](../../evidence/managed/types/ScriptCore.CASUtils.cs)
declares `CASUtils_ExtractTattooOpacity(string)` returning UInt32, MethodDef
`0600039D`. Its public wrapper `ExtractTattooOpacity` returns that value directly.
The [registered entry](../../api/ScriptCore.CASUtils/0x011567b0.md) is one
**five-byte E9 jump** to `0x005f5b50`. The Ghidra listing/function body was
incomplete; its boundary is now the actual jump, excluding following padding.
The external identity is preserved. Ghidra expands the target body under that wrapper identity in its C view; the wrapper ASM remains the five-byte jump. [ASM](../../evidence/native/functions/005A5830_ScriptCore_CASUtils_CASUtils_ExtractTattooOpacity.asm) ([annotated pseudocode](../../evidence/native/functions/005A5830_ScriptCore_CASUtils_CASUtils_ExtractTattooOpacity.c))

## Output producer and return

The target is cdecl, one managed-string stack word, UInt32 EAX result. Host
virtual+0x58 uses ECX host and one stack handle, returning the borrowed wide
string pointer. Null returns zero. Otherwise the function constructs a local
preset context and parses that text; their complete grammar and error handling
remain separate.

It initializes a **word output to0** and a **type output to2**, then requests
`ColorAlphaMultiply` through the named-property helper. It ignores both the
helper's Boolean result and the resulting type output. At `005F5BAD` MOV loads
the actual output DWORD into ESI; after destroying the context, `005F5BBA` MOV
copies ESI into EAX. The nonnull path does **not** always return literal zero.
Correct host ABI and typed output pointers expose this mutation in the target's
actual C. This is packed-word extraction; a normalized float-alpha result or
channel interpretation is not established by these instructions.
[ASM](../../evidence/native/functions/005F5B50_Preset_ExtractTattooOpacityWord.asm) ([annotated pseudocode](../../evidence/native/functions/005F5B50_Preset_ExtractTattooOpacityWord.c))

## Named property and four-byte consumer

The named reader takes ECX context and three stack arguments, RET0x0c, AL result.
A missing context+0x28 returns false without writes. Otherwise it converts the
narrow property name through `0x005f5550`, forwards the resulting key word and
both output pointers to the container reader, and preserves that reader's AL
across key cleanup. Full conversion/interning and parser lifetime are open.
[ASM](../../evidence/native/functions/005BF470_PresetProperty_ReadWordByName.asm) ([annotated pseudocode](../../evidence/native/functions/005BF470_PresetProperty_ReadWordByName.c))

The container reader also takes ECX and three stack words, RET0x0c. It iterates
DWORD references from container+0x4c to+0x50, resolves each through a separate
shared resolver, and compares entry+4 with the key by identity. Missing returns
AL0 without output writes. Found writes `typeOut = entryDWORD(+8) & 0xff`, then
invokes entry virtual+4 with ECX entry and stack arguments `(wordOut, 4)`.
Its AL becomes the helper result. The caller's initial type2 is **not** an
expected-type validation here: it is overwritten, and the extraction caller
does not inspect it. Actual copying/failure belongs to the virtual value reader.
[ASM](../../evidence/native/functions/005C1DC0_PresetProperty_ReadWordByKey.asm) ([annotated pseudocode](../../evidence/native/functions/005C1DC0_PresetProperty_ReadWordByKey.c))

The shared resolver, key interning, preset construction/parsing, concrete virtual
value readers, color channels, injection path and final tattoo consumers remain
open. Failure must not be generalized to a successful zero-opacity result merely
because the extraction output was initially zero.
