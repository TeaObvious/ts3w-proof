# Combo-box control state and original managed authority

The reference is pristine PC 1.67 `TS3W.exe`, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
This is a static original comparison. Names beginning `WinComboBox_` are analyst
role names. The0051B820 stored prototype is instruction-corrected as described
below; other selected prototypes remain inferred. Physical register/stack use,
low-byte results, original bytes and selected instructions govern.

## Complete retained bodies

These eleven actual saved bodies contain 1,440 Listing instructions and 4,633
owned bytes. Their combined envelopes contain 4,642 bytes: nine bytes between
`0051CEE7` and `0051CEEF` are outside the find-value function's owned Listing.
The two preexisting registered frontend raw windows remain byte-identical at
480 and 320 bytes; their actual complete bodies contain 426 and 308 bytes.
The raw windows are not relabeled as complete bodies.

| Entry and original observation | Actual annotated C | Original bytes / assembly |
| --- | --- | --- |
| `0051DDC0`: 42 instructions / 133 bytes. ECX control subobject, one stack word, RET4; temporary UTF16 construction and 16-byte vector append/growth. No selected selection-index write. | [Append value](../../evidence/native/functions/0051DDC0_WinComboBox_AppendValue.c) | [Complete body](../../evidence/native/functions/0051DDC0_WinComboBox_AppendValue.asm) ([C](../../evidence/native/functions/0051DDC0_WinComboBox_AppendValue.c)) |
| `0051CEB0`: 85 / 230 owned bytes, 239-byte envelope. Case-sensitive UTF16 code-unit/length search; first index or `FFFFFFFF`, including null input pointer. Registered string conversion precedes this child, so managed-null behavior is not established by this branch. | [Find value](../../evidence/native/functions/0051CEB0_WinComboBox_FindValueIndex.c) | [Two owned ranges and explicit nine-byte gap](../../evidence/native/functions/0051CEB0_WinComboBox_FindValueIndex.asm) ([C](../../evidence/native/functions/0051CEB0_WinComboBox_FindValueIndex.c)) |
| `0051D080`: 74 / 395. ECX whole object; selected base construction and stores include interface vtable at whole+250, selection zero at whole+260, empty 16-byte-element vector at whole+294/+298/+29C. This is not a recovered complete C++ layout. | [Initialize control](../../evidence/native/functions/0051D080_WinComboBox_InitializeControl.c) | [Complete body](../../evidence/native/functions/0051D080_WinComboBox_InitializeControl.asm) ([C](../../evidence/native/functions/0051D080_WinComboBox_InitializeControl.c)) |
| `0051D300`: 617 / 1,968. Gates empty values/services, configures native 0x500 grid and optional background, chooses modal service behavior, attaches 0x14 callback object. Child grid/font/focus/destruction authority remains bounded. | [Create modal list](../../evidence/native/functions/0051D300_WinComboBox_CreateModalList.c) | [Complete body](../../evidence/native/functions/0051D300_WinComboBox_CreateModalList.asm) ([C](../../evidence/native/functions/0051D300_WinComboBox_CreateModalList.c)) |
| `0051C870`: 22 / 89. Stores modal window and open byte before event `4F5527E9`, Arg2=1; command-ID when nonzero, otherwise control-ID. | [Begin modal notification](../../evidence/native/functions/0051C870_WinComboBox_BeginModalNotification.c) | [Complete body](../../evidence/native/functions/0051C870_WinComboBox_BeginModalNotification.asm) ([C](../../evidence/native/functions/0051C870_WinComboBox_BeginModalNotification.c)) |
| `0051C8D0`: 156 / 456. Clears open state before selected modal/grid/focus teardown, sentinel/callback reset and closing event, Arg2=0, with the same ID fallback. Child selection/destruction effects remain bounded. | [End modal list](../../evidence/native/functions/0051C8D0_WinComboBox_EndModalList.c) | [Complete body](../../evidence/native/functions/0051C8D0_WinComboBox_EndModalList.asm) ([C](../../evidence/native/functions/0051C8D0_WinComboBox_EndModalList.c)) |
| `0051BE40`: 111 / 460. Width40/height10, all-value font measurement, width+8, height+6, one-third-width branch, minimum width30. Selected allocation failure returns low-byte false before output; success writes size and returns low-byte true. | [Measure auto size](../../evidence/native/functions/0051BE40_WinComboBox_MeasureAutoSize.c) | [Complete body](../../evidence/native/functions/0051BE40_WinComboBox_MeasureAutoSize.asm) ([C](../../evidence/native/functions/0051BE40_WinComboBox_MeasureAutoSize.c)) |
| `0051B820`: 55 / 164. Physical service+60/+68 and indirect hit/press-index path; ECX receiver, four stack DWORDs, both exits RET10. First two words are binary32 localX/localY; final two are unused opaque words. Selected pressed-index store, virtual invalidation, AL1. No direct call to `0051D300`; first-press-open parity is not inferred. | [Mouse down](../../evidence/native/functions/0051B820_WinComboBox_HandleMouseDown.c) | [Complete body](../../evidence/native/functions/0051B820_WinComboBox_HandleMouseDown.asm) ([C](../../evidence/native/functions/0051B820_WinComboBox_HandleMouseDown.c)) |
| `009DE7F0`: 2 / 4. Generic `MOV EAX,[ECX+10]; RET`. Vtable `00FBCAA0` slot+40 at `00FBCAE0` points here; frontend command7 invokes it, matching whole+260 selection storage. Other users and original field/class types are unresolved; its function name is unchanged. | [Generic getter](../../evidence/native/functions/009DE7F0_FUN_009de7f0.c) | [Complete body](../../evidence/native/functions/009DE7F0_FUN_009de7f0.asm) ([C](../../evidence/native/functions/009DE7F0_FUN_009de7f0.c)) |
| `0077CCD0`: 175 / 426. Physical cdecl four incoming words despite narrower inferred C. High-byte30 handle/interface `2F5528D9`, global+58 string conversion before command dispatch. | [Registered generic frontend](../../evidence/native/functions/0077CCD0_ScriptCore_UIManager_UIManager_ComboBoxGenericImpl.c) | [Unchanged 480-byte bounded raw window](../../evidence/native/functions/0077CCD0_ScriptCore_UIManager_UIManager_ComboBoxGenericImpl.asm) ([C](../../evidence/native/functions/0077CCD0_ScriptCore_UIManager_UIManager_ComboBoxGenericImpl.c)) |
| `0077FE60`: 101 / 308. Physical cdecl handle/index despite narrower inferred C; interface slot+34, temporary UTF16/variant/global+50 projection and selected cleanup. Invalid admission returns zero. | [Registered value frontend](../../evidence/native/functions/0077FE60_ScriptCore_UIManager_UIManager_ComboBoxGetValueImpl.c) | [Unchanged 320-byte bounded raw window](../../evidence/native/functions/0077FE60_ScriptCore_UIManager_UIManager_ComboBoxGetValueImpl.asm) ([C](../../evidence/native/functions/0077FE60_ScriptCore_UIManager_UIManager_ComboBoxGetValueImpl.c)) |

Generic commands0..10 select Add/Insert/Remove/Clear/Set/Has/Count/Selection/
SetSelection/width/IsOpen. Insert/Remove/Clear/Set/SetSelection frontend response1
ignores child low-byte failure. Count and selection use distinct +3C/+40 slots;
IsOpen normalizes AL. Width service command15 projects through CVTTSS2SI.
String allocator, custom marshaler, indirect dispatch and child reference
ownership are not recovered from inferred C types.

[Selected original data and bounded windows](../../evidence/native/ui-combo-box-control-data.tsv)
retain 1,736 bytes: 232 vtable/dispatch/scalar/pointer bytes and 1,504 bytes in
seven unresolved-entry memory windows. Those windows start at `0051CAA0` (48),
`0051CAD0` (16), `0051CAE0` (192), `0051DAB0` (32), `0051DAD0` (512),
`0051DD00` (192), `0051DE50` (512). The saved full function table has no exact
entry or containing function at their starts. Some windows overlap later defined
functions; this is not a global zero-instruction or complete-function claim.
They have no invented canonical pairs. Vtable count+3C and selection+40 remain
distinct; bounded `0051CAD0` is not relabeled as the selection getter.

The DEFAULT primary pointer label at `00FBCA90`, original word `70c85100`,
automatically displays `PTR_WinComboBox_BeginModalNotification_00fbca90` after
its target's role rename. Its ID, source and primary status remain unchanged;
no explicit label edit or pointer-byte change was made.

## Original managed policy and ABI

The selected original UI ComboBox class, nested ValueList, constructors/Revive,
entry-tag/event workflows and factory wrappers were read as complete managed
bodies: 67 bodies, 1,384 CIL bytes / 566 instructions. Original managed code owns
entry tags and reserved tag slot zero, wrapper/list enumeration and sound/event
adaptation. `mSelected` is the selected sound flag, not native selection storage.
The list is a native proxy rather than a managed duplicate value array. Its
object overloads use `isinst System.String`: incompatible values become null;
`CopyTo` separately uses `castclass` during enumeration. These original policies
were retained in their existing assembly authority.

The original ScriptCore imports are `UIManager_ComboBoxGenericImpl`, token
`06000E38`, four declared arguments returning Int32, and
`UIManager_ComboBoxGetValueImpl`, token `06000E39`, handle/index returning String
through `StringFromVariantMarshaler`. Their registration identity is preserved
in both actual C comments. Stored native C parameter lists are narrower inferred
projections, not a reason to change public hooks. Prototype corrections require
physical producer/stack/return evidence, as in the separate0051B820 correction.

## Current reconstruction differences

Current host state retains zero initial selection, non-shifting insert/remove/
clear, caption marker lifetime, equality-before-clamp and synchronous reentrant
callbacks. Its AuthoredControlId-only event adaptation differs from the selected
native command-ID/control-ID fallback. Current caption-before-event ordering is
separate from the native post-event selected path and unresolved +B4 child.
The current CPU popup, synthetic 14px scrollbar, pointer/focus suppression,
font cache and float/pixel behavior do not reproduce the complete native modal
service/grid lifetime. No full UI pixel/input/native parity, performance or
runtime acceptance follows from this static comparison.

All eleven C files are verbatim actual exports after the reviewed annotation
save. Original bytes and body/Listing ranges remain unchanged. The0051B820 prototype
and prior incorrect one-word/RET4 annotation were corrected against the four-word
dispatcher and both RET10 exits; actual C still contains an annotated indirect-call
coordinate alias. Other selected types remain inferred. Seven absent-entry windows
remain bounded evidence only; they were not promoted to complete functions.
