# Dialog input components

This is static analysis of the pristine PC 1.67 `TS3W.exe` identified in the
[reference overview](../../references/retained-proof-overview.md). The names below are analyst labels,
not recovered original symbols. No game or editor was executed.

## Complete selected bodies and ABI

| Entry and evidence | Inclusive body | Instructions / bytes | Instruction-level ABI |
| --- | --- | --- | --- |
| `WinDialog_PickComponent` [ASM](../../evidence/native/functions/005207D0_WinDialog_PickComponent.asm) ([C](../../evidence/native/functions/005207D0_WinDialog_PickComponent.c)) | `005207d0–005208d1` | 65 / 258 | ECX object, two binary32 stack coordinates; EAX component; RET 8. |
| `WinDialog_OnMouseDown` [ASM](../../evidence/native/functions/0051F7F0_WinDialog_OnMouseDown.asm) ([C](../../evidence/native/functions/0051F7F0_WinDialog_OnMouseDown.c)) | `0051f7f0–0051f934` | 88 / 325 | ECX object, four stack DWORDs; first two loaded as coordinates; AL=1; RET 0x10. |
| `WinDialog_OnMouseMove` [ASM](../../evidence/native/functions/00520100_WinDialog_OnMouseMove.asm) ([C](../../evidence/native/functions/00520100_WinDialog_OnMouseMove.c)) | `00520100–00520707` | 360 / 1,544 | ECX object, three stack DWORDs; AL=1; RET 0x0c. |
| `WinDialog_OnMouseUp` [ASM](../../evidence/native/functions/0051F970_WinDialog_OnMouseUp.asm) ([C](../../evidence/native/functions/0051F970_WinDialog_OnMouseUp.c)) | `0051f970–0051f9bf` | 32 / 80 | ECX object, four stack DWORDs; AL=1; RET 0x10. |

The retained Ghidra metadata counts parameters as 3/3/2/1, including inferred
`this` where present. The Down/Move/Up prototypes do not describe the full
instruction ABI. Move has `unaff_ESI`/`unaff_EDI` and misleading floating stack
temporaries; Down casts capture pointers to floats. These artifacts are
preserved in the actual annotated C. Instructions govern the contracts here.
All calls in these four bodies are indirect; vtable references alone do not
establish the event dispatcher's caller order.

## Fields consumed by the bodies

Offsets are from the complete object. The current area is four binary32
floats at `+0x40/+0x44/+0x48/+0x4c` (left/top/right/bottom). The flags DWORD is
`+0x258`, component DWORD `+0x25c`, and stored press offsets `+0x260/+0x264`.
Border floats are `+0x324/+0x328/+0x32c/+0x330`. Move consumes width/height
minima at `+0x35c/+0x360` and maxima at `+0x354/+0x358`. These readers do not
establish constructor defaults, authored property loading or geometry producers.

## Component picking

Border flag `0x20` enables classification independently of Moveable/Sizeable.
For finite coordinates, compute width and height by separate binary32
subtractions, then subtract the right and bottom borders. Test left, right,
top, bottom in that priority order. Components are `2/3` left/right, `4/5`
top/bottom and `6/7/8/9` top-left/top-right/bottom-left/bottom-right. At the
left/top thresholds equality lies inside; at right/bottom it belongs to the
border. Overlapping or inverted borders are not normalized.

The remaining region returns client component `0` when title flag `0x08` is
off. With title enabled, it returns `1` only inside the half-open rectangle
`[+0x284,+0x28c) × [+0x288,+0x290)` and otherwise returns `-1`.
Native `COMISS` with `JC/JBE` makes unordered inputs branch-sensitive;
finite-coordinate rules must not be extended into total-order comparisons.
Upstream finite validation and floating exception masking remain unverified.

## Press, capture and stored offsets

Down passes the supplied event coordinates to primary virtual `+0xa4` and
stores its component result **before** checking `-1` or flags. Components
`0/1` require Moveable bit `1`; `2..9` require Sizeable bit `2`. A failed flag
check stores `-1`. Unsigned values above `9` bypass the flag switch, although
the selected picker returns only `-1` or `0..9`.

For an admitted component, Down reads the **current** pointer through
service `[this+0x30]` virtual `+0x48`, then converts it through parent
`[this+0x2c]`, IWindow subobject `+4`, virtual `+0xc8`. Returned AL is ignored.
Press picking and offset preparation therefore use different coordinate
sources. The binary32 offset stores are:

| Components | X offset | Y offset |
| --- | --- | --- |
| `0/1/2/4/6` | pointerX − left | pointerY − top |
| `3/5/9` | right − pointerX | bottom − pointerY |
| `7` | right − pointerX | pointerY − top |
| `8` | pointerX − left | bottom − pointerY |

After those stores, service virtual `+0x60(1)` queries capture. If its result
differs from `this+4`, Down calls service `+0x64(1,this+4,0)`. Every normal
admission/rejection path calls IWindow `+0x90` and returns AL=1; this return
byte is not an admission result.

## Captured move and cursor selection

Move first queries capture context `1`. A match with `this+4` selects the
captured path: copy the **current** area, read the current service pointer and
apply parent conversion. Components `0/1` compute left = pointerX − pressX,
top = pointerY − pressY, right = (oldRight − oldLeft) + left and bottom =
(oldBottom − oldTop) + top. Each operation is a separate binary32 `SUBSS` or
`ADDSS`. The initial area copy precedes the pointer-service and parent-conversion
calls; components0/1 then reload width/height from the live object fields after
those calls. The formula's old edges mean those later reads, not the earlier
stack copy. Resize instead starts from the copied area. Callback mutation is
unproven; the distinction establishes read order. There is no Moveable
recheck or zero-travel early return in this branch. It calls IWindow `+0x64`
with the computed area even when unchanged.

Components `2..9` resize selected sides against minima then maxima, with
component-specific branch/adjustment order. The complete instructions retain
the `COMISS/JBE` behavior; a generic clamp is not established as equivalent.
Unsigned component values above `9` still supply the copied, unchanged area.

When capture does not match, only cursor `0` or unsigned
`(cursor−0x1001) <= 0x0c` is replaceable. Component picking selects cursors
`2/3→0x1009`, `4/5→0x1008`, `6/9→0x100a`, `7/8→0x100b`, otherwise `0x1002`.
All paths call IWindow `+0x90` and return AL=1.

The [original jump-table data](../../evidence/native/data/dialog-input-jump-tables.txt)
retains the two Down selector/pointer tables and the Move component/cursor
tables. These bytes lie outside the function bodies; alignment bytes between
the Down tables are excluded.

## Release and unresolved boundaries

Up queries capture context `1`; on a match with `this+4`, it calls service
`+0x68(1,this+4,0)`. **After that call**, it stores component `-1`, calls
IWindow `+0x90` and returns AL=1. There is no direct Move or area-set call in
this body. Indirect release, conversion and post-operation callees may have
further effects; no claim about their callback or queued-event behavior is
established by these four bodies.

Exact event parameter types, enabled/focus/button admission, consuming-child
and ancestor policy, per-instance service/subclass identity, parent transform,
title/border producers and property-loading precedence remain unresolved.
