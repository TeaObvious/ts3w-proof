# Object-thumbnail camera selection and section hashes

The reference is the original 32-bit PC 1.67 `TS3W.exe`, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
These two analyst-assigned names describe observed roles; they are not recovered
original symbols. Stored Ghidra ABI, parameter types and return storage were
retained. Original instructions govern misleading decompiler expressions.

## Complete original functions

| Function | Owned original extent | Physical boundary | Interpretation limit |
| --- | --- | --- | --- |
| `ThumbnailCamera_SelectSettingsForResourceKey`, D50170 | D50170..D503F6, 194 instructions / 647 bytes | Receiver ECX, two stack arguments (key and output settings), RET 8; status consumed in AL | Stored `undefined4` / EAX is unchanged. Successful `MOV AL,1` does not define upper EAX or prove a full-EAX Boolean. This function selects settings; it does not calculate bounds. |
| `Hash_Fnv1CrtLowerUtf16Units`, 7CFEC0 | 7CFEC0..7CFEDC and 7CFEE0..7CFF04, 28 instructions / 66 bytes | Two cdecl stack arguments, UTF16-unit pointer and 32-bit count; hash returned in EAX | The three bytes 7CFEDD..7CFEDF are not owned or listed. The code index records a 69-byte bounding envelope, not contiguous instruction coverage. Stored signed count is not a nonnegative-input validation contract. |

[Selector ASM](../../evidence/native/functions/00D50170_ThumbnailCamera_SelectSettingsForResourceKey.asm)
([annotated C](../../evidence/native/functions/00D50170_ThumbnailCamera_SelectSettingsForResourceKey.c)).
[Hash ASM](../../evidence/native/functions/007CFEC0_Hash_Fnv1CrtLowerUtf16Units.asm)
([annotated C](../../evidence/native/functions/007CFEC0_Hash_Fnv1CrtLowerUtf16Units.c)).
Both C files are genuine annotated Ghidra output. Their line-wrapped PLATE
comments were not injected or rewritten after export. The Listing retains the
complete existing owned instructions and their original bytes.

## Settings selected from the request resource key

D50170 starts with `7B8EB805` (DefaultObject), then dispatches on the key's type
word. Type `01661233` (MODL) selects the first key word masked with `00FFFFFF`.
Types `04C58103` / `049CA4CD` select `D2CCD0A2` (DefaultStairs); `04ED4BB2` /
`515CA4CD` select `42EF5CF6` (DefaultPattern). Other types retain the initial
DefaultObject selection unless they take the following fence or object paths.

For fence type `0418FE2A`, the routine copies the four-word key, masks its fourth
word with `FF000000`, and requests the product with flag 1. A null product selects
`BDFC613B` (DefaultFence). A nonnull product first supplies a model-key low-24-bit
hash through the existing C969D0 getter. If that camera lookup misses, product
field +E0 determines `BDFC613B` or `431542D3` (DefaultHalfWall). The actual
`NEG; SBB; AND 8518E198; ADD BDFC613B` sequence is modulo 32 bits. The getter and
field's semantic identities are not established by this function alone.

For object type `319E4F1D`, the working key's fourth word is masked with
`FF000000`. The loop admits at most 20 component/parent iterations. A successful
component read followed by parameter `A6E5F629` resource-key retrieval replaces
the selected hash with that key's first word masked with `00FFFFFF`. A camera hit
uses the existing cleanup helper before returning AL 1. Otherwise, a product
lookup supplies the next four-word parent key from +138/+13C/+140/+144, again
masking the fourth word; null ends the chain. Scoped buffers are retired on each
unsuccessful iteration. The two indirect allocator callbacks retain their actual
CALL forms; no unresolved callee is invented in the call index.

The last attempted model hash survives later component/parameter misses. At the
end, the routine tries that retained hash and then performs an exact DefaultObject
lookup. If the selected hash already is DefaultObject, the literal control flow
can ask for it twice. Missing settings do not cause an unconditional throw or
output clear: [lookup ASM](../../evidence/native/functions/00D4EF30_ThumbnailCamera_FindByHash.asm)
([C](../../evidence/native/functions/00D4EF30_ThumbnailCamera_FindByHash.c)) copies settings only on a hit
and returns AL 0 on a miss, preserving the caller's supplied output.

The retained [request/framing ASM](../../evidence/native/functions/00D57100_ThumbnailCamera_SelectAndFrameRequest.asm)
([C](../../evidence/native/functions/00D57100_ThumbnailCamera_SelectAndFrameRequest.c)) calls D50170 only after the
eligible SceneModel part bounds, displacement and invalid-union fallback have
been prepared. Resource-key camera selection must not be mistaken for the
producer of those bounds or image dimensions.

## FNV-1 over lowered UTF16 code units

7CFEC0 initializes the 32-bit accumulator to `811C9DC5`. Count zero returns that
seed without reading the input. Each iteration zero-extends one 16-bit input unit,
calls the pointer loaded from IAT slot `F96768`, decrements the 32-bit count,
multiplies the accumulator by `01000193`, zero-extends the returned AX, then XORs
that value into the accumulator. It advances the input pointer by two bytes and
repeats until the counter is zero. Multiply precedes XOR: this is FNV-1 over code
units, not FNV-1a, UTF8 hashing or two byte steps per unit. There is no negative-count
rejection in this body.

The pristine PE import table identifies `F96768` as `MSVCR80.dll!towlower`
(descriptor 13, thunk 212, hint 1412). This establishes the nominal imported
operation, not the loaded CRT's runtime locale or non-ASCII mapping. It does not
prove equivalence to .NET `char.ToLowerInvariant`.

[Section-reader ASM](../../evidence/native/functions/00D53830_ThumbnailCameras_ReadIniSection.asm)
([C](../../evidence/native/functions/00D53830_ThumbnailCameras_ReadIniSection.c)) distinguishes ordinary section
names, through 7D0020 / 7CFEC0, from `HashType=model`, through the separate 4FA830
mode-1 and 7CFEA0 path. Those subordinate bodies and their full mapping are not
exported by this two-function addition; the new CRT-lowering evidence must not be
applied indiscriminately to model-section hashing.

## OpenTS3 comparison and remaining decisions

The observations below describe the inspected `ObjectThumbnailCamera` and shared
`ThumbnailCameraIniDecoder` paths. This evidence publication does not modify them
or claim visual/gameplay acceptance.

| Concern | Observed OpenTS3 behavior | Verified original behavior | Difference / decision status |
| --- | --- | --- | --- |
| Selection inputs | Object camera receives the selected model key, choosing a low-24-bit model override or DefaultObject. | D50170 dispatches the original request resource kind, with fence and bounded object-parent paths. | The model-only input cannot express the full selector. Producer/consumer scope must be closed before claiming parity. |
| Settings miss | Object camera requires DefaultObject while loading and throws if it is absent. | Selected-hash lookup then exact DefaultObject lookup forward AL status and preserve supplied output on a miss. | Failure/default handling differs. Existing behavior is not an accepted original contract. |
| Return ABI | Managed calls use ordinary CLR values. | Selector success defines AL only; hash returns a full 32-bit EAX value. | Preserve the distinct machine boundaries; unchanged stored decompiler types are not proof of bool-EAX. |
| Ordinary section hash | Shared INI Merge uses SacsHash for every section name. | The ordinary section path reaches the CRT-lowered UTF16 FNV-1 helper. | Encoding and case policy differ; CRT locale behavior remains an explicit unresolved boundary. |
| Model section hash | Shared Merge ignores HashType; private object hashing uses ToLowerInvariant and a low-24/high-byte fold. | D53830 chooses a separate model-name path instead of the ordinary CRT-lowering path. | A single global hash substitution is not justified. Full model-helper equivalence remains separate from these two exports. |
| Bounds / PreviewBound | Object job supplies rendered-vertex extrema; private parser does not consume PreviewBound. | D50170 calculates neither bounds nor PreviewBound. Earlier D57100 handles eligible native part boxes/displacement; D53830 parses PreviewBound. | Native part admission, displacement and the actual PreviewBound consumer need their own closure; no guessed box substitution follows from this selector. |
| Size handling | Private object size reader requires positive integral float pairs. | Retained D53D90 uses a two-integer conversion count and packed 16-bit rows; dimensions are not produced by D50170. | Size-family lookup, failed-conversion defaults and physical render-target limits remain separate work. |

The [camera/framing guide](thumbnail-camera-and-modular-sections.md)
and [scene-model/rig guide](thumbnail-scene-model-rig-selection.md)
retain the adjoining responsibilities. No additional child-body interpretation,
new resource fallback, GPU lifetime change or OpenTS3 source correction is supplied
by the two exports here.
