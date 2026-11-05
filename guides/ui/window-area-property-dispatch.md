# Window Area property dispatch

Static pristine PC1.67 TS3W.exe analysis; reference identified in the
[central overview](../../references/retained-proof-overview.md). No original UI/runtime was executed.

## Complete canonical boundary

Registered ScriptCore.UIManager::UIManager_SetRectFloatPropertyImpl0077B950 has
111 Listing instructions/357 owned bytes, inclusive0077B950–0077BAB4.
[Original ASM](../../evidence/native/functions/0077B950_ScriptCore_UIManager_UIManager_SetRectFloatPropertyImpl.asm) ([actual annotated C](../../evidence/native/functions/0077B950_ScriptCore_UIManager_UIManager_SetRectFloatPropertyImpl.c)).
The actual complete function body ends at RET; following alignment bytes are not
owned by this function.

Physical ABI is cdecl: handleDWORD, propertyDWORD, pointer to four binary32 words;
RET leaves argument cleanup to caller, void. The original registration identity
and existing annotations remain. C types/names identify physical arguments but do
not repair Ghidra's indirect-call stack aliases.

## Admission and actual property provenance

The function first obtains its global interface, then accepts only handle high
byte30 and a nonnull rectangle pointer. It looks up the window through global
virtualCC. At0077B98C, EDI receives the second physical argument from then-ESP+68;
0077B990 compares **propID** withEEC1B005. The actual C instead compares winHandle,
and also aliases the generic descriptor argument. Both defects are explicitly
annotated in the database/export; the C was not hand corrected.

For Area, a null window returns. It queries special interfaceEEEE8218; when present,
MOVSS copies all four supplied32-bit words into a local rectangle without rounding,
normalization or extra validation, and invokes virtual64 before returning. Missing
that interface falls through the generic descriptor path, not unconditional failure.

Generic handling requires a window and interfaceEEC58382, obtains its property
context, resolves the physical EDI property through00511CA0, indexes0114F4F8 with
the descriptor type maskedFFF, and invokes00511D40 using the original rectangle
pointer. It then notifies context virtual1C without testing a write result and
cleans up its temporary variant. Concrete writer/notification effects are separate.

## Original managed producer

The [actual selected UI.dll members](../../evidence/managed/selected/ui-window-area/area-property.cs.txt)
([complete selected original CIL](../../evidence/managed/selected/ui-window-area/area-property.il.txt))
contain four complete members/76 CIL bytes from pristine UI.dll.
WindowBase.get_Area06000050 forwardsEEC1B005. Setter06000051 first gets Area,
compares supplied Rect via the original op_Inequality and branches to return when
equal; it forwards only a changed value. UIManager.SetRectProperty06001294 and
GetRectProperty06001295 call gUIMgr.Set/GetRectFloatProperty. This identifies the
managed boundary without inventing inequality/NaN semantics or a local cache.

## Limits

This proves the selected Area producer and its actual native argument/dispatch
contract. It does not identify every queried interface's concrete virtual64 target,
full winproc scheduler, layout inheritance, event reentrancy, geometry storage or
native framebuffer refresh policy. In particular00513EF0 is not named as the
Area setter merely because a different inspected vtable has a matching slot.
The native boundary contains no current frontend override dictionary, remembered
framebuffer-size pair, virtual-record refresh or named HUD classification policy.
No claim about their global absence from the original game follows from this leaf.
