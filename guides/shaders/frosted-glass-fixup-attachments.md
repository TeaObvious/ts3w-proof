# Frosted-glass fixup attachment update

The complete PC1.67 native body at `006FF7A0` updates a collection of renderer attachments. `WeatherGeometry_UpdateFrostedGlassFixupAttachments` is an analyst name, not recovered source. [Original ASM](../../evidence/native/functions/006FF7A0_WeatherGeometry_UpdateFrostedGlassFixupAttachments.asm) ([annotated Ghidra pseudocode](../../evidence/native/functions/006FF7A0_WeatherGeometry_UpdateFrostedGlassFixupAttachments.c)).

| Input or stage | Instruction-backed behavior |
| --- | --- |
| Physical ABI | ECX holds the collection receiver; one incoming stack DWORD is consumed by `RET 4`. Its low byte controls whether a replacement is attached. Existing Ghidra ABI/types are retained. |
| Collection | Traverses the receiver's node/bucket structure, ending at receiver+`0x1028`. Null nodes/owners and unsuccessful virtual interface queries are skipped. Collection membership and caller selection policy are not established here. |
| Descriptor admission | The virtual query receives `0x017F1D88`. The descriptor helper result must contain bit `0x00020000`. The helper's stored analyst name is not an independent type definition. |
| Removal | Qualifying descriptors call `006DD260` at descriptor+`0x210` with `0x0D646E03` before the enable byte is examined. Thus disabling still performs removal. The child helper is not expanded in this contract. |
| Replacement | Enabled state allocates 12 bytes at alignment 4, tagged `Renderer/FrostedGlassFixupLOD`, then invokes `00693FE0` with outgoing arguments 0 and 1. A successful result receives virtual slot 0 before attachment. |
| Publication and release | Calls descriptor virtual slot `0x80` with the result and `0x00FF3834`, then virtual slot 4 on a nonnull result. Null allocation also reaches the attachment call with null. No GPU draw is performed in the selected body. |
| Producer/consumer limits | The recorded incoming call is `00D6F726`; its full caller and the collection producer are not expanded. The attachment target, lifetime helper semantics and fixup shader are not reconstructed by this body alone. |

## Relationship to object snow and frost

The render-component publisher separately emits the snow-disabled value from mask `0x001E0000` and the frost-disabled value from mask `0x001C0000`; the latter excludes the roof bit. [Publisher ASM](../../evidence/native/functions/0095E690_Seasons_PublishObjectSnowDisableState.asm) ([pseudocode](../../evidence/native/functions/0095E690_Seasons_PublishObjectSnowDisableState.c)). The selected attachment-update body contains no direct test of either mask. Its descriptor `0x20000` flag must not be substituted for the render-component roof bit merely because the numeric bit value matches. A complete link between published material commands and final fixup/shader admission remains open.

## Evidence status

Static evidence: all 95 original instructions and 258 owned bytes, stored function boundaries, entry references, physical stack behavior and exact complete annotated Ghidra C. The allocation call has eight outgoing DWORDs in ASM; the existing allocator decompiler prototype omits some, so its rendered argument list is incomplete. The function's own ABI was not changed. No runtime, weather transition or GPU-rendering test establishes the final visual effect.
