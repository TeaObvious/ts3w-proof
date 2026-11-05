# Canvas message pump and combo MouseDown ABI

Static original PC1.67 TS3W.exe analysis; the [overview](../../references/retained-proof-overview.md)
identifies the pristine executable. Names describe analyst roles, not recovered
symbols. No original UI/game/input execution was performed.

## Complete canonical bodies and required data

| Entry | Full actual original evidence | Physical ABI and complete ownership |
| --- | --- | --- |
|004107C0 WindowCanvas_PumpMessages|[ASM](../../evidence/native/functions/004107C0_WindowCanvas_PumpMessages.asm) ([C](../../evidence/native/functions/004107C0_WindowCanvas_PumpMessages.c))|ECX receiver, no stack inputs, RET; AL Boolean;107 instructions/268 bytes|
|004113D0 WindowCanvas_InitializeFields|[ASM](../../evidence/native/functions/004113D0_WindowCanvas_InitializeFields.asm) ([C](../../evidence/native/functions/004113D0_WindowCanvas_InitializeFields.c))|ECX receiver, no stack inputs, RET; EAX receiver;48/186|
|0051B820 WinComboBox_HandleMouseDown|[ASM](../../evidence/native/functions/0051B820_WinComboBox_HandleMouseDown.asm) ([C](../../evidence/native/functions/0051B820_WinComboBox_HandleMouseDown.c))|ECX complete window, four stack words, both exits RET10hex; AL1;55/164|

Total210 Listing instructions/618 owned original bytes. All selected bodies are
contiguous; no alignment or adjacent function is promoted into ownership. The
[30 necessary data bytes](../../evidence/native/data/ui-action-posting-and-combo-input.txt)
retain two actual vtable words and the exact zero-terminated Services/EAApp/Canvas
string. Other vtable entries and neighboring strings are not included.

## Actual Canvas producer and message loop

004113D0 installs primary tableF9B380 and writes flags+8=2A, including message
bit20 and invalidation bit08. It clears service+5C/callback+64/cookie+68 and stores
the Canvas allocation name at+30. Initial MOV EAX,ECX remains unchanged through
the full body, so EAX returns the receiver; no stack arguments are consumed.
The actual table+8C word atF9B40C points to004107C0. This joins initializer,
receiver/table and pump entry; it does not recover an entire source type.

The pump's flag08 path writes byte+1C=1 before testing dword+20. Only zero calls
InvalidateRect with HWND+70,NULL,erase0. Flag20 then admits a loop using
PeekMessageW(MSG,HWND0,min0,max0,remove1). Empty queue returns AL1. WM_QUIT12
returns AL0 before any event interception, translation or dispatch.

For another removed message, it builds original event1EE100B with receiver and
message pointers plus an initially zero consumed byte. Nonnull service+5C receives
virtual18(ID,payload,0); otherwise optional cdecl callback+64 receives payload and
cookie+68. With no callback or consumed byte still zero, TranslateMessage then
DispatchMessageW run. Nonzero consumed suppresses those two calls for that one
message. In either ordinary case continue with another PeekMessageW.

Physical comparison410820 compares constant1EE100B with1EE1001, so the +60 service
virtual38 branch cannot run in this body. Ghidra elides that unreachable C path;
full ASM retains its original instructions. Stack/vector/event-local projection
is not promoted to a recovered public event struct or callback ownership API.

No thread-ID query, Task, cancellation token, async completion or bounded error
log occurs in these selected bodies. Their real caller's simulation-thread
identity, once-per-frame placement, startup lifetime and complete original
WindowProc/managed event path remain separate. This local pump is original
reference for message interception/order, not proof that the project's Task-based
original-owner dispatcher or pointer coalescing is native-equivalent.

## Actual Combo MouseDown producer and ABI correction

Original [event dispatcher](../../evidence/native/functions/00504810_WinWindow_DispatchEventToVirtual.asm)
([C](../../evidence/native/functions/00504810_WinWindow_DispatchEventToVirtual.c)) event6 selects primary+3C.
It physically pushes event payload+14, payload+18, binary32 Y from+10, then X
from+0C. The concrete combo primaryFBCC64+3C word atFBCCA0 is0051B820.

Both0051B820 branches end C2 10 00. After saving ESI/EDI, FLD[ESP+10hex] reads
second incoming word; after reserving8 bytes, FLD[ESP+14hex] reads first incoming
word. FSTP places those Y/X values on the outgoing stack for primary virtualB0.
The final two incoming words are not read by this function, although the actual
outer dispatcher produces them. They remain opaque unused DWORDs; no guessed
button/modifier source type is assigned to them here.

Thus the physical interface is thiscall complete receiver plus floatX,floatY and
two opaque words, RET10hex. The former one-word/RET4 prototype was incorrect
metadata. Correcting it and its annotation does **not** fix Ghidra's remaining
indirect-call stacktracking: actual C still shows unaff_retaddr/localX at virtualB0
where the instructions pass localX/localY. This defect is annotated in the actual
C; no speculative virtualB0 prototype or hand-edited pseudocode conceals it.

The function queries service+60(context1), conditionally releases this control's
IWindow through+68(context1,IWindow+4,0), then chooses complete+25C/+258 according
to byte+291 and virtualB0's returned index; the other index becomesFFFFFFFF.
IWindow+4 virtual90 invalidation follows, then AL1. Service capture/focus names
beyond those physical slots remain bounded. No direct0051D300 call exists and
this body does not prove a first press always opens the original modal list.

The [full combo state/modal contract](combo-box-control-state.md) retains native
grid creation, opened publication, teardown and original managed proxy/sound
boundaries. Current retained row picking, key/wheel dispatch, snapshot refresh,
release-latch and focus rules remain separate surrogate behavior. No native bytes
changed; only names, prototypes and annotations were corrected/recovered and the
actual complete C/ASM was exported from the saved database.
