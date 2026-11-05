# Slider and scrollbar input

This page describes selected original PC 1.67 native bodies. The reference
binary is identified in the [central reference](../../references/retained-proof-overview.md). Names are
analyst labels. Static instruction analysis establishes the local state and
arithmetic described here; it does not establish observed input delivery or
rendered acceptance.

## Paired bodies and original data

These 24 bodies contain 2,503 instructions and 8,913 original bytes. Their
complete envelopes exclude the adjacent switch tables and alignment bytes.
The [original data](../../evidence/native/data/slider-scrollbar-input.txt)
contains five switch tables (224 bytes), selected arithmetic constants and
only the vtable slots needed to identify the selected calls.

| Address | Analyst label | Evidence |
| --- | --- | --- |
| `0x00504810` | WinWindow_DispatchEventToVirtual | [ASM](../../evidence/native/functions/00504810_WinWindow_DispatchEventToVirtual.asm) ([C](../../evidence/native/functions/00504810_WinWindow_DispatchEventToVirtual.c)) |
| `0x00539850` | WinSlider_SetInteractiveValue | [ASM](../../evidence/native/functions/00539850_WinSlider_SetInteractiveValue.asm) ([C](../../evidence/native/functions/00539850_WinSlider_SetInteractiveValue.c)) |
| `0x00539ef0` | WinSlider_ValueAtPointer | [ASM](../../evidence/native/functions/00539EF0_WinSlider_ValueAtPointer.asm) ([C](../../evidence/native/functions/00539EF0_WinSlider_ValueAtPointer.c)) |
| `0x00539b70` | WinSlider_UpdateComponentGeometry | [ASM](../../evidence/native/functions/00539B70_WinSlider_UpdateComponentGeometry.asm) ([C](../../evidence/native/functions/00539B70_WinSlider_UpdateComponentGeometry.c)) |
| `0x005393a0` | WinSlider_OnMouseUp | [ASM](../../evidence/native/functions/005393A0_WinSlider_OnMouseUp.asm) ([C](../../evidence/native/functions/005393A0_WinSlider_OnMouseUp.c)) |
| `0x00539420` | WinSlider_OnMouseMove | [ASM](../../evidence/native/functions/00539420_WinSlider_OnMouseMove.asm) ([C](../../evidence/native/functions/00539420_WinSlider_OnMouseMove.c)) |
| `0x005361e0` | WinScrollbar_OnMouseDown | [ASM](../../evidence/native/functions/005361E0_WinScrollbar_OnMouseDown.asm) ([C](../../evidence/native/functions/005361E0_WinScrollbar_OnMouseDown.c)) |
| `0x005363c0` | WinScrollbar_OnMouseUp | [ASM](../../evidence/native/functions/005363C0_WinScrollbar_OnMouseUp.asm) ([C](../../evidence/native/functions/005363C0_WinScrollbar_OnMouseUp.c)) |
| `0x005364c0` | WinScrollbar_OnUpdate | [ASM](../../evidence/native/functions/005364C0_WinScrollbar_OnUpdate.asm) ([C](../../evidence/native/functions/005364C0_WinScrollbar_OnUpdate.c)) |
| `0x00537130` | WinScrollbar_UpdateComponentGeometry | [ASM](../../evidence/native/functions/00537130_WinScrollbar_UpdateComponentGeometry.asm) ([C](../../evidence/native/functions/00537130_WinScrollbar_UpdateComponentGeometry.c)) |
| `0x00505da0` | UiRect_ContainsPointHalfOpen | [ASM](../../evidence/native/functions/00505DA0_UiRect_ContainsPointHalfOpen.asm) ([C](../../evidence/native/functions/00505DA0_UiRect_ContainsPointHalfOpen.c)) |
| `0x004f3160` | ElapsedClock_InitializeCalibrationScales | [ASM](../../evidence/native/functions/004F3160_ElapsedClock_InitializeCalibrationScales.asm) ([C](../../evidence/native/functions/004F3160_ElapsedClock_InitializeCalibrationScales.c)) |
| `0x004f34e0` | ElapsedClock_SelectCounterScale | [ASM](../../evidence/native/functions/004F34E0_ElapsedClock_SelectCounterScale.asm) ([C](../../evidence/native/functions/004F34E0_ElapsedClock_SelectCounterScale.c)) |
| `0x004f36c0` | ElapsedClock_ReadRoundedScaledTicks | [ASM](../../evidence/native/functions/004F36C0_ElapsedClock_ReadRoundedScaledTicks.asm) ([C](../../evidence/native/functions/004F36C0_ElapsedClock_ReadRoundedScaledTicks.c)) |
| `0x004e3890` | ElapsedClock_Restart | [ASM](../../evidence/native/functions/004E3890_ElapsedClock_Restart.asm) ([C](../../evidence/native/functions/004E3890_ElapsedClock_Restart.c)) |
| `0x004f3620` | ElapsedClock_StopAndAccumulate | [ASM](../../evidence/native/functions/004F3620_ElapsedClock_StopAndAccumulate.asm) ([C](../../evidence/native/functions/004F3620_ElapsedClock_StopAndAccumulate.c)) |
| `0x00538ea0` | WinScrollbar_Construct | [ASM](../../evidence/native/functions/00538EA0_WinScrollbar_Construct.asm) ([C](../../evidence/native/functions/00538EA0_WinScrollbar_Construct.c)) |
| `0x0053b4d0` | WinSlider_Construct | [ASM](../../evidence/native/functions/0053B4D0_WinSlider_Construct.asm) ([C](../../evidence/native/functions/0053B4D0_WinSlider_Construct.c)) |
| `0x005392f0` | WinSlider_OnMouseDown | [ASM](../../evidence/native/functions/005392F0_WinSlider_OnMouseDown.asm) ([C](../../evidence/native/functions/005392F0_WinSlider_OnMouseDown.c)) |
| `0x00539ac0` | WinSlider_PickComponent | [ASM](../../evidence/native/functions/00539AC0_WinSlider_PickComponent.asm) ([C](../../evidence/native/functions/00539AC0_WinSlider_PickComponent.c)) |
| `0x00536fc0` | WinScrollbar_PickComponent | [ASM](../../evidence/native/functions/00536FC0_WinScrollbar_PickComponent.asm) ([C](../../evidence/native/functions/00536FC0_WinScrollbar_PickComponent.c)) |
| `0x00536010` | WinScrollbar_SetTargetValue | [ASM](../../evidence/native/functions/00536010_WinScrollbar_SetTargetValue.asm) ([C](../../evidence/native/functions/00536010_WinScrollbar_SetTargetValue.c)) |
| `0x00536b30` | WinScrollbar_SetInteractiveValue | [ASM](../../evidence/native/functions/00536B30_WinScrollbar_SetInteractiveValue.asm) ([C](../../evidence/native/functions/00536B30_WinScrollbar_SetInteractiveValue.c)) |
| `0x00536bc0` | WinScrollbar_OnMouseMove | [ASM](../../evidence/native/functions/00536BC0_WinScrollbar_OnMouseMove.asm) ([C](../../evidence/native/functions/00536BC0_WinScrollbar_OnMouseMove.c)) |

Existing helpers keep their canonical pairs: scaled elapsed read
[ASM](../../evidence/native/functions/004F37C0_ElapsedClock_ReadScaledTicks.asm) ([C](../../evidence/native/functions/004F37C0_ElapsedClock_ReadScaledTicks.c)), clock construction
[ASM](../../evidence/native/functions/004F39B0_ElapsedClock_ConstructAndOptionallyStart.asm) ([C](../../evidence/native/functions/004F39B0_ElapsedClock_ConstructAndOptionallyStart.c)), low-int conversion
[ASM](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.asm) ([C](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.c)) and int64 conversion
[ASM](../../evidence/native/functions/00F7F656_Compiler_TruncateX87ToInt64Fallback.asm) ([C](../../evidence/native/functions/00F7F656_Compiler_TruncateX87ToInt64Fallback.c)). The existing descriptor-labelled entry `005360C0` is
not reclassified as a scrollbar property getter here.

## Dispatch and physical ABI

Addresses, field/vtable offsets and RET immediates below are hexadecimal.
Component IDs and timer counts are decimal.

The dispatcher `00504810` reads the event code at record `+8`. IDs 6/7/8 select
primary vtable+3C/+40/+44. Constructors bind slider primary `00FBFF88` and
scrollbar primary `00FBFBC8`; the original slot words identify the handlers in
the table above. This does not prove subclass identity or the ordering of
outer managed callbacks, ancestor admission, focus or disabled-state policy.

ECX is the complete object for these handlers. Down/Up consume four stack
DWORDs (RET10); Move consumes three (RET0C). The first two coordinate words
are passed through FLD/FSTP as floats. Normal handler exits set AL=1 without
normalizing upper EAX. This byte is not proof that a component was admitted.
Rejected Down paths can return it without invalidating.

Value setters receive the value interface at complete+250; IWindow is
complete+4. Interactive setters take an int32 request and a low-byte notify
argument (RET8); the scrollbar target setter consumes one DWORD (RET4).
Pointer-to-value takes two float stack coordinates and returns EAX int32
(RET8). Geometry/update bodies have no stack arguments; update returns AL=1.
The half-open rectangle helper consumes two float coordinates (RET8) and
returns normalized EAX=0/1. Constructors return their ECX receiver in EAX.

Actual Ghidra signatures remain in the exports and index, including incomplete
argument lists, register aliases and misleading inferred return types. They
are not complete API declarations. Clocks have a 24-byte ECX receiver;
rounded read returns its count bits in EDX:EAX. No inferred prototype has
been silently repaired to fit this description. The six newly defined entries retain
actual stored `undefined Name(void)` signatures and zero metadata parameters,
while the actual decompiler infers richer declarations. Slider Down C misassigns
a third ValueAt argument; scrollbar Move C loses the explicit minimum addition
and setter arguments. The paired instructions show two coordinates, the notify
word owned by the setter, and minimum added before its call. Preserve these
renderings as evidence; do not use their expressions as replacement code.

## Slider

The picker tests thumb 1, track 2, then background 0 and otherwise returns -1.
Finite rectangles are half open; original COMISS branches govern unordered
values. Picking does not refresh geometry or perform a local enabled query.

Down stores the selected component byte at complete+265 before the FF rejection branch.
An admitted press queries context 1 capture and acquires only on owner mismatch.
Track 2 invokes live pointer-to-value then interactive value with notify 1. The
notify word pushed before ValueAt belongs to the setter, not a third pointer
coordinate. No thumb grab offset is stored. Captured Move with pressed 1 uses
live pointer-to-value again; other captured components consume without a local
value write. Uncaptured Move updates hover+264. Neither local path clears the
pressed byte merely because capture was lost.

Up releases matching capture before clearing pressed to FF, repicking hover
and invalidating. It contains no direct final-value write or synthetic Move.
Effects of the indirect release callback are outside this local guarantee.

Interactive value `00539850` requires returned **AL mask 0x02** from IWindow
virtual+28. Interpreting this as Enabled remains provisional. The raw,
unpaired getter candidate is insufficient to close the property mapping.
Clamp signed maximum first, then minimum; there is no invalid-range rejection.
On change, store before optional event `EF00A884` and invalidate. The chosen ID
is complete+3C, falling back to+38; the record carries old/new values. Full
native-record to managed-argument mapping remains open.

Geometry clears dirty+266 before scheduling/drawable admission. It can clamp
the actual stored value. Three component metadata sizes come from drawable+18
with orientation-dependent bit80. Fallback dimensions are horizontal
min(width*0.5,height) by height, or vertical width by min(height*0.5,width).
Each component has a separate cross-axis rectangle; background need not cover
the entire window. Vertical thumb placement reverses direction. Both the
invalidation tail jump and the ordinary RET belong to the published body.

ValueAt refreshes geometry, subtracts half the live thumb size and uses live
track-minus-thumb travel. SSE clamps against 0 then travel and divides without
an early zero/negative-travel guard. Signed32 range subtraction precedes FILD;
x87 multiplies, adds binary32 half, stores double, calls imported MSVCR80 floor
and the canonical low-int converter. Horizontal adds minimum; vertical
subtracts from maximum. Replacing this mixed SSE/x87 sequence with a generic
float/double formula is not an established equivalence. Nonfinite inputs,
exception masks and exceptional CRT conversion remain unresolved.

## Scrollbar

Current/target/baseline are complete+254/+25C/+260; minimum/upper/visible are
+264/+268/+26C. Arrow/page/minimum-thumb/orientation are +274/+278/+27C/+280;
hover/pressed bytes are +284/+285, grab offset+288, dirty+28C, flags+290,
clock+298. Picker order is 3,5,2,6,1,4,0, then -1. Components 4/0 use the paired
half-open rectangle helper. There is no local refresh or enabled query.

Down first stops/accumulates the clock, then picks and stores pressed before
the FF rejection branch. Capture is requested only on mismatch. Arrow 1/6 changes target
by the live signed arrow field; current applies immediately if `flags & 3 == 0`.
Page 2/5 uses the page field and applies immediately if `flags & 2 == 0`. Thumb 3
stops again, copies current into target and stores a binary32 grab offset
from the supplied axis and current thumb/track starts. Reads after virtual
calls remain live; callbacks are not assumed inert.

Target `00536010` optionally rounds by raw **signed IDIV** using the arrow field,
doubled remainder, signed comparison and integer multiplication. No divisor
minimum is inserted. It clamps upper-visible first, then minimum; target
stores precede comparison with current. A different target snapshots current,
invalidates, clears clock start/accumulator and restarts. It does not always
apply current. Zero division, INT_MIN/-1 and signed32 wrap are not normalized.

Interactive current `00536B30` clamps upper then minimum, ignores unchanged,
stores current and optionally emits `8EF0C8DD` with chosen ID and old/new. A zero
notify byte instead synchronizes the second target word. Invalidate follows.
There is no local slider-style IWindow+28 query.

Captured thumb Move reads live ranges and geometry. Positive travel uses the
saved grab offset, signed range, x87 multiply/divide/+0.5, double floor and
canonical conversion; nonpositive travel uses minimum. Notify 1 setter runs
before reading current back into target. Other captured components update
hover. Uncaptured movement does not locally cancel pressed state.

Up releases matching capture first, then reads the live pressed byte; thumb 3
flushes current through the target setter. It clears pressed, repicks hover,
and conditionally stops/accumulates and unschedules when increment bit 2 is
off. Release callbacks may affect those subsequent reads.

Update refreshes geometry first. The smooth-arrow path uses scaled elapsed,
signed arrow amount and the existing binary32 0.001 word documented in
[original light data](../rendering/local-light-original-data.tsv). At amount
>=1, matching hover applies a truncated amount; the clock restarts after the
threshold even without a matching hover. Increment interpolation selects its
endpoint at unsigned rounded count >= 150; below it, scaled elapsed times
binary32(1/150) and signed32 target-baseline feeds x87, then a binary32 store
and CVTTSS2SI. Repeat proceeds only at rounded count > 150: the first ordinary
integer count is 151. Matching pressed/hover 1/2/5/6 chooses arrow/page target
delta; restart also occurs without an eligible delta. This is not a proof of
a Stopwatch deadline at 0.151 seconds.

Geometry can mutate target/current through clamps before producing seven
component rectangles. Page delta is signed max(1,visible-overlap). Missing
arrow metadata multiplies by stored binary32 1/3, rather than dividing by 3.
Signed32 range/travel and integer signed half-travel arithmetic precede float
division. Thumb/track geometry and callbacks remain live.

## Clock scale and count

Calibration `004F3160` obtains QueryPerformanceFrequency, computes an x87
reciprocal times 1000 and stores binary32 scale `11CC8FC`. Mode 4 of `004F34E0`
selects it; the scrollbar constructor selects mode 4. Thus milliseconds are
conditional on valid initialized QPF calibration. Startup reachability, OS
failure handling, counter validity and global calibration guards are open.

For a running clock, scaled and rounded reads correct unsigned64 delta.
When delta <= overhead they add one raw tick; otherwise subtract overhead, then include accumulated ticks
with carry/wrap. Unsigned-to-x87 conversion and stored binary32 scale govern
the result. Rounded read adds binary32 word `3EFFFEB0`
(0.49998998641967773), then tail-jumps to the canonical int64 converter.
Restart clears start/accumulator and samples the selected counter; Stop
accumulates corrected elapsed and clears start, preserving accumulated time.
The compiler converters have feature/control-state branches; generic Round
or floor semantics for exceptional inputs are not established.

These selected native bodies do not close original managed callback ordering,
resource/metadata production, scheduler behavior or rendered acceptance. They
establish no new managed policy duplication and prescribe no replacement
framework or protective invalid-input policy.

## Scroll-area setup, current child data and value movement

The [registered SetupScrollbars API](../../api/ScriptCore.UIManager/0x01162f58.md) joins ScriptCore MethodDef06000E27 to77B4F0; original SetupScrollbars06000E98 calls it atIL0003. [Managed ScrollWindow C](../../evidence/managed/ui-scroll-area/ScrollWindow.cs.txt) ([six complete selected IL bodies](../../evidence/managed/ui-scroll-area/ScrollWindow.il.json), [package/resource/version/MVID/hash identities](../../evidence/managed/ui-scroll-area/identities.json)) comes from original1.67 gameplay.package, not a mod or prepared DLL. PreInit060032EF loads the ScrollWindow layout and subscribes AreaChange. Init060032F0 resolves six standard/mini/override bars, then UpdateScrollBars060032F3; that method calls Window.SetupScrollbars06000306 atIL00B2. It requires both current standard references, assigns one authored15px edge track, selects Never for the inactive axis and AsNeeded/Always for the active axis. OnAreaChange060032F4 calls Update atIL0007. Mini/override installation changes actual bar IDs/references; it is not just a class-label choice. Native final18px track layout is a later distinct producer.

[77B4F0 ASM](../../evidence/native/functions/0077B4F0_ScriptCore_UIManager_UIManager_SetupScrollbarsImpl.asm) ([C](../../evidence/native/functions/0077B4F0_ScriptCore_UIManager_UIManager_SetupScrollbarsImpl.c)) validates the UI handle/object/IWindow, then visits direct children and queries scrollbar interface2EF0C885. Queried bars are assigned horizontal8EF24284 if orientation1, otherwise vertical8EF24283, before the scroll-area processor is updated/attached. It searches existing WindowProc type034DEC59, calls [7ECCE0 ASM](../../evidence/native/functions/007ECCE0_FUN_007ecce0.asm) ([C](../../evidence/native/functions/007ECCE0_FUN_007ecce0.c)) on a match, otherwise allocates18 bytes and uses [7ECAC0 ASM](../../evidence/native/functions/007ECAC0_FUN_007ecac0.asm) ([C](../../evidence/native/functions/007ECAC0_FUN_007ecac0.c)). The update stores settings10/14 before refreshing; constructor stores them and installs the processor vtables. Allocation failure and AddProc/null semantics require their concrete callees; no transactional rollback is inferred.

[7EC490 ASM](../../evidence/native/functions/007EC490_FUN_007ec490.asm) ([C](../../evidence/native/functions/007EC490_FUN_007ec490.c)) physically takes ECX processor plus one stack parent, RET4void. Current C omits ECX and falsely renders settings as globals at10/14; actual EBX comes from the saved entry ECX. The body first locates a direct child by each reservedID **and** scrollbar interface; absent bars use ordinary factory539080 orientation1/2 and retained IWindow add-child operations. It unions the local viewport with child rectangles except children whose IWindow virtual1C ControlID equals either reservedID. [51FE90 ASM](../../evidence/native/functions/0051FE90_FUN_0051fe90.asm) ([C](../../evidence/native/functions/0051FE90_FUN_0051fe90.c)) excludes zero-width/height second rectangles and replaces a degenerate first rectangle; other lanes use actual SSE comparisons. NaN/zero-size/current CLR Math selection is not generalized from ordinary finite extents.

For each axis, setting1 hides; otherwise an extent greater than viewport or setting3 admits it. The range is set lower0, upperCVTTSS2SI(extent), visibleCVTTSS2SI(viewport), then current absolute signed-truncated minimum edge via integer CDQ/XOR/SUB; notify arguments/order remain visible in the Listing. Both axes read live parent/child data and perform virtual setters; this is no simultaneous layout publication. The necessary original float word FF4A64 is18.0. Both visible tracks reserve the shared corner; one visible track takes the corresponding full viewport edge. Tiny/negative/nonfinite viewports do not gain the host's protective Math.Max clamps from these instructions. Acquired bars are released after layout.

The existing [original input data](../../evidence/native/data/slider-scrollbar-input.txt) now includes the primary vtable,18.0 word and qualified488-byte callback window7ECAF0. There is no current defined function/owned Listing/decompiler body for that address; no DB mutation or invented C was used. Vtable101E618 references it. Message+8 codes0E and10 refresh, with10 setting ClipChildren400 first; changed8EF0C8DD selects source ID at+0C. Only reservedH/V sources move children. Each child's current ControlID is tested against both reservedIDs; other child rectangles translate through IWindow virtual64. The direct child iteration is native live list traversal, not the host's array snapshot.

536B30 writes previous/current Int32 at message+10/+14. Callback7ECB38 MOVs previous,7ECB3B SUBs current in32bits, and stores the result7ECB43. Horizontal7ECBC0 and vertical7ECC2D perform CVTSI2SS **after** subtraction; paired coordinates then receive ADDSS. For previous16777217/current16777216, expected displacement is1. Converting both operands toSingle first can instead produce0. The subtraction is wrapping32bit; no protective widening/clamp is inferred. Full original event-record→managed callback mapping and ancestor propagation still require their selected adapters, not this local message proof.

Four newly needed existing owned bodies total1851bytes/606instructions; twelve existing canonical windows are reused. The callback is separate qualified data/CFG, not a fifth canonical function pair. Original constructor/reference ownership, inherited custom Scrollbar interface admission, allocation/error/reentry, registration/event routing, invalid-setting/malformed numeric semantics, caller clocks and complete teardown/thread/resource lifetime remain explicit limits. Native static rules do not prove OpenTS3's CLR stores, transition class, snapshots, callback queue, Module/Domain placement, cache/races or rendered/runtime acceptance.

The remaining managed setup forwarding is explicit: [Window.SetupScrollbars C](../../evidence/managed/ui-scroll-area/Window.SetupScrollbars.cs.txt) ([complete IL](../../evidence/managed/ui-scroll-area/Window.SetupScrollbars.il.json))06000306 calls UI.UIManager.SetupScrollbars0600128B atIL0003. [UIManager forwarder C](../../evidence/managed/ui-scroll-area/UIManager.SetupScrollbars.cs.txt) ([complete IL](../../evidence/managed/ui-scroll-area/UIManager.SetupScrollbars.il.json)) reads gUIMgr, then window.WinHandle, then dispatches IUIManager.SetupScrollbars atIL000D. This interface dispatch is distinct from a claim that an arbitrary run selected ScriptCore. [Original nested enum metadata](../../evidence/managed/ui-scroll-area/Window.ScrollbarSettings.json) establishes Window+ScrollbarSettings TypeDef0200006D with Int32 literals Never1/AsNeeded2/Always3; it is not a top-level UI or SimIFace type.
