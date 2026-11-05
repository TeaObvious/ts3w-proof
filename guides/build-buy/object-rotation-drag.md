# Object rotation drag

Reference: original PC 1.67 `/TS3W.exe`, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
The sixteen linked C/ASM pairs are actual annotated Ghidra exports. Analyst
names and entry PLATEs describe established roles; stored signatures and code
are unchanged. All 9,959 owned bytes / 2,851 instructions match the original executable.

## Input and state ownership

The registered [mouse bridge](../../evidence/native/functions/00CE5DB0_ScriptCore_UserToolUtils_UserToolUtils_ForwardUserToolMouseEventImpl.c)
dispatches to [left press](../../evidence/native/functions/00CEF820_UserToolManager_ForwardLeftMousePress.c) and
[mouse move](../../evidence/native/functions/00CEF980_UserToolManager_ForwardMouseMove.c). They floor finite
screen coordinates before tool virtual dispatch; changed UI modifiers run first.
[Modifier mapping](../../evidence/native/functions/00CCE930_UserTool_ApplyUiModifiers.c) maps UI Control2
to tool1, Shift1 to tool2, retains Alt4 and invokes virtual44 only on change.
[Mode handling](../../evidence/native/functions/00CFEAB0_ObjectTool_SetMode.c) cancels a held
rotation on that Control transition. Alt disables snap except for spiral stairs.

[Unpressed placement](../../evidence/native/functions/00D02460_ObjectTool_UpdateUnpressedPlacement.c) writes raw
XZLevel at B8/BC/C0 before snapping/placement. [Pick context](../../evidence/native/functions/00CED880_UserTool_UpdatePickContext.c)
writes 38/3C/40/44, not B8. [Pointer events](../../evidence/native/functions/00D07300_ObjectTool_ProcessPointerEvent.c)
snapshot the previous raw anchor on press. Current rotation byte1CC recomputes
from signed Manhattan screen distance greater than16 each move. Separate sticky
B0 and wall-height state must not be substituted for current1CC.
[Pointer placement](../../evidence/native/functions/00D05FF0_ObjectTool_UpdatePointerPlacement.c) chooses pressed
rotation versus unpressed placement, so the pressed consumer does not overwrite
its source anchor. [Cursor selection](../../evidence/native/functions/00CFC850_ObjectTool_UpdateHeldCursor.c)
reads current1CC.

## Applied angle

[Pressed rotation](../../evidence/native/functions/00D05050_ObjectTool_UpdatePressedRotationOrHeight.c) rejects an XZ
absolute sum below/unordered against binary32 .2. [Raw yaw](../../evidence/native/functions/00CFA570_ObjectTool_DirectionToRawYaw.c)
has its own .01 gate, performs FPATAN(-dz,dx), adds stored float3FC90FDC before
Float32 storage and adds full40C90FDC if the extended intermediate was negative.
[Apply current yaw](../../evidence/native/functions/00D00E90_ObjectTool_ApplyCurrentYaw.c) invokes
virtual80; [constructor](../../evidence/native/functions/00D05880_ObjectTool_Construct.c) and
[primary vtable](../../evidence/native/object-tool-primary-vtable.tsv) establish
[the actual consumer](../../evidence/native/functions/00CFF160_ObjectTool_ApplyYawWithAttachmentConstraints.c).
Ordinary floor grid uses [eight direction quantization](../../evidence/native/functions/00AFBDC0_Placement_QuantizeYawToEightDirections.c):
DIVSS by3F490FDA, Float32 quotient, FISTP under inherited CW, signed remainder8,
then integer times the step. Free floor-cutout bit25 may still use16 directions.
Quarter-turn attachment handling requires an actual parent slot; raw product slot
flags do not establish that path for ordinary floor objects. Wall403F and spiral
exceptions remain part of actual snap admission.

After application, D05050 compares the applied Float32 yaw difference against
2^-23 before rotation sound, then runs placement validation. See
[exact constants](../../evidence/native/rotation-data.tsv). This is not evidence
that every placement callback, unchanged-angle revalidation or attachment branch
has a managed equivalent.

## Focus and evidence limits

[Focus manager](../../evidence/native/functions/00CEFA30_UserToolManager_ForwardFocusLost.c) invokes virtual18.
The constructor's primary table resolves that slot to the existing shared
[false-return stub](../../evidence/native/functions/007893B0_ScriptCore_EATrace_EATrace_ShouldLogImpl.c), XOR AL,AL; RET.
Host focus cancellation is an existing extension, not original rotation clearing.

The existing CE5DB0 Ghidra body is only one undefined byte. Its established
[160-byte window](../../evidence/native/functions/00CE5DB0_ScriptCore_UserToolUtils_UserToolUtils_ForwardUserToolMouseEventImpl.asm) ([annotated C](../../evidence/native/functions/00CE5DB0_ScriptCore_UserToolUtils_UserToolUtils_ForwardUserToolMouseEventImpl.c)) is freshly checked
against the original executable; it is a bounded linear window, not a complete
owned-function claim. The selected sixteen bodies are complete owned Listings.
The native ambient x87 control/precision and exceptional inputs are inherited;
nearest/even and binary64 transcendental host profiles do not prove arbitrary
native FPU equivalence. Legacy keyboard increment3F490FDC differs from ordinary
snap3F490FDA and remains separate. No target execution or native numeric oracle is claimed.
