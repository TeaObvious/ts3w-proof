# PC whole-tree billboard UV, fade and alpha

Reference: pristine PC1.67 `TS3W.exe` and matching `Shaders_Win32.precomp`, identified in the [central reference](../../references/retained-proof-overview.md). Native names are analyst assignments; types and decompiler register liveness remain inferred where stated in the actual annotated C. Shader C is a complete instruction translation, not Ghidra native C or an executable replacement. This guide closes the **clear, ordinary-world capability0x104** path selected by the [existing option/SSET contract](near-alpha-lod-and-fsaa.md#global-options-and-the-actual-selected-variant). It does not certify all seasonal/capability variants or hardware alpha rounding.

## Admission and actual techniques

[definition selection ASM](../../evidence/native/functions/007100C0_Flora_SelectBillboardShaderDefinitions.asm) ([annotated pseudocode](../../evidence/native/functions/007100C0_Flora_SelectBillboardShaderDefinitions.c)) retains the first definition in cluster+4C8. Template byte+172 contributes `OPT_NORMAL_MAPPED`, weight3. Adding `OPT_HORIZONTAL`, weight6, selects the second definition at+504. Thus the bounded clear base selects vertical0 / horizontal6, or vertical3 / horizontal9 with that template flag. The selected main programs are unchanged by that flag in this capability block.

[category owner ASM](../../evidence/native/functions/00710BD0_Flora_DrawNearCategoriesAndBillboards.asm) ([annotated pseudocode](../../evidence/native/functions/00710BD0_Flora_DrawNearCategoriesAndBillboards.c)) selects category0 for ordinary mode0 without context flags88hex. Bit8 selects shadow category2; bit80 selects pick category3. The separate alpha-edge mode1 may select category1. The four DWORDs at115C404 are **0,1,2,3**, mapping categories to technique ordinals. The final ordinary billboard dispatch requires template type !=2, mode0, and batch byte+55 or draw-context byte+14. This is more specific than finding a stored technique.

[billboard dispatch ASM](../../evidence/native/functions/0070F110_Flora_DrawBillboardVariants.asm) ([annotated pseudocode](../../evidence/native/functions/0070F110_Flora_DrawBillboardVariants.c)) submits the vertical packet+4CC through definition+4C8, and horizontal packet+508 through definition+504. Each packet has its own construction/admission byte (+4F4/+530). It further uses `abs(normalize(cameraPosition-clusterCenter).y)`: below binary32 **0.15** disable horizontal; from0.15 through **0.85** allow both; above0.85 disable vertical. Category1 instead splits at **0.45**. These are cluster admission gates, distinct from per-instance vertex distance/pitch equations.

| Category / technique | Clear capability104 stages | Ordinary color consequence |
| --- | --- | --- |
| 0 / ordinal0, key FEF1653E | vertical variants0/3:9279→9284; horizontal6/9:9277→9283 | Actual ordinary path described below |
| 1 / ordinal1, key96388D5B | both stage IDs0 in these four variants | Alpha-edge dispatch does not supply an additional color program here |
| 2 / ordinal2, key9FD07901 | both stage IDs0 in these four variants | No independently complete billboard shadow pair in this selected block |
| 3 / ordinal3, key5B51F529 | vertical9269→9270; horizontal9265→9266 | Pick context, not a required ordinary color program |

The [selected PASS records](../../evidence/shaders/flora/selected-pass-records.tsv) retain these exact rows. [PASS application ASM](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.asm) ([annotated pseudocode](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.c)) returns false when both stage objects are absent; [technique iteration ASM](../../evidence/native/functions/007A0FB0_ShaderTechnique_ApplyPassesAndDraw.asm) ([annotated pseudocode](../../evidence/native/functions/007A0FB0_ShaderTechnique_ApplyPassesAndDraw.c)) then skips its draw callback. No blanket export of pick shaders is needed to close ordinary color rendering.

## Packet and texture-coordinate producers

[packet construction ASM](../../evidence/native/functions/0070E5F0_Flora_BuildWholeTreeBillboardDrawPackets.asm) ([annotated pseudocode](../../evidence/native/functions/0070E5F0_Flora_BuildWholeTreeBillboardDrawPackets.c)) emits **four vertices and six indices** per instance, indices0,3,1,1,3,2. The physical declarations and constants are in [original data](billboard-pc-original-data.tsv).

| Packet | Physical fields and selected consumers |
| --- | --- |
| Vertical, stride24 | SHORT4 position at0; SHORT4(width,height,instanceAzimuth,scale) at8; UBYTE4(corner,imageCount,0,0) at16; raw instance+78 DWORD at20.9279 reads v0/v1/v2; it does **not** read the float at20. |
| Horizontal, stride36 | SHORT4 transformed corner at0; SHORT4 center at8; SHORT4(U,V,quarter-scaled extent,scale) at16; SHORT4 azimuth trig at24; raw instance+78 DWORD at32.9277 reads v0/v1/v2 only; the later two fields are not consumed by this selected program. |

[vertical writer ASM](../../evidence/native/functions/0070D4F0_Flora_WriteVerticalBillboardPacket.asm) ([annotated pseudocode](../../evidence/native/functions/0070D4F0_Flora_WriteVerticalBillboardPacket.c)) uses dimensions times instance scalar times0.3048 and `atan2(-matrix[2],matrix[0])`, adding binary32 twoPi when negative. [horizontal writer ASM](../../evidence/native/functions/0070DF70_Flora_WriteHorizontalBillboardPacket.asm) ([annotated pseudocode](../../evidence/native/functions/0070DF70_Flora_WriteHorizontalBillboardPacket.c)) transforms authored corners and UVs, derives a quarter-scaled horizontal extent, and writes the independent center. The caller's instance+78 payload is not evidence for an ordinary consumed fade; **instance+74 opacity is a different field**.

Both writers use [homogeneous SHORT4 packer ASM](../../evidence/native/functions/007CF810_Flora_PackHomogeneousShort4.asm) ([annotated pseudocode](../../evidence/native/functions/007CF810_Flora_PackHomogeneousShort4.c)): ceil of maximum absolute XYZ gives a signed16 exponent; zero produces(0,0,0,1), otherwise scale uses signed integer division **32765 / exponent**, narrowed to SHORT, and the actual half-offset/floor instruction sequence encodes XYZ. Do not substitute the private-capture20-byte/two-sided packet or a32767 divisor for this actual path.

[species geometry and atlas producer ASM](../../evidence/native/functions/00717280_Flora_PrepareSpeciesGeometryAndBillboardAtlas.asm) ([annotated pseudocode](../../evidence/native/functions/00717280_Flora_PrepareSpeciesGeometryAndBillboardAtlas.c)) copies the billboard descriptor and prepares **32 float4 rectangles** at renderer+A0. For opposite authored corners C0/C2 it evaluates, using separate original SSE operations:

```
center = (C0 + C2) * 0.5
inset(C) = C * 0.984375 + center * 0.015625
rect = (inset(C0).x, inset(C0).y,
        inset(C0).x - inset(C2).x, inset(C0).y - inset(C2).y)
```

The local row loop is capped at32 and unused rectangles are zeroed. The copied descriptor's count is not rewritten by this cap; this does not prove malformed-count safety. The selected VS chooses corners with `rect.xy - rect.zw * corner.xy`. It is not nearest-row selection among eight unmodified quads.

[named parameter registration ASM](../../evidence/native/functions/00714420_Seasons_RegisterTreeShaderInputs.asm) ([annotated pseudocode](../../evidence/native/functions/00714420_Seasons_RegisterTreeShaderInputs.c)) joins these bindings unambiguously. The [original PARM table](../../evidence/shaders/flora/billboard-program-bindings.tsv) retains the hashes, packed descriptors and first register:

| Native binding | Value producer |9279 /9277 register |
| --- | --- | --- |
| manager+AC BB360TexCoords | renderer+A0 rectangles | c0..31 / unused |
| manager+60 BillboardAzimuth | batch direction-derived scalar | c54 / unused |
| manager+54 CameraAzimuthTrig | batch SDK-angle trig | c58 / unused |
| manager+B0 BillboardFadeConstants | cluster+4A0 sine-space constants | c59 /c16 |
| manager+BC BillboardLodLimits | cluster+570 or580 | c60 /c17 |
| manager+C0 BillboardLightingAdjust | cluster+590 | absent from these two selected main programs |

## Camera, pitch and distance constants

[service initialization ASM](../../evidence/native/functions/00712C30_Flora_InitializeServiceAndBillboardFadeAngles.asm) ([annotated pseudocode](../../evidence/native/functions/00712C30_Flora_InitializeServiceAndBillboardFadeAngles.c)) sets horizontal endpoints **40°,80°** and vertical **70°,50°** through [horizontal setter ASM](../../evidence/native/functions/007B8AE0_SpeedTree_SetHorizontalBillboardFadeAngles.asm) ([annotated pseudocode](../../evidence/native/functions/007B8AE0_SpeedTree_SetHorizontalBillboardFadeAngles.c)) and [vertical setter ASM](../../evidence/native/functions/007B8B00_SpeedTree_SetVerticalBillboardFadeAngles.asm) ([annotated pseudocode](../../evidence/native/functions/007B8B00_SpeedTree_SetVerticalBillboardFadeAngles.c)). The function is an actual95-byte dispatch target atFFC72C; its final jump to715C80 remains a separate factory function.

[cluster initialization ASM](../../evidence/native/functions/007129D0_Flora_InitializeClusterBillboardsAndPitchConstants.asm) ([annotated pseudocode](../../evidence/native/functions/007129D0_Flora_InitializeClusterBillboardsAndPitchConstants.c)) reads those pairs through [horizontal getter ASM](../../evidence/native/functions/007B8B20_SpeedTree_GetHorizontalBillboardFadeAngles.asm) ([annotated pseudocode](../../evidence/native/functions/007B8B20_SpeedTree_GetHorizontalBillboardFadeAngles.c)) and [vertical getter ASM](../../evidence/native/functions/007B8B50_SpeedTree_GetVerticalBillboardFadeAngles.asm) ([annotated pseudocode](../../evidence/native/functions/007B8B50_SpeedTree_GetVerticalBillboardFadeAngles.c)). It multiplies each degree value by binary32 radians-per-degree, runs x87 FSIN, stores binary32, then evaluates `scale=1/(sin(end)-sin(start))`, `bias=0-scale*sin(start)` with separate SSE instructions. The two pairs become cluster+4A0.xy/.zw. There is no equal-sine guard in this producer.

This differs from the clamped **degree-linear SDK fade globals** computed by [SDK camera update ASM](../../evidence/native/functions/007BB2D0_SpeedTree_SetCameraAndSdkBillboardFades.asm) ([annotated pseudocode](../../evidence/native/functions/007BB2D0_SpeedTree_SetCameraAndSdkBillboardFades.c)). Those globals exist; they are not the operands read by9279/9277. The selected shaders use normalized **per-instance camera-minus-center Y**, multiply/add the respective sine-space pair, then `min(value,1)` without a preceding max0.

[cached flora camera update ASM](../../evidence/native/functions/00712D50_Flora_UpdateCachedSpeedTreeCamera.asm) ([annotated pseudocode](../../evidence/native/functions/00712D50_Flora_UpdateCachedSpeedTreeCamera.c)) and [SDK GetCamera ASM](../../evidence/native/functions/007BB260_SpeedTree_GetCamera.asm) ([annotated pseudocode](../../evidence/native/functions/007BB260_SpeedTree_GetCamera.c)) lead into the existing [batch producer ASM](../../evidence/native/functions/007135C0_Flora_PrepareBatchLightWindAndDispatch.asm) ([annotated pseudocode](../../evidence/native/functions/007135C0_Flora_PrepareBatchLightWindAndDispatch.c)). `BillboardAzimuth=atan2(direction.z,-direction.x)`, with absolute values below **binary64 0.01** replaced by positive binary32 0.01, followed by one wrap into[0,2pi). The threshold atFFC990 is an **eight-byte DOUBLE**, not its first DWORD interpreted as a float. Separate [SDK camera-angle getter ASM](../../evidence/native/functions/007B87A0_SpeedTree_GetCameraAzimuthPitchDegrees.asm) ([annotated pseudocode](../../evidence/native/functions/007B87A0_SpeedTree_GetCameraAzimuthPitchDegrees.c)) feeds the geometry orientation's CameraAzimuthTrig. The receiver+24 light-side factor is not image interpolation.

[distance record getter ASM](../../evidence/native/functions/00713100_Flora_GetTreeTypeLodDistanceRecord.asm) ([annotated pseudocode](../../evidence/native/functions/00713100_Flora_GetTreeTypeLodDistanceRecord.c)) supplies near/far/inverseSpan/cullNear/cullFar from the [existing config producer](near-alpha-lod-and-fsaa.md#billboard-ownership-and-aa-setting-boundary). [billboard constant producer ASM](../../evidence/native/functions/0070D9A0_Flora_GenerateBillboardLodAndLightingConstants.asm) ([annotated pseudocode](../../evidence/native/functions/0070D9A0_Flora_GenerateBillboardLodAndLightingConstants.c)) computes:

```
b = far - 2
q = (b == near) ? 0 : 1 / (b - near)
width = 2 * SPT.LeafLodTransitionRadius
x = (width == 0) ? 0 : (q / width) * 1.5
y = 1.5 - x * b
z = (cullNear == cullFar) ? 0 : -1 / (cullFar - cullNear)
w = 0 - z * cullFar
```

[transition-width getter ASM](../../evidence/native/functions/007B8B80_SpeedTree_GetBillboardTransitionWidth.asm) ([annotated pseudocode](../../evidence/native/functions/007B8B80_SpeedTree_GetBillboardTransitionWidth.c)) returns the x87 sum of the same field twice; the caller stores it before SSE division. The normal vector(x,y,z,w) lives at+570. The alternate+580 copies it then replaces x=0,y=1; **draw-context byte14** chooses the vector. The vertex programs use `d=min(distance*x+y,distance*z+w,1)`, not a product of two clamped fades. If `d < binary32(0.01)`, they collapse clip position to zero via `mad(flag,-clip,clip)`.

## Complete selected vertex-to-pixel join

Let A/B be the complete texels at first/next UV, F the fractional image position, P the selected sine-space vertical pitch value, H its horizontal counterpart, and d the distance minimum above. The following algebra is readable shorthand; the complete instruction exports preserve actual MAD/MIN/RCP/RSQ order, masks and `_pp` modifiers.

| Path | Interpolants / sampling | Pixel output | Authored ordinary PASS |
| --- | --- | --- | --- |
| Vertical: [program 9279 ASM](../../evidence/shaders/flora/program-9279.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9279.c)) → [program 9284 ASM](../../evidence/shaders/flora/program-9284.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9284.c)) | `step=twoPi/imageCount`; angle=BillboardAzimuth−decoded instance angle, add twoPi when negative. Select truncated nonnegative image ordinal and its wrapped successor. Two rectangle UVs become t1.xy/t2.xy. With `r6=255−171*d`, `r5=r6+0.9*(1−F)*(255−r6)`, **W=t2.z=(171+P*(r5−255))*float32(1/171)+float32(0.01)**. First target t1.z is produced separately but **9284 declares only t1.xy**, so t1.z is unused by that pixel shader. | Sample B from t2.xy and A from t1.xy. **C=W*A+(1−W)*B**, without clamping W. `RGB=C.rgb*D+(K−C.rgb*D)*fog`; **alpha=1−2*C.a**. D is interpolated oD1.rgb, K=oD0.rgb, fog=oD0.w. | Alpha test enabled; LESS/ref1; blending disabled; color-write mask7 (RGB). |
| Horizontal: [program 9277 ASM](../../evidence/shaders/flora/program-9277.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9277.c)) → [program 9283 ASM](../../evidence/shaders/flora/program-9283.asm.txt) ([instruction pseudocode](../../evidence/shaders/flora/program-9283.c)) | One decoded packet UV becomes t1.xy. `target=t1.z=(171+H*(-171*d))*float32(1/171)+float32(0.01)`. No image-pair blend. | `C=texture(t1.xy)`; same RGB equation; **alpha=t1.z−C.a**. | Same alpha test/LESS/ref1, blend0 and RGB-only mask. |

In particular, D3D LRP's first operand is the **weight of A**, not GLSL `mix(A,B,W)`, which would reverse it. W may leave[0,1]; there is no saturate in the original join. Full visibility P=d=1 gives approximately W0.91 at F0,0.46 at F0.5 and0.01 as F approaches1; do not replace it with F or1−F. At d<0.01 geometry is collapsed independently. Real-valued horizontal target is approximately1.01−H*d. Hardware partial precision, sampling/filtering and alpha conversion remain separate.

The shaders' color outputs are not constant-alpha0.5. The fixed comparison acts on **computed output alpha**, not directly on one diffuse sample at0.1. PASS color-write mask7 also means the computed alpha is a test operand without an authored alpha-channel write. The bodies themselves contain no TEXKILL. These PASS rows author no depth-enable/write/compare override; inherited depth defaults are not proved by their absence.

## Last LOD, alpha edges and remaining boundaries

[Near alpha/LOD evidence](near-alpha-lod-and-fsaa.md#per-instance-alpha-production-and-units) already closes the target normalization, last-near-LOD override84/255, complementary factor and separate instance+74 opacity. `RenderTreeAlphaEdges` is manager+14, read independently of FSAALevel. The category owner can call billboard category1 under that flag, but the selected clear capability104 rows have no stages and the actual PASS owner rejects them. It is therefore not evidence to multiply the ordinary billboard sample cutoff by that opacity or enable SRCALPHA blending for ordinal0.

Four different quantities must remain distinct: near target alpha; billboard pitch/distance constants; vertical **sample interpolation** W versus horizontal **alpha-test target** t1.z; and computed pixel alpha. The unused vertical t1.z and later packet attributes must not be promoted into active fragment inputs.

**Comparison with the current host assumptions:** one atlas sample / eight nearest images, degree-linear draw gating, multiplied LOD/cull fade, threshold0.1 and fixed output0.5 are not faithful reconstructions of this selected PC path. **0.5 does occur** in original atlas-center/lighting calculations and0.1 can occur in other programs/settings; neither establishes a0.5 output alpha or0.1 sampled-alpha cutoff in these selected main shaders. Existing console/private-capture anchors cannot settle this PC contract. Applying the recovered equations still requires an explicit host coordinate/geometry/uniform integration and independent Vulkan tests, rather than changing two constants alone.

This static closure does not establish another capability/seasonal program's same equations, universal template/count validity, inherited baseline depth or exact D3D hardware conversion/ties. Texture sampler/filter presets and the existing light/wind subset remain separately bounded in their [binding guide](billboard-light-and-wind-binding.md). No original-game runtime capture is inferred from the static call graph or a host Vulkan screenshot.

## Embedded rows and signed horizontal corners

The [PC template loader ASM](../../evidence/native/functions/00715B70_TreeTemplate_LoadSptStream.asm) ([annotated pseudocode](../../evidence/native/functions/00715B70_TreeTemplate_LoadSptStream.c)) calls the [global V-inversion setter ASM](../../evidence/native/functions/007B8AD0_SpeedTree_SetGlobalTextureVInversion.asm) ([annotated pseudocode](../../evidence/native/functions/007B8AD0_SpeedTree_SetGlobalTextureVInversion.c)) with **1** before parsing. The [embedded-coordinate reader ASM](../../evidence/native/functions/007BA820_SptTree_ReadEmbeddedTextureCoordinates.asm) ([annotated pseudocode](../../evidence/native/functions/007BA820_SptTree_ReadEmbeddedTextureCoordinates.c)) therefore negates only the four V lanes of every tag10003 billboard row. It does not reorder corners. Tag10006 stores horizontal admission at wrapper+E2; tag10007 stores a **separate flag at+E1**. Treating tag10007 as this global V inversion or reversing its corner order does not reproduce the inspected path.

The actual [species initializer ASM](../../evidence/native/functions/00718260_Flora_InitializeSpeciesGeometry.asm) ([annotated pseudocode](../../evidence/native/functions/00718260_Flora_InitializeSpeciesGeometry.c)) invokes [geometry-by-mask export ASM](../../evidence/native/functions/007BB8A0_SpeedTree_ExportGeometryByMask.asm) ([annotated pseudocode](../../evidence/native/functions/007BB8A0_SpeedTree_ExportGeometryByMask.c)) with mask0F. Its bit8 calls [billboard descriptor export ASM](../../evidence/native/functions/007B8890_SpeedTree_ExportBillboardGeometry.asm) ([annotated pseudocode](../../evidence/native/functions/007B8890_SpeedTree_ExportBillboardGeometry.c)): geometry+B0/B4 receive width/absolute maxY height, +B8 receives embedded row count minus horizontal admission, and +BC borrows the already parsed atlas pointer. This exporter does not apply an additional UV flip or reorder. The renderer's32 inset rectangles described above are built from these V-negated rows.

The selected horizontal tail of [SDK Compute ASM](../../evidence/native/functions/007BBDF0_SpeedTree_ComputeGeometryAndBillboardBounds.asm) ([annotated pseudocode](../../evidence/native/functions/007BBDF0_SpeedTree_ComputeGeometryAndBillboardBounds.c)) writes these four coordinates, with `middleY=(maxY+minY)*0.5`:

```
(maxX, middleY, maxZ)
(minX, middleY, maxZ)
(minX, middleY, minZ)
(maxX, middleY, minZ)
```

The X stores follow **two SUBSS operations from the same zero**, preserving the signed X extents; they are not a negation or absolute-value transform. The [corner accessor ASM](../../evidence/native/functions/007B8860_SpeedTree_GetHorizontalBillboardCorners.asm) ([annotated pseudocode](../../evidence/native/functions/007B8860_SpeedTree_GetHorizontalBillboardCorners.c)) returns wrapper+6C. The [horizontal texture-row accessor ASM](../../evidence/native/functions/007B8870_SpeedTree_GetHorizontalBillboardTextureRow.asm) ([annotated pseudocode](../../evidence/native/functions/007B8870_SpeedTree_GetHorizontalBillboardTextureRow.c)) borrows the final eight-float row, `(count-1)*32`, without another flip or ownership transfer. The horizontal packet writer reassembles its UV lanes as `(u2,v0),(u3,v1),(u0,v2),(u1,v3)` before SHORT4 packing. These are accessor/preparation facts, not proof that all malformed counts or the broader Compute generation/transform paths are contained.
