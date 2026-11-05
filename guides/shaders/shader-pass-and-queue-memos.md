# Shader pass identity, parameter generation and queue-local memos

Reference: original PC 1.67 TS3W.exe, identified in the central native evidence
index. Names are analyst assignments. These are static complete-body/instruction
facts; no original runtime execution or whole-renderer cache census is claimed.

## Resolve actual pass inputs

[Parameter resolver ASM](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.asm)
([pseudocode](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.c)) has ECX pass receiver,
two stack arguments and RET 08. It resolves selected stage references, parameter
registry IDs, separate sampler-preset pointers and texture-parameter indices for
16 enabled/disabled slots, plus two parameter arrays. This operation resolves
metadata references; it is not HLSL compilation or a stored per-scene visibility
answer. Numeric/dynamic-state and texture parameter kinds remain separate.

## Real pass-identity and generation caching

[Draw application ASM](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.asm)
([pseudocode](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.c)) is thiscall ECX pass
plus device and target-scope stack arguments, RET 08, Boolean in AL. No selected
stage objects means immediate false. It compares device+54 to the pass pointer,
updates that cached pointer when changed, and only for that change binds native
stage objects/static eight-byte state pairs. A later missing-stage failure does
not roll the cached pointer back; this is not a transactional publication.

Dynamic twelve-byte state triples are still visited each invocation. A selected
parameter record has sixteen-byte stride and a sixteen-bit generation: generation
zero or the current registry generation admits its actual value; other nonzero
generations select the existing empty record. Enabled texture slots still obtain
and bind their current parameter values, while sampler presets apply on a changed
pass. Parameter-array uploads and pending-baseline application follow. The complete
body retains its original numeric-conversion and failure branches; cached static
state does not mean all per-draw work or dynamic side effects are omitted.

This is a real native state memo, keyed by pass identity and parameter registry
state. It does not establish camera-bit, scene-object, geometry/material-wrapper
or opaque/water/alpha item-table keys. Other visibility/admission caches outside
these complete functions are neither asserted present nor declared absent.

## Separate local queue memo

[Queued shadow consumer ASM](../../evidence/native/functions/006EA9A0_SceneShadow_DrawQueuedCasters.asm)
([pseudocode](../../evidence/native/functions/006EA9A0_SceneShadow_DrawQueuedCasters.c)) uses ECX renderer
plus source, begin/end queue and borrowed context stack arguments, RET 0C. Queue
count uses signed SAR 3, rows advance eight bytes, and item+24 selects an 0x80-byte
source record. A local memo compares item key and two registry stamps before
updating two matrix payloads. It resets on invocation. Each selected item still
invokes interface virtual+18, and four parameter handles are cleared after the
loop, including an empty queue. The concrete virtual implementation and caller
admission remain separate boundaries. This does not specify a resident scene-
depth cache or a persistent cross-pass classification table.

The canonical function envelopes remain 829, 444 and 350 bytes respectively,
including retained non-owned alignment where present. A complete byte envelope
does not imply that every linear row belongs to the function. Existing annotated
pseudocode and full original ASM are the single canonical pairs.

## Phong SpecStyle: authored default, numeric conversion and state ownership

The original Phong B9105A6D definitions in the centrally identified shader file have4320 **local** sampler triples for SpecStyle hash9554D40F across eight capability values. Their descriptors are00000009 or00010009 (stage0 or1/state9); every such record has rawdefault00000003. Twelve exact-key SBLK bodies were decoded to their declared ends; four contain no local matching row and may use linked definitions. This is bounded local-record coverage, not every resolved alias/context or an executed draw. [Capability census](../../evidence/shaders/phong-specstyle-coverage.tsv) and [eight representative raw triples/identity joins](../../evidence/shaders/phong-specstyle-selected-rows.tsv) retain actual byte offsets, stage/PASS/variant/LINK references and texture parameter identities.

The existing [79F410 PASS reader ASM](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.asm) ([C](../../evidence/native/functions/0079F410_ShaderPass_ReadPASS.c)) puts trailing sampler triples in countC8/pointerCC. FlagsF8 consume fiveDWORDs andflags7 threeDWORDs; they are not the old scratch parser's twoDWORD shortcut. The selected corpus is valid input; no new malformed-input restriction is inferred. [79EBD0 resolver ASM](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.asm) ([C](../../evidence/native/functions/0079EBD0_ShaderPass_ResolveParameterIds.c)) resolves each triple's hash into a type1 parameter registry reference, separately from texture values and sampler preset references. The original hash for ASCII `SpecStyle` is9554D40F under case-folded FNV1; the data itself carries that hash.

Fresh readonly [79E7E0 application ASM](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.asm) ([C](../../evidence/native/functions/0079E7E0_ShaderPass_ApplyForDraw.c)) inspection has266owned instructions/820bytes in three ranges inside the existing829byte envelope. Six bytes79E99A..9F and three79EA5D..5F are nonowned alignment; they remain in the canonical bounding window, not promoted to body ownership. The numeric sampler branch at79E9D0 splits high16 stage/low16 state. Current or generation0 records are used; other nonzero generations select the empty record. Absent valuepointer or count0 uses rawdefaultDWORD. Nonempty wrongtag does not set the state. A live type1 value with state8 is bit-preserving; any other sampler state, including9, follows79EA01..27: FLD binary32, save controlword, OR0C00 to select chop, FISTP **signed64**, load lowDWORD, restore original controlword. The apparent C ROUND/float casts must not be used to claim round-to-nearest, a UInt32 cast, a finite/[0,16) guard or a texture-count clamp.

The raw call79EA33 enters [6100C0 ASM](../../evidence/native/functions/006100C0_FUN_006100c0.asm) ([C](../../evidence/native/functions/006100C0_FUN_006100c0.c)): ECXdevice plus stage,state,value/RET0C, one temporary pair/count1 passed to [60F0A0 ASM](../../evidence/native/functions/0060F0A0_FUN_0060f0a0.asm) ([C](../../evidence/native/functions/0060F0A0_FUN_0060f0a0.c)). That helper has stage stride74 and indexes state-1: differing value writes its cache **before** device+0C COMvirtual+114(stage,state,value); equal value skips COM. It marks the active state bit on **every** visited pair, including equality. It does not validate stage/state, clamp to uploaded texture mips or propagate the COM HRESULT. This is the original state-transport/cache boundary, not proof that an invalid input was accepted by the driver.

Dynamic sampler triples run before the texture loop. On pass identity change only, [79A590 preset ASM](../../evidence/native/functions/0079A590_FUN_0079a590.asm) ([C](../../evidence/native/functions/0079A590_FUN_0079a590.c)) forwards preset pointer/count pairs through the same60F0A0. All selected SpecStyle stages use [preset1](../../evidence/shaders/phong-specstyle-sampler-preset.tsv): U/V/W=3, Min/Mag=2, MipFilter=2; **state9 is absent**, not0, and so that later preset does not overwrite the dynamic value. [60F120 baseline ASM](../../evidence/native/functions/0060F120_RenderDevice_ApplyPendingBaselines.asm) ([C](../../evidence/native/functions/0060F120_RenderDevice_ApplyPendingBaselines.c)) applies pending & ~active overrides over16sampler slots×13states; state9 marked by60F0A0 remains excluded. Complete technique start/reset/capture/thread and GPU/driver behavior are independent.

[Microsoft's D3D sampler-state contract](https://learn.microsoft.com/en-us/windows/win32/direct3d9/d3dsamplerstatetype) identifies ID9 as MAXMIPLEVEL, the largest allowed map's level index, with API default0. The **authored** default3 above comes from TS3 PASS data, not the API default. [Khronos's Vulkan sampler contract](https://registry.khronos.org/vulkan/specs/latest/man/html/VkSamplerCreateInfo.html) separately describes minLod/maxLod clamps. These API meanings explain an adaptation boundary; they do not prove matching sample/filter pixels, current probe source selection or driver error semantics. Native negative/huge/nonfinite conversion, exception masks, texture ownership and final role of texture parameter7F7295FE in each selected LINK remain explicit further work.
