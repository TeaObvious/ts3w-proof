# Frame drawable state dispatch

Static PC 1.67 analysis of registered `UIManager_FrameDrawableGenericImpl` at
77D320 establishes four operations on a resolved drawable interface: get/set
border style, and get/set border color, selected by an unchecked state index.
Failure and setters both return zero. This does not establish successful drawing,
redraw scheduling or native object lifetime.

## Code, data and ownership

The [original-byte CFG and current Ghidra Listing](../../evidence/native/ui/frame-drawable/0077D320_ScriptCore_UIManager_UIManager_FrameDrawableGenericImpl.asm)
([actual annotated Ghidra C](../../evidence/native/ui/frame-drawable/0077D320_ScriptCore_UIManager_UIManager_FrameDrawableGenericImpl.c))
retain the exact limits. The code candidate 77D320..77D39B contains 124 bytes and
40 independently decoded instructions, all reachable when the four targets in the
[original jump table](../../evidence/native/ui/frame-drawable/dispatch-table.tsv)
at 77D39C..77D3AB are included. Four CC bytes at 77D3AC..77D3AF are padding.
The table is data, even though the old linear decoder prints spurious instructions
there.

The earlier 144-byte next-entry window already contained all this selected code,
16 table bytes and padding. Its cap was not applied; no missing code bytes are
established within this CFG. Ghidra's existing singleton function metadata and
zero-instruction Listing remain a separate limitation. Neither byte-window
coverage nor decompiled control flow proves complete owned-body definition.
No function-boundary repair, new function definition or original execution is
claimed here.

## Admission and physical ABI

The registered method has four UInt32 arguments: drawable handle, function ID,
state, value. Original stack operands are +4/+8/+0C/+10 relative to entry ESP.
The native body uses plain `RET`; no immediate argument cleanup is encoded.
The raw C's two-argument signature, `switch(unaff_retaddr)` and use of `param_1`
as the state are stack-tracking artifacts, contradicted by these instructions
and the original managed forwarding.

1. Obtain the global interface through 769390 before testing the handle. The
   reviewed [getter ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00769390.asm.txt)
   ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00769390.c))
   only reads pointer 011D5BBC and returns; construction and ownership are not
   established by that accessor.
2. Require `(handle & FF000000) == 30000000`. On a mismatch, return zero.
3. Invoke global-interface vtable+CC with the handle. A null result returns zero.
   No local null guard exists for the global interface before its dereference on
   this admitted handle path.
4. Invoke the resolved object's vtable+0C with query ID 030D54AC. A null result
   returns zero. This is the pointer used as the row-array base below.
5. Reject unsigned function IDs greater than 3 with zero; use the four-DWORD table
   for 0..3. In particular FFFFFFFF is rejected by the same unsigned comparison.

The interface query ID 030D54AC is distinct from managed `FrameDrawable.ClassId`
030D54B9. Similar names and neighboring values do not make them interchangeable.
Neither handle kind admission nor interface lookup establishes ownership or
validity after destruction; those contracts belong to the host and drawable owner.

## Four operations

| Function ID | Original managed role | Native access | Result |
| --- | --- | --- | --- |
| 0 | GetBorderStyleForState | DWORD at `interface + 0C + state*8` | Raw stored UInt32 in EAX. |
| 1 | SetBorderStyleForState | Store full value DWORD at `interface + 0C + state*8` | Zero. |
| 2 | GetBorderColorForState | DWORD at `interface + 10 + state*8` | Raw stored UInt32 in EAX. |
| 3 | SetBorderColorForState | Store full value DWORD at `interface + 10 + state*8` | Zero. |

The style and color rows use an eight-byte stride. The body checks neither state
nor the stored value. For example, state 8 addresses +4C/+50, whereas the
ordinary managed literals identify only indices 0..7. This is address arithmetic;
no allocated capacity or valid native state 8 is inferred. Negative enum casts or arbitrary UInt32 values are not clamped locally.
This code alone does not establish what memory lies there or whether such calls
are safe. A getter's zero can be stored data or refusal, and a setter's zero does
not acknowledge a redraw or distinguish success from refusal.

SetBorderColorForState passes `Color.ARGB`, while GetBorderColorForState constructs
a Color from the returned word. The native transport copies the entire word;
no channel manipulation or alpha normalization occurs in this dispatch body.
The selected setter makes one direct store, without a further local notification
call. Event propagation, invalidation, border rendering and style interpretation
require other producers/consumers.

## Concrete initializer and provider data

[InitializeFrameDrawable ASM](../../evidence/native/ui/frame-drawable/00523830_InitializeFrameDrawable.asm)
([actual Ghidra C](../../evidence/native/ui/frame-drawable/00523830_InitializeFrameDrawable.c)) retains the
complete current owned body 523830..5238A6: 119 bytes / 29 instructions.
`InitializeFrameDrawable` is an analyst-assigned role name. ECX is the writable
receiver and EAX remains that pointer on return, although the C signature models
void; no caller-consumed return is inferred. There are no calls, allocation,
null/bounds checks or notification in this body. Its highest write ends at +5F.
The managed `FrameDrawable(uint)` constructor only forwards an existing handle
to DrawableBase; it does not prove an invocation of this native initializer.
The original native factory/handle-registration caller remains separate.

The [exact stores](../../evidence/native/ui/frame-drawable/initializer-fields.tsv)
install primary vtable FBD968 and replace the +4 pointer first with FBB1FC,
then FBD950. The initializer clears +8. At the same eight-byte row offsets used
by the dispatch, row 0 receives style 2 (the original Solid enum literal) and color
FFFFFFFF; both words of each row 1..7 are zero. The physical order clears each
later row's color before style, then sets row 0 color before style. Zero later
rows are stored data, not a proved inheritance or fallback rule.

Four separate Float32 fields +4C/+50/+54/+58 receive raw 3F800000 (1.0) from
the [F998F8 constant](../../evidence/native/ui/frame-drawable/initializer-constants.tsv);
+5C receives raw FF000000. Their roles as particular UI properties are
not established here. The state-8 arithmetic above reaches +4C/+50 in this
representation, so a cast to an undeclared state is not locally separated from
these other fields by the frontend.

The [four original primary-vtable slots](../../evidence/native/ui/frame-drawable/provider-vtable.tsv)
include +0C = 522C10, a concrete query-provider dependency. This connects the
initializer to a specific virtual dispatch table; it does not establish original
runtime handle registration, every possible implementer or the pointer returned
by that unexpanded query helper. Host registry lifetime, query forwarding,
property consumers, rendering and persistence remain separate obligations.

## Original managed path

The [UI FrameDrawable class IL](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.FrameDrawable.il.txt)
([actual ILSpy C#](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.FrameDrawable.cs))
identifies TypeDef 020002D4, function-ID literals 0..3 and border styles
Default through InsetOutline (0..10). Its four relevant caller methods are
060018F2..060018F5: color getter/setter use IDs 2/3, style getter/setter IDs 0/1.
They do not validate the state or enum value. BorderWidth and OutlineColor use
separate property APIs and are not these per-state rows.

The [ControlStates IL](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.DrawableBase.ControlStates.il.txt)
([C#](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.DrawableBase.ControlStates.cs))
defines Normal, Disabled, Highlighted, Active and their Checked variants as 0..7.
These declarations describe ordinary managed values; they do not add a native
range check.

[UI.UIManager.FrameDrawableGeneric IL](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.UIManager.FrameDrawableGeneric.il.txt)
([C#](../../evidence/native/ui/frame-drawable/managed/Sims3.UI.UIManager.FrameDrawableGeneric.cs)),
MethodDef 060012AD, has 20 IL bytes. It loads `gUIMgr`, obtains
`DrawableBase.DrawableHandle`, and forwards all four values through the IUIManager
member reference 0A0004DF. Both handle access and interface invocation use
`callvirt`; ordinary managed null-receiver failure can therefore precede the
native call. The native zero-result contract does not promise a zero result for
a null managed Drawable or null `gUIMgr`. The static call edge does not prove the
selected runtime implementation.
The identified ScriptCore implementation's
[wrapper IL](../../evidence/native/ui/frame-drawable/managed/ScriptCore.UIManager.FrameDrawableGeneric.il.txt)
([C#](../../evidence/native/ui/frame-drawable/managed/ScriptCore.UIManager.FrameDrawableGeneric.cs)),
06000EB4, has 11 IL bytes and forwards to
[declaration 06000E43](../../evidence/native/ui/frame-drawable/managed/ScriptCore.UIManager.UIManager_FrameDrawableGenericImpl.il.txt)
([C#](../../evidence/native/ui/frame-drawable/managed/ScriptCore.UIManager.UIManager_FrameDrawableGenericImpl.cs)).
The original [registration record 01163040](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/api/ScriptCore.UIManager/0x01163040.md)
contains bytes `20d37700d00e0101`: target 77D320 and name pointer 01010ED0.
[Assembly provenance](../../evidence/native/ui/frame-drawable/managed/provenance.json)
records pristine ScriptCore/UI S3SA identities; actual C# retains unresolved-reference
diagnostics, so original IL is authoritative for the numeric/operand conclusions.

The unresolved dependencies are the host handle registry, queried-interface
producer and layout lifetime, row persistence/other writers, and the renderer's
style/color consumers. No thread-safety or runtime pixel behavior is inferred.
