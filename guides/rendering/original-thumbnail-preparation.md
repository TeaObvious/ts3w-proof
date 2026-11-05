# Original Sim and household thumbnail preparation

Static PC1.67 analysis, explicit `/TS3W.exe`. Full selected native function bodies,
disjoint ranges and nonowned gaps are retained as canonical original ASM paired
with actual annotated Ghidra C. Byte envelopes match pristine PC1.67. The Ghidra
database is saved clean without byte changes. Analyst names describe established
roles, not recovered original symbols. No original game execution is claimed.

The managed policy side has [six complete selected methods](../../evidence/managed/selected/thumbnail-preparation/method-index.tsv),
with2385 CIL bytes, exact MethodDef/RVA declarations, [call operands](../../evidence/managed/selected/thumbnail-preparation/call-edges.tsv)
and [field operands](../../evidence/managed/selected/thumbnail-preparation/field-access.tsv).
Each method row links the complete actual ILSpy C# and original typed CIL.
Central [managed provenance](../../evidence/managed/README.md) identifies pristine
package assemblies. Native and managed task/policy roles are deliberately distinct.

## ThumbnailSim_SelectCameraAndJawBounds

[ASM 00D56BE0](../../evidence/native/functions/00D56BE0_ThumbnailSim_SelectCameraAndJawBounds.asm) ([annotated Ghidra C](../../evidence/native/functions/00D56BE0_ThumbnailSim_SelectCameraAndJawBounds.c)).

ECX manager plus five stack words; species/age/camera branches use original immediate hashes. Pets-installed gate10; childage4 elseadult, head/bust selectors, separatebody2/side3 paths. Normal head path finds original jaw405EC0BD from model/rig, starts anchor0 if unavailable, adds authored position for pets, constructs jaw plus/minus.15 box. Human-only missing-jaw exception is not in this native path. Body/side resources and reference rotations are distinct, not inferred from head behavior.

## ThumbnailScene_AssignCustomLightRigs

[ASM 00D564E0](../../evidence/native/functions/00D564E0_ThumbnailScene_AssignCustomLightRigs.asm) ([annotated Ghidra C](../../evidence/native/functions/00D564E0_ThumbnailScene_AssignCustomLightRigs.c)).

ECX manager plus request pointer RET4. Iterate retained scene-model vector atrequest+A8..AC; choose customrig by original thumbnail category. Human Sim hash8A5B4BEC, pet96591FBA after species predicate; household37BF840D normally6F2CA945, special manager230=528365C4 choosesB1F01C50 with distinct flag. Assign on each separate model via vtable6C; other object/photo categories retain separate branches.

## ThumbnailRequest_AdvancePreparationAndRender

[ASM 00D59D50](../../evidence/native/functions/00D59D50_ThumbnailRequest_AdvancePreparationAndRender.asm) ([annotated Ghidra C](../../evidence/native/functions/00D59D50_ThumbnailRequest_AdvancePreparationAndRender.c)).

Full original multi-stage task, ECX manager plus request RET4, disjoint body ranges preserved. Request+108 state advances through managed preparation, render-command acknowledgement, model ownership/resource/pose readiness, lighting, exact rig/CLIP, displacement andYrotation, namespace matching, IK, framing and publication. State14hex constructs per-actor transforms;15hex binds CLIP namespaces within supplied group IDs, first matching actor wins, missing namespace maps0.00D5B188 stores3;00D5BA67 subtracts1/JNZ proves three passes. Original C mis-propagates inner actor counter; instructions00D5B9EE increment actor independently.18hex waits model+40 flag10 clear, then00D57100/00D62A90, publishing only render success. Managed notify alone is not model/GPU readiness. Unsupported categories and partial children remain explicit, not a portable literal C implementation.

## ThumbnailScene_RenderOffscreenAndPublishTexture

[ASM 00D62A90](../../evidence/native/functions/00D62A90_ThumbnailScene_RenderOffscreenAndPublishTexture.asm) ([annotated Ghidra C](../../evidence/native/functions/00D62A90_ThumbnailScene_RenderOffscreenAndPublishTexture.c)).

Full original offscreen rendering path, request render owner inECX. Retain/create temporary color/depth surfaces, preserve world/scene state and specular probe, select per-scene custom rig, clear/draw scene, restore state, derive image/crop coordinates, bind texture and execute final thumbnail conversion technique. Returns0failure,1success,2retry when renderer unavailable. Repeated model list/material domains are scene inputs, not an instruction to merge geometry. Current VulkanMSAA/resolve backend is an explicit adaptation; no Direct3D execution is required or retained.

## ThumbnailSizes_LoadSource

[ASM 00D57C40](../../evidence/native/functions/00D57C40_ThumbnailSizes_LoadSource.asm) ([annotated Ghidra C](../../evidence/native/functions/00D57C40_ThumbnailSizes_LoadSource.c)).

ECX manager, hold critical section+98, clear size table at+38, open group0ThumbnailSizes.ini, enumerate00D53D90 sections, release lock and INI object. Size table and camera table have separate lifetimes/data.

## ThumbnailSizes_ReadIniSection

[ASM 00D53D90](../../evidence/native/functions/00D53D90_ThumbnailSizes_ReadIniSection.asm) ([annotated Ghidra C](../../evidence/native/functions/00D53D90_ThumbnailSizes_ReadIniSection.c)).

Callback hashes section and reads small/medium/large/xlarge via integer pair format. Only conversion count2 replaces packed16-bit width/height defaults. Store four packed rows to section entry. Decompiled scanf output-pointer types are not evidence of32-bit output storage; original MOV16/packing controls. Current positive/integral validation and512 limit are project policy.

## ThumbnailTarget_ClampRequestedDimensions

[ASM 00D62180](../../evidence/native/functions/00D62180_ThumbnailTarget_ClampRequestedDimensions.asm) ([annotated Ghidra C](../../evidence/native/functions/00D62180_ThumbnailTarget_ClampRequestedDimensions.c)).

ECX target, UInt32 width/height RET8. Store requested dimensions if both within target+2C/+30 capacity; otherwise store independent unsigned minima. Capacity is instance data, not a proven universal512 constant.

## Camera_SetHorizontalFieldOfViewDegrees

[ASM 00960E30](../../evidence/native/functions/00960E30_Camera_SetHorizontalFieldOfViewDegrees.asm) ([annotated Ghidra C](../../evidence/native/functions/00960E30_Camera_SetHorizontalFieldOfViewDegrees.c)).

ECX camera, float stack argument RET4. Convert degrees using data01045B14, tan(fov*.5), width2*tan, height=width/aspect, cache2*atan(width*.5) radians. Horizontal FOV differs from aspect-dependent vertical projection.

## Camera_SetOrthographicWidth

[ASM 0095FF10](../../evidence/native/functions/0095FF10_Camera_SetOrthographicWidth.asm) ([annotated Ghidra C](../../evidence/native/functions/0095FF10_Camera_SetOrthographicWidth.c)).

ECX camera,float width RET4. Storewidth+0C,height=width/aspect+10, cache2*atan(width*.5)+14. Thumbnail fixed/fit orthographic callers pass1.0; bounds radius affects distance, not this width.

## Camera_SetProjectionMode

[ASM 004DAC30](../../evidence/native/functions/004DAC30_Camera_SetProjectionMode.asm) ([annotated Ghidra C](../../evidence/native/functions/004DAC30_Camera_SetProjectionMode.c)).

ECX camera, one32-bit stack word RET4; store mode at+8. Original thumbnail callers pass0perspective or1orthographic; do not reinterpret integer mode as numeric float.

## SceneModel_RefreshSimAndPartBounds

[ASM 006F5D50](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.asm) ([annotated Ghidra C](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.c)).

ECX model plus source descriptor. Original Simoverride flag00200000 selects135 hash table entries at00FFA5C0 (0x21Cbytes), skip missing selectors, union final model-space bone translations, pad.15, union head0F97B21B with.30 radius, write bound to allparts. Other branches copy/static-transform partbounds. Full retained body and original byte widths establish character bounds; an unrelated rendered-vertex union is not equivalent.

## ClipPoseController_SetSampleSeconds

[ASM 0054DFF0](../../evidence/native/functions/0054DFF0_ClipPoseController_SetSampleSeconds.asm) ([annotated Ghidra C](../../evidence/native/functions/0054DFF0_ClipPoseController_SetSampleSeconds.c)).

ECX controller, float argument RET4, MOVSS stores+3C0. Thumbnail caller passes0; consumer0054E810 FLD+3C0 passes seconds to ClipCodec_SampleByVersion00588B40. This is sample time, not a guessed integer or locomotion root displacement.

## ClipPoseController_SetMirrorEnabled

[ASM 0054E030](../../evidence/native/functions/0054E030_ClipPoseController_SetMirrorEnabled.asm) ([annotated Ghidra C](../../evidence/native/functions/0054E030_ClipPoseController_SetMirrorEnabled.c)).

ECX controller, byte argument RET4, stores+3C8. Consumer0054E810 passes it to the codec mirror input;0054E950 selects normal versus opposing-bone output. Thumbnail caller passes0, so the pose is not mirrored. This field is not the loop flag.

## ClipPoseController_AssignRetainedClip

[ASM 0054E1B0](../../evidence/native/functions/0054E1B0_ClipPoseController_AssignRetainedClip.asm) ([annotated Ghidra C](../../evidence/native/functions/0054E1B0_ClipPoseController_AssignRetainedClip.c)).

ECX controller plus clip RET4. Retain new clip/release old at+3B8, copy four words from clip+8..14 into+398..3A4, returnAL1. Exact meaning of copied header words needs reader/consumer beyond this ownership operation.

## ClipPoseController_SampleNativePose

[ASM 0054E810](../../evidence/native/functions/0054E810_ClipPoseController_SampleNativePose.asm) ([annotated Ghidra C](../../evidence/native/functions/0054E810_ClipPoseController_SampleNativePose.c)).

ECX controller plus evaluation inputs/output. Retained clip+3B8 yields codec; when evaluation input+54 has bit2, call00588B40 with pose, stored+3C0 seconds, optional bone-map and+3C8 mirror. Native thumbnail supplied seconds0/mirror0. Separate root motion helper00588B90 guarded by clip/input bits; otherwise reset root delta vectors and identity quaternion. Full root-motion transport is distinct from sampling local authored translations.

## Original policy and readiness

ThumbnailHelper retains household member/outfit/pose selection, builder texture
sizes, horse-count camera selection and occult policy. ScriptCore PrepareTask
invokes delegates until one returns true, then always notifies native preparation
in finally and destroys the managed task. This notification does not establish
material, scene or GPU readiness; the native request state machine has later gates.
A private prepared target is distinct from a source Sim's current world model.

The selected native scene contains separate actors and material domains. Its
three-pass IK stage is instruction-verified; the inner actor counter in raw C is
mis-propagated and must not be copied. Namespace grouping, original displacement
and Y rotation are actual pose dependencies. Controller sampling0054E810 establishes stored sample time0 and mirrorfalse.
The mirror input is distinct from looping. Full root-motion transport and
reference-rotation behavior remain separate from static local pose sampling.

[Sim bound selectors](sim-scene-bound-selectors.tsv) are135 UInt32 words at
00FFA5C0, independently compared with pristine bytes and the current selector
implementation. Missing optional bones are skipped; .15 padding and the .30 head
box are distinct from the head portrait's jaw±.15 framing. Native model bounds
are not an arbitrary union of rendered vertex extrema.

The [camera source/selection/fixed/fit evidence](thumbnail-camera-and-modular-sections.md)
contains normalized axes, exact defaults, perspective/orthographic equations and
necessary data literals. Family fixed-position cameras retain near-min/far-max.
Merged product cameras apply to humans as well as pets.

## Boundaries

Vulkan packets, asynchronous preparation tasks, multisampling and resolve/readback
ownership are project backend mechanisms. They may implement these contracts
without copying the original renderer or graphics API execution. Original render
return2 means retry; a temporary unavailable renderer must not publish success.
Current supported head/bust and ordinary household paths do not establish body,
side, occult, sculpture, photo-booth or other special technique equivalence.
Visual correctness, fresh-cache generation and saved PNG acceptance require an
executed game run. Neither this static evidence nor a GPU success log proves them.
