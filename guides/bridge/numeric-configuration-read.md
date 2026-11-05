# Numeric configuration: successful default preservation

The [registered numeric reader](../../api/ScriptCore.GameUtils/0x011971e0.md)
binds record011971E0 to EC0FC0. Original PC1.67 executable identity and matching
pristine package assemblies are central in the native/managed evidence indexes.
The following native pairs were reviewed against original instructions and bytes.

## Entry ABI, conversion and result

[EC0FC0 original ASM](../../evidence/native/functions/00EC0FC0_ScriptCore_GameUtils_GameUtils_GetConfigValue.asm)
([annotated C](../../evidence/native/functions/00EC0FC0_ScriptCore_GameUtils_GameUtils_GetConfigValue.c)) is complete through
its two returns, with padding afterward in its existing bounded window. A fresh
60-byte MCP read in /TS3W.exe matches those original bytes. The disassembly tool's
empty listing for this entry does not override the file-backed instruction window.

The original managed declaration is key:string and value:UInt32&. Entry EC0FC0
obtains the scripting interface, converts the first stack argument through slot58,
and branches to EC0FF9 AL0 if either is absent. After PUSH ESI, EC0FE2 loads the
**second** original argument at ESP+0C: the UInt32-ref pointer. EC0FE6 reads its
existing value. That value, converted key and section pointer for Config are
pushed to58AF00; EC0FF3 stores EAX back through the captured ref; EC0FF5 sets AL1
unconditionally. Upper EAX bits are not an independent Boolean contract.

The retained decompiler conflates key/ref parameters around indirect dispatch;
its param_1 spelling is qualified inline. False is not the missing-property
result. Original string conversion failure/runtime-interface absence remain
distinct; no general GC/OOM or arbitrary invalid-ref protection is inferred.

## Service/property fallback and found-value boundary

[58AF00 complete owned ASM](../../evidence/native/functions/0058AF00_FUN_0058af00.asm)
([annotated actual C](../../evidence/native/functions/0058AF00_FUN_0058af00.c)) is72bytes,
33instructions. It preserves section/key in EDI/ESI after three pushes. Service
58BBD0 absent or AL0 from58C5E0 jumps to58AF40, which loads the third original
stackword at ESP+18 and returns it. Thus the existing caller default survives
both service and property absence. On a found value it calls the imported _wtol,
then58ADE0 with section/key/converted integer. The complete string parse, overflow,
postprocessing, case folding and configuration-loading producers remain open
at58BBD0/58C5E0/58ADE0; this local fallback rule does not specify them.
The wide conversion call at58AF2B is through IAT00F964B8; the original PE import
table names MSVCR80.dll::_wtol there. It is an import-resolved indirect call,
not an encoded direct E8 edge or an expanded parsing implementation.

The entry therefore returns true for an admitted converted key even when its
lookup returns the default. A host missing-number lookup that returns false has
a real Boolean-contract mismatch, even if a particular caller ignores it.

## Real managed producer and overload separation

[Complete selected original members](../../evidence/managed/selected/game-time-and-config/members.tsv)
retain CIL and actual annotated C#. ScriptCore060002A5/8bytes simply forwards
the numeric result. SimIFace06000E4F/13bytes delegates the UInt32-ref overload.
CASLogic.SetDefaultBuilderValues0600E938/100bytes initializes2048, calls it for
CASRenderTargetSize atIL000D, discards Boolean atIL0012, then assigns TextureSize.
A status mismatch alone does not prove a visible texture-size regression.

OptionsDialog.SetupResolutionMenu0600025E/993bytes instead calls the string
overload for DefaultResolution. ScriptCore060002A6/19bytes treats a null returned
string as false; otherwise writes the ref and returns true. It is not evidence
of numeric status. Full EC2FC0/58AC60 string/default/conversion lifetime remains
open. Direct callers were bounded to the matching extracted packaged assemblies;
mods, reflection and prepared-code rewriting are separate.

SetDebugOption EC30D0 jumps toEC2980 and includes named option/service dispatch
(for example NoRender), not a proven universal dictionary setter. Its complete
input/category/side-effect/failure contract and relation to numeric/string Config
storage remain unresolved. No equivalence to arbitrary host debug-option maps,
culture parsing or stale numeric overrides is inferred. No original runtime or
gameplay execution is part of this static comparison.
