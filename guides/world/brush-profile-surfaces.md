# Brush profile surface input

PC1.67 TS3W.exe. Analyst names describe instruction-supported roles.
The [original scalar raster](terrain-brush-sampling.md) reads a byte at
borrowed data+v*rowPitch+u after unsigned bounds checks. This is not evidence
that every accepted original image is converted to an L8/red-channel array.

## Loader and caller ABI

C88FF0 is cdecl FOUR stack words:key16,preserveSourceFormat,outSurface,allocate.
The earlier seeded single parameter produced false unaff_SI/unaff_EDI expressions.
D1A070 atD1A0EF pushes1,outD0,1,selectedproductprofilekey,then adds10hex toESP.
This caller therefore preserves source-dependent format and allocates a surface.
The resulting profile is used by the scalar raster. The caller does not separately
test AL before selecting its cursor from the same profile key.

C88FF0 selects resource types2F7D0002/4/6 and passes decoder types2/4/6;other
resource types returnAL0 before lookup. It requests the resource stream through
servicevirtual4 with key,outstream,0,1,6. Stream virtual18 supplies source bytes;
virtual20 releases that view andvirtual8 releases the stream. C88D60 receives
five cdecl words,including the output surface policy,not incoming SI/DI values.

## Format and actual conversion boundary

C88D60 initializes the decoder,sets input,loads frames,requires unsigned frame
count>=1 and selects frame0. When preserveSourceFormat istrue,source format40hex
is rejected;10hex selects surfaceformat3 with16setting;20hex selects10 with8setting;
30hex selects11 with16setting;other source formats select2 with8setting. False
preservation selects format10. It copies the frame descriptor before conversion.
Surfacevirtual4 receives width,height,and an8-byte format pair. Virtual10 returns
an output data/pitch view;virtual14 ends that view. Decoder conversion443AA0
forwards descriptor,data,pitch to its pluginvirtual18 with its handle.

444000 maps internal format2->8bits,3..8->16bits,9..10->32bits,11..12->64bits,
other0. Its two indexed jump tables were checked directly against MCP memory and
pristine mapped executable bytes. The necessary27-byte
[format switch tables](../../evidence/world/profile-format-switch-tables.bin)
contain four little-endian target addresses from00444040,then eleven selector
bytes from00444050. Format10 is therefore four-byte storage,not universally L8.

443AA0 physically returns BooleanAL:success normalizes EAX,its failure paths
only clearAL. No invented full-word0 return on failure. Actual channel/palette
conversion belongs to the selected decoder plugin; this forwarding wrapper does
not establish a universal red-channel conversion. Neither that algorithm nor
color-profile runtime acceptance is declared complete here.

D190E0 compares all16 bytes against five static resource identities at11EE970,
980,990,9A0,9B0. It sets brushbyte20 to0/1 for cursor shape. The previous GUID
parameter type was an auto-type artifact; key identity comparison does not turn
image texels into a different footprint or decoder format. Static initializer
names and complete product/cache lifecycle are separate responsibilities.

## Complete canonical bodies

- Resource load: [ASM](../../evidence/native/functions/00C88FF0_ImageResource_LoadProfileSurface.asm) ([annotated Ghidra C](../../evidence/native/functions/00C88FF0_ImageResource_LoadProfileSurface.c)).
- Decode first frame: [ASM](../../evidence/native/functions/00C88D60_ImageResource_DecodeFirstFrameToSurface.asm) ([annotated Ghidra C](../../evidence/native/functions/00C88D60_ImageResource_DecodeFirstFrameToSurface.c)).
- Sculpt caller: [ASM](../../evidence/native/functions/00D1A070_TerrainSculptTool_PrepareProfileAndCursor.asm) ([annotated Ghidra C](../../evidence/native/functions/00D1A070_TerrainSculptTool_PrepareProfileAndCursor.c)).
- Cursor classification: [ASM](../../evidence/native/functions/00D190E0_TerrainBrush_SelectSquareCursorFromProfileKey.asm) ([annotated Ghidra C](../../evidence/native/functions/00D190E0_TerrainBrush_SelectSquareCursorFromProfileKey.c)).
- Format bitcount: [ASM](../../evidence/native/functions/00444000_ImageSurface_BitsPerPixelForFormat.asm) ([annotated Ghidra C](../../evidence/native/functions/00444000_ImageSurface_BitsPerPixelForFormat.c)).
- Plugin conversion boundary: [ASM](../../evidence/native/functions/00443AA0_ImageDecoder_ConvertFrameToPixels.asm) ([annotated Ghidra C](../../evidence/native/functions/00443AA0_ImageDecoder_ConvertFrameToPixels.c)).

Source loader/wrapper cdecl plainRET;cursor thiscall one wordRET4;sculpt caller
thiscall no words/plainRET;format helper stdcall one wordRET4;conversion thiscall
three wordsRET0Chex. Actual annotated decompiler output is retained where external
virtual calls still produce stack aliases; physical statements above followASM.
Originalbytes unchanged,database savedclean. Static comparison only:no executed
profile,codec,allocation,lifetime,concurrency or gameplay acceptance.


## Current installed brush and episode boundaries

Current InstalledTerrainBrush keys a process ConcurrentDictionary by full key,
caches null, has no source/mount generation or eviction and does not catch all
Load factory failures. BrushProfileDecoder decodes RGBA then copies red samples
into BrushTexelGrid; C88FF0/C88D60 source-format-preserving image and D191A0 pitched
byte sampling do not establish universal red-channel equivalence. Five full keys
select cursor shape independently. Actual BeginPaintStroke/BeginWaterStroke/
BeginSculptStroke acquire current construction/installed inputs and retain a
separate episode, funds and timer/sound/history state. Paint uses quarter-grid
and floored snapshots, water uses raw continuous level0 click with no paint width
clamp, sculpt uses a snapped vertex and incremental charge. Existing scalar/raster/
charge guides remain bounded original counterparts; no whole tool/undo/error/
cache invalidation, concurrent mutation or runtime parity follows from code moves.
