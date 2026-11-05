# DDS texture loading, mip selection and native copies

## Reference and entry points

These are static original PC 1.67 contracts. Names are analyst names; paired C
files are actual annotated Ghidra exports. Instructions establish AL Boolean
returns, ECX receivers and stack cleanup. Stream and lock-call signature
overrides remove false missing arguments and stack aliases. No decoder, GPU,
world load or gameplay test was executed.

| Responsibility | Original evidence |
| --- | --- |
| Legacy DDS reader | [0060E000 ASM](../../evidence/native/functions/0060E000_DdsTexture_ReadLegacyHeaderAndPayload.asm) ([pseudocode](../../evidence/native/functions/0060E000_DdsTexture_ReadLegacyHeaderAndPayload.c)) |
| Legacy DDS writer | [00616D70 ASM](../../evidence/native/functions/00616D70_DdsTexture_WriteLegacyMipChain.asm) ([pseudocode](../../evidence/native/functions/00616D70_DdsTexture_WriteLegacyMipChain.c)) |
| DWORD byte swap | [0060D430 ASM](../../evidence/native/functions/0060D430_TextureBytes_SwapDwords.asm) ([pseudocode](../../evidence/native/functions/0060D430_TextureBytes_SwapDwords.c)) |
| WORD byte swap | [0060D460 ASM](../../evidence/native/functions/0060D460_TextureBytes_SwapWords.asm) ([pseudocode](../../evidence/native/functions/0060D460_TextureBytes_SwapWords.c)) |
| Format descriptor lookup | [00617F00 ASM](../../evidence/native/functions/00617F00_TextureFormat_FindDescriptor.asm) ([pseudocode](../../evidence/native/functions/00617F00_TextureFormat_FindDescriptor.c)) |
| Tight row bytes | [00617FC0 ASM](../../evidence/native/functions/00617FC0_TextureFormat_TightRowBytes.asm) ([pseudocode](../../evidence/native/functions/00617FC0_TextureFormat_TightRowBytes.c)) |
| Aligned row bytes | [00617FE0 ASM](../../evidence/native/functions/00617FE0_TextureFormat_AlignedRowBytes.asm) ([pseudocode](../../evidence/native/functions/00617FE0_TextureFormat_AlignedRowBytes.c)) |
| Block row count | [00617EC0 ASM](../../evidence/native/functions/00617EC0_TextureFormat_BlockRowCount.asm) ([pseudocode](../../evidence/native/functions/00617EC0_TextureFormat_BlockRowCount.c)) |
| Mip dimension | [00617EE0 ASM](../../evidence/native/functions/00617EE0_TextureMip_ClampDimension.asm) ([pseudocode](../../evidence/native/functions/00617EE0_TextureMip_ClampDimension.c)) |
| Zero-tail mip probe | [0060D790 ASM](../../evidence/native/functions/0060D790_DdsTexture_HasZeroTailMip.asm) ([pseudocode](../../evidence/native/functions/0060D790_DdsTexture_HasZeroTailMip.c)) |
| Leading mip selection | [0060D590 ASM](../../evidence/native/functions/0060D590_DdsTexture_SelectLeadingMips.asm) ([pseudocode](../../evidence/native/functions/0060D590_DdsTexture_SelectLeadingMips.c)) |
| Shape creation selector | [0060D4F0 ASM](../../evidence/native/functions/0060D4F0_Texture_CreateByShape.asm) ([pseudocode](../../evidence/native/functions/0060D4F0_Texture_CreateByShape.c)) |
| Payload and staging copy | [0060D8E0 ASM](../../evidence/native/functions/0060D8E0_DdsTexture_CopyPayload.asm) ([pseudocode](../../evidence/native/functions/0060D8E0_DdsTexture_CopyPayload.c)) |
| Resource factory/configuration | [00722AF0 ASM](../../evidence/native/functions/00722AF0_TextureResourceFactory_Construct.asm) ([pseudocode](../../evidence/native/functions/00722AF0_TextureResourceFactory_Construct.c)) |
| Resource DDS consumer | [00723200 ASM](../../evidence/native/functions/00723200_TextureResource_ReadDds.asm) ([pseudocode](../../evidence/native/functions/00723200_TextureResource_ReadDds.c)) |
| Native 2D creation | [0061A360 ASM](../../evidence/native/functions/0061A360_Texture_Create2D.asm) ([pseudocode](../../evidence/native/functions/0061A360_Texture_Create2D.c)) |
| Native cube creation | [0061A050 ASM](../../evidence/native/functions/0061A050_Texture_CreateCube.asm) ([pseudocode](../../evidence/native/functions/0061A050_Texture_CreateCube.c)) |
| Native volume creation | [0061A0C0 ASM](../../evidence/native/functions/0061A0C0_Texture_CreateVolume.asm) ([pseudocode](../../evidence/native/functions/0061A0C0_Texture_CreateVolume.c)) |
| Texture constructor | [0061A2A0 ASM](../../evidence/native/functions/0061A2A0_Texture_Construct.asm) ([pseudocode](../../evidence/native/functions/0061A2A0_Texture_Construct.c)) |
| Native 2D row copy | [00619910 ASM](../../evidence/native/functions/00619910_Texture_CopyMipRows2D.asm) ([pseudocode](../../evidence/native/functions/00619910_Texture_CopyMipRows2D.c)) |
| Native cube row copy | [00619A20 ASM](../../evidence/native/functions/00619A20_Texture_CopyMipRowsCube.asm) ([pseudocode](../../evidence/native/functions/00619A20_Texture_CopyMipRowsCube.c)) |
| Native volume row/slice copy | [00619AF0 ASM](../../evidence/native/functions/00619AF0_Texture_CopyMipRowsVolume.asm) ([pseudocode](../../evidence/native/functions/00619AF0_Texture_CopyMipRowsVolume.c)) |

## Header admission and format selection

The stream read must return exactly 128 bytes. Ordinary magic is `0x20534444`;
`0x44445320` invokes in-place swapping of all 32 header DWORDs. Crucially,
`BYTE[EBP-5]` is explicitly written **zero both before and after** that branch.
The reader requests no payload byte swapping for either header order.

Admission requires magic, header size 124, pixel-header size 32 and all bits of
flags `0x1007`. Width/height are header `+0x10/+0xC`. Depth is `+0x18` only with
flag `0x800000`, otherwise one; mip count is `+0x1C` only with flag `0x20000`,
otherwise one. Caps2 bit `0x200` chooses six faces. This leaf does not check all
six individual face bits, square/power-of-two dimensions or a universal maximum;
creation/backend rejection is separate. Declared pitch does not determine the
subsequent source row stride.

Pixel flags prioritize FourCC `4`, luminance `0x20000`, RGB `0x40`, then signed
bump data `0x80000`. DXT1/2/3/4/5 become internal IDs `2/4/6/8/10`. Selected
numeric FourCC format values are also admitted; `DX10` is not one of them.
Unsupported mapping fails. RGB/luminance alpha masks are effective only when
pixel flag bit 1 is set. Representative exact branches are:

| Bits / branch | R, G, B, effective A masks | Internal ID |
| --- | --- | --- |
| Luminance 8 | R `FF` | `10` |
| Luminance/alpha 16 | R `FF`, A `FF00` | `24` |
| RGB 24 | `FF0000,FF00,FF,0` | `96` |
| RGB 32 | `FF0000,FF00,FF,0` | `40` |
| RGB 32 | `FF0000,FF00,FF,FF000000` | `3E` |
| RGB 32 | `FF,FF00,FF0000,FF000000` | `42` |
| Signed bump 16 | `FF,FF00,0,0` | `28` |
| Signed bump 32 | `FF,FF00,FF0000,FF000000` | `22` |

The retained [descriptor rows](dds-format-descriptors.tsv) are original seven-word
entries selected by this reader. Lookup uses `00FE93F8 + id*28`, unsigned IDs
below `0x9A`, otherwise descriptor zero. Unknown flag words remain data without
guessed meanings.

## Size arithmetic and writer

Tight bytes use 32-bit `NEG width; SAR xShift; IMUL unitBytes; NEG`. Block rows
use `NEG height; SAR yShift; NEG`. For positive bounded dimensions they compute
ceiling block counts; this does not authorize widening, unsigned shifts or
ignoring overflow. Shift counts use x86 mask 31. A mip dimension uses logical
right shift and replaces zero with one. DXT1 has shifts 2/2 and eight bytes per
block; DXT2..5 use sixteen. RGB24 uses shifts 0/0 and three bytes per unit; L8 one.

The writer takes stream, count and 20-byte records: bits pointer, width, height,
source row pitch and format. It validates supplied mip dimensions, allocates and
zeroes a legacy DDS buffer, copies actual tight row bytes, and advances output
rows by pitch rounded to four bytes. Input advances by the record's own pitch.
It writes through stream virtual `+0x38`, frees the buffer and returns AL.
The reader's tight stepping and writer's four-byte padding must not be silently
declared equivalent for odd-width uncompressed inputs. Format coverage also
differs; universal roundtrip is not established.

## Mip selection, payload and publication

For single-face depth-one data, a final stored mip probe can override normal
drop options. It requires at least three levels and final mip width at most 64,
walks descriptor-sized planes within available memory, and tests the final byte
sum for zero. A positive result requests all but one mip with threshold four.
This is a stored-byte check, not alpha classification. Ordinary dropping uses
requested count/minimum-size options, dimensions greater than seven and a
nonfinal level. A recognized-size 16-byte trailer with nonzero words can reduce
the drop. The local offset array has 17 DWORDs; arbitrary mip-count safety is
not established.

Creation chooses volume for depth at least two, otherwise cube for multiple
faces, otherwise 2D. Exact caller mode byte one uses flags zero; other values
use bit 2. When the target lacks bit 2, filling creates a matching staging
texture with flag `0x100` and later copies to the target. This local upload
staging does not establish a world-loading barrier or asset prefetch schedule.

Payload walks faces, mips and depth using tight sizes and compares remaining
unsigned source bytes before each plane group. Native row copies use independent
source/native pitches; volumes also use independent slice pitches. The 2D
helper has five stack slots and `RET 0x14`; cube/volume have four and `RET 0x10`.
Negative lock HRESULT fails each helper. 2D returns the unlock HRESULT result;
cube/volume ignore unlock result. The ordinary payload caller **ignores all
three copy-helper Booleans**. Its true result does not prove every upload worked.

The resource consumer resets its embedded texture, passes selected drop options,
sets resource word `+0x60` to one atomically after reader success, then updates
memory accounting. Factory configuration produces `ForceHighLODObjects`,
`DropTexMipsOnLoad` and `TextureSizeThreshold` options. Neither leaf establishes
coherent publication across all materials or that simulation waits for textures.

## Unresolved consumers

Alpha thresholds, material blend selection, signed-data CPU color semantics,
UI DDS stream lifetime, complete malformed-input containment, trailer semantics,
GPU retirement and actual world-load ordering remain open. Generic creation
success is separate from resource readiness, visible output and scheduler policy.
