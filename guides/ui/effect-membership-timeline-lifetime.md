# Effect membership, timeline and counted lifetime

The original reference is 32-bit PC1.67 TS3W.exe, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Names such as CountedReference_, UiEffect_ and UiEffectKind6_ are descriptive
analyst names. They are not recovered source class names. Stored/inferred
prototypes remain unchanged; physical receiver adjustment, registers, stack
cleanup, low-byte values and original floating-point instructions govern.
This is static original evidence, not an executed UI or pixel/timing result.

## Physical scope and canonical pairs

Thirteen complete defined bodies own1275 saved Listing instructions/3724 pristine
bytes, with no body gap. Four registered frontends retain one-byte defined bodies
and zero selected Listing instructions. Their existing368/96/128/128-byte raw
windows are bounded physical evidence, not recovered full functions. The existing
EffectListGeneric raw window remains736 bytes although its complete owned body is
704 bytes/277 instructions. All five old raw windows and their code-index scopes
are preserved. Twelve new internal pairs contain998 Listing instructions/3020
owned bytes; all seventeen C files are verbatim annotated Ghidra renderings.

| Entry | Complete physical observation | Original pair |
| --- | --- | --- |
| `0040A300` | 3 instructions/8B: shared count DWORD[ECX+8] increment, return new word. No atomic prefix/null/overflow check. | [ASM](../../evidence/native/functions/0040A300_CountedReference_Retain.asm) ([C](../../evidence/native/functions/0040A300_CountedReference_Retain.c)) |
| `00504BC0` | 11/23B: decrement same word, capture count; only zero calls whole-primary vtable+8 with argument1, then return captured count. Not a proved allocator implementation. | [ASM](../../evidence/native/functions/00504BC0_CountedReference_ReleaseAndDispatchZero.asm) ([C](../../evidence/native/functions/00504BC0_CountedReference_ReleaseAndDispatchZero.c)) |
| `00513CE0` | 10/24B: null receiver returns0; otherwise query receiver primary virtual+C with ID2F009DD0. No visible retain/release/owner write. | [ASM](../../evidence/native/functions/00513CE0_UiEffect_QueryAttachmentInterface.asm) ([C](../../evidence/native/functions/00513CE0_UiEffect_QueryAttachmentInterface.c)) |
| `005162D0` | 11/35B: interface ID08239C2F gives whole+10 for nonnull receiver, else0; other IDs tail-call00504B80. RET4. | [ASM](../../evidence/native/functions/005162D0_UiEffectKind6_QueryInterface.asm) ([C](../../evidence/native/functions/005162D0_UiEffectKind6_QueryInterface.c)) |
| `00516460` | 16/67B: input-kind6 constructor-shaped initialization; final primary/whole+4/whole+10 tables are00FBBD20/00FBBD08/00FBBC40. | [ASM](../../evidence/native/functions/00516460_UiEffectKind6_InitializeInterfaces.asm) ([C](../../evidence/native/functions/00516460_UiEffectKind6_InitializeInterfaces.c)) |
| `005164D0` | 16/52B: reset whole+10/+4/primary tables; low stack-byte bit gates00505080; return whole/RET4. Child allocator/free protocol remains unread. | [ASM](../../evidence/native/functions/005164D0_UiEffectKind6_ResetVtablesAndConditionallyDestroy.asm) ([C](../../evidence/native/functions/005164D0_UiEffectKind6_ResetVtablesAndConditionallyDestroy.c)) |
| `00516C20` | 1/5B: physical direct JMP0040A300. C projects the shared child; it is not additional physical instructions. | [ASM](../../evidence/native/functions/00516C20_CountedReference_Retain.asm) ([C](../../evidence/native/functions/00516C20_CountedReference_Retain.c)) |
| `00516F40` | 224/856B: physical x87-return interpolation; incoming bounds, kind handling, spring writes and extended precision below. | [ASM](../../evidence/native/functions/00516F40_UiEffect_InterpolateTimelinePosition.asm) ([C](../../evidence/native/functions/00516F40_UiEffect_InterpolateTimelinePosition.c)) |
| `005174F0` | 66/162B: owner/group completion dispatch, selected window+A0 then owner recheck and tail+A4; grouped children remain bounded. | [ASM](../../evidence/native/functions/005174F0_UiEffect_DispatchCompletion.asm) ([C](../../evidence/native/functions/005174F0_UiEffect_DispatchCompletion.c)) |
| `005176F0` | 599/1668B: event-driven timeline with runtime clock011CE088 and owner/group/loop state; selected virtual+9C receiver remains explicit. | [ASM](../../evidence/native/functions/005176F0_UiEffect_HandleTimelineEvent.asm) ([C](../../evidence/native/functions/005176F0_UiEffect_HandleTimelineEvent.c)) |
| `00522A40` | 40/115B: save/change/restore x87 rounding control, FISTP negative-alpha product, low-DWORD shift and shade subtraction. | [ASM](../../evidence/native/functions/00522A40_UiFade_ApplyShadeAlpha.asm) ([C](../../evidence/native/functions/00522A40_UiFade_ApplyShadeAlpha.c)) |
| `00539560` | 1/5B: physical direct JMP00504BC0; actual C projects the shared decrement/zero-dispatch child. | [ASM](../../evidence/native/functions/00539560_CountedReference_ReleaseAndDispatchZero.asm) ([C](../../evidence/native/functions/00539560_CountedReference_ReleaseAndDispatchZero.c)) |
| `0077D040` | 277/704B: admitted native window/list command frontend; original736B raw window remains bounded beyond that body. | [ASM](../../evidence/native/functions/0077D040_ScriptCore_UIManager_UIManager_EffectListGenericImpl.asm) ([C](../../evidence/native/functions/0077D040_ScriptCore_UIManager_UIManager_EffectListGenericImpl.c)) |

| Registered frontend | Bounded physical authority | Original pair |
| --- | --- | --- |
| `00779AA0` | NewEffect:368B; unchanged UInt32 input then CMP6/unsigned-JA, seven-way table, observed kind7 zero route. One-byte metadata/zero selected Listing. | [Unchanged raw window](../../evidence/native/functions/00779AA0_ScriptCore_UIManager_UIManager_NewEffectImpl.asm) ([C](../../evidence/native/functions/00779AA0_ScriptCore_UIManager_UIManager_NewEffectImpl.c)) |
| `00779C10` | DestroyEffect:96B; selected tagged-handle/global lookup then interface+4, qualified below. One-byte metadata/zero selected Listing. | [Unchanged raw window](../../evidence/native/functions/00779C10_ScriptCore_UIManager_UIManager_DestroyEffectImpl.asm) ([C](../../evidence/native/functions/00779C10_ScriptCore_UIManager_UIManager_DestroyEffectImpl.c)) |
| `0077CF40` | TriggerEffect:128B; selected tagged-handle/low-byte reverse forwarding, not full timeline authority. One-byte metadata/zero selected Listing. | [Unchanged raw window](../../evidence/native/functions/0077CF40_ScriptCore_UIManager_UIManager_TriggerEffectImpl.asm) ([C](../../evidence/native/functions/0077CF40_ScriptCore_UIManager_UIManager_TriggerEffectImpl.c)) |
| `0077CFC0` | ResetEffect:128B; selected tagged-handle/low-byte reverse forwarding, not a recovered complete reset implementation. One-byte metadata/zero selected Listing. | [Unchanged raw window](../../evidence/native/functions/0077CFC0_ScriptCore_UIManager_UIManager_ResetEffectImpl.asm) ([C](../../evidence/native/functions/0077CFC0_ScriptCore_UIManager_UIManager_ResetEffectImpl.c)) |

## Managed proxy, setter and release policy

The [complete selected original CIL](../../evidence/managed/selected/ui-effects/effects.il.txt)
and [annotated selected managed decompilation](../../evidence/managed/selected/ui-effects/effects.selected.cs.txt)
retain93 full bodies/1884 CIL bytes/732 instructions plus bodyless declarations.
The CIL authority includes103 declarations across pristine UI, ScriptCore and
SimIFace. The C# view is a secondary readability reference copied from existing
decompiled source; a historical actual-tool export for those donors is
unverified. Read it against the authenticated complete selected CIL, which
controls instructions, types and operation order. The view does not independently
establish binary provenance and is not a replacement implementation. Existing
[ScriptCore UIManager](../../evidence/managed/types/ScriptCore.UIManager.cs)
retains the five imported signatures, marshaling and their complete wrappers.

WindowBase creates its EffectsList proxy eagerly and replaces it in Revive.
The getter returns its stored proxy; selected Dispose invokes DestroyWindow
before clearing handle, delegate/list/init state and pool/finalization work.
EffectsList (nested type0200002C under WindowBase02000003, methods0125..0132)
holds mWin and curIndex, not a managed native-handle array. Add/Contains/Remove
use isinst EffectBase (`as` in the C# view): incompatible input becomes null.
Its indexed operation asks the native list then the managed wrapper factory.
CopyTo separately uses castclass during enumeration and optional IDisposable
cleanup. The self enumerator increments before native Count and resets to-1.

EffectBase methods135D..1378 retain one handle field. Its type constructor
forwards the kind unchanged; its handle constructor wraps the supplied handle.
Dispose(nonzero) calls DestroyEffect and clears the handle only after success;
finalizer/explicit-dispose exception and suppression order are retained. This is
a release protocol, not evidence that all wrappers merely borrow window ownership.
EaseTimes136C independently Max(0)/Min(1)-clamps both components, normalizes when
the sum is ordered greater than1, then writes EaseIn before EaseOut. No local
IsFinite check appears. This confirmed original managed setter policy remains
managed authority, distinct from finite host consumption of property values.

UIManager.EffectWrapperFromHandle12B4 queries class ID, selects one of eight
managed wrappers and passes the same handle; unknown class returns null. No
explicit managed retain occurs in that selected factory. Managed BiStateController
class ID08239C4E is distinct from the native interface query ID08239C2F.
Complete forwarding UI12A8→SimIFace027A→ScriptCore0EAF→import0E3E does not adjust
kind. GlowModulate ctor35D8 passes6 and BiStateController ctor35DE passes7;
this does not repair the bounded native CMP6/JA evidence by an assumed off-by-one.

| ScriptCore import / token | Declared ABI |
| --- | --- |
| UIManager_NewEffectImpl /06000E3E | UInt32(UInt32 kind) |
| UIManager_DestroyEffectImpl /06000E3F | Void(UInt32 handle) |
| UIManager_TriggerEffectImpl /06000E40 | Void(UInt32 handle, Boolean reverse), reverse marshaled I1 |
| UIManager_ResetEffectImpl /06000E41 | Void(UInt32 handle, Boolean reverse), reverse marshaled I1 |
| UIManager_EffectListGenericImpl /06000E42 | Int32(UInt32 window, UInt32 operation, Int32 index, UInt32 effect) |

All five ImplMap entries name Sims3Common.dll with Winapi mapping flags0100.
Physical registered-native C parameter lists can be narrower inferred projections;
that is not a reason to repair prototypes or public hooks. The complete native
list frontend receives four incoming stack words. No source C++ type recovery
follows from inferred int/pointer/undefined projections.

## Counted lifetime: adjusted receiver versus primary slots

For the object built by input kind6, the final whole+10 interface table00FBBC40
contains four pointers:534BD0,523A20,516440,516430. Each separate selected8-byte
entry subtracts0x10 from ECX then tail-jumps to516C20,539560,5164D0,5162D0,
respectively. Exact function exports are absent at those four adjustment starts.
Their observed96/96/32/16-byte windows overlap neighboring evidence; only the
selected8-byte entry sequences are retained in the
[necessary original data](../../evidence/native/ui-effect-lifetime-data.tsv).
They have no invented canonical pairs, complete-function or global-zero-Listing
claim. Function-table absence is not global instruction absence.

The physical5-byte thunks reach shared increment0040A300 and decrement00504BC0.
Creation takes constructed whole+10, invokes interface+0 before global+C8
registration with type30; selected list GetValue also invokes interface+0 before
registration. Bounded Destroy checks the handle tag and uses global+D8 lookup
then interface+4. On this joined receiver path these are counted acquire/release.
Decompiler duplicate lookup/tail artifacts do not prove two releases. Global
registry retention/removal and concrete EEEE8218 window+108/+10C/+110 list
ownership remain lower authority.

The decrement's zero path dispatches **whole primary vtable+8(1)**. This must not
be conflated with **whole+10 interface vtable+8**, whose adjusted tail reaches
5164D0. The primary vtable address00FBBD20 is known from construction; its+8
implementation is not joined here. The destructor-shaped5164D0 child00505080
allocator/free protocol and query5162D0 other-ID fallback00504B80 remain unread.
Kind6, allocation sizes, nearby labels and interface ID08239C2F do not identify a
recovered managed concrete class. The two inherited DEFAULT thunk names reflect
their shared target roles; they are not separate explicit analyst rename claims.

## Membership and event boundaries

The complete list frontend first requires handle/interface admission. Selected
Add/Remove use the common2F009DD0 projection before EEEE8218 window+108/+10C;
its valid-window path returns1. Clear uses enumeration+110 and returns1 on that
admitted path. GetValue acquires through selected effect interface+0 before
registration. Those physical observations do not recover every list child or
all invalid/error cases.

Timeline5176F0 uses runtime word011CE088; its runtime value is not observed and
is not inferred from zero-filled storage. Group/loop/event state and virtual+9C
are physical receiver facts. Completion5174F0 uses owner+14/group+68; selected
ungrouped trigger0/1 calls window+A0, rechecks owner, then tail-dispatches+A4.
Grouped lower calls5172A0/517320 remain unexpanded. These virtual slots do not
establish current numeric events10002/10003. Historical current-source Fade+104
versus native+9C requires a proved receiver/vtable join, not a guessed slot alias.

## Numerical authority and explicit reconstruction differences

| Native observation | Current reconstruction difference |
| --- | --- |
| Interpolation516F40 returns incoming t unchanged outside[0,1] and for kind0; unknown in-range kind returns0. No selected finite filter is established. | Current clamps Position first and throws for unknown nonendpoint kind. |
| Spring kind2 writes zero EaseOut to0.08 and damping above10 back to10. Positive damping floor and zero-span guard are not established in the selected native body. | Current uses finite reads/default0.1, clamp[0.0001,10], local zero-EaseOut fallback and explicit zero-span return, without property writeback. |
| Selected x87 extended intermediates, return projection and transcendental/scalar instructions govern. | Single/MathF/Pi algebraic similarity does not establish identical values or pixels. |
| Fade522A40 saves the x87 control word, selects rounding toward zero, FISTP-converts a product using pristine float-255 at00FBD814, restores control word, shifts low DWORD by24 and subtracts from retained RGB. No alpha clamp is established. | Current rounds positive255×lerp with MathF.Round, unchecked Int32→UInt32, shift/OR; this is not the native conversion/arithmetic. |
| Bounded NewEffect kind7 reaches zero after unchanged incoming-kind CMP6/JA. | Current maps0..7 and allocates a local handle even for unsupported kind; no implicit repair. |
| Native admitted list Add/Clear routes return1 and use lower interface/reference machinery. | Current Add returns count, Clear0, accepts any nonzero window ID, and owns local membership/state dictionaries. |
| Joined native counted release has no selected attached-membership early-return check. | Current attached Destroy returns early; authored window retirement cleans properties, code-created properties may remain. This is current policy, not established original borrowing. |
| Native event/clock/group machinery and child ownership remain bounded. | Current finite manual seconds, sorted state snapshot, Generation/reentrancy checks and group/loop rejection are separate mechanisms. |

The necessary-data table retains only referenced pristine scalar words, the16-byte
interface pointer table and four selected8-byte adjustment sequences. Values in
that table describe original file bytes, not observations of runtime mutation or
clock initial values. Debug pointer-label censuses and controller guard windows
are not final gameplay data. Original managed policy is retained rather than
reimplemented merely because a host has similarly named properties. No full
lifetime, UI behavior, timing, performance or visual parity follows from this
static reference.

The separate [StaticRotate and retained-window transform contract](static-rotate-retained-transforms.md) establishes that effect's own publication, notification order, scalar admission, matrix producer and actual draw/clip consumer. It does not extend the timeline or counted-lifetime claims above.
