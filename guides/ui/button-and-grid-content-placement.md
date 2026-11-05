# Original button and grid content placement

Static PC1.67 TS3W.exe analysis; analyst names describe established roles, not
recovered symbols. Complete actual annotated Ghidra C and owned original ASM
are paired below. Original1926 bytes, function bodies and stored ABI/local metadata
were conserved. Stored declarations still contain the bounded decompiler errors
explained here; no speculative prototype correction was required.

## Button content bounds and radio-group coordination

[Original ASM0051A8C0](../../evidence/native/functions/0051A8C0_UiButton_UpdateContentBoundsAndRadioGroup.asm) ([actual annotated Ghidra C](../../evidence/native/functions/0051A8C0_UiButton_UpdateContentBoundsAndRadioGroup.c)).

ECX is the receiver. The clean branch returns with plain RET; the dirty branch
ends with an interface virtual tail jump and consumes no incoming stack arguments.
The stored fastcall/int-pointer declaration is inferred. Float fields move through
MOVSS/SUBSS/MULSS/ADDSS: apparent C integer casts are not numeric float conversions.

Dirty byte+254 gates this update and clears before interface+4 virtual74(8,0).
The image rectangle+278..284 and caption rectangle+288..294 start at(0,0,width,height),
where dimensions subtract area leading coordinates+40/+44 from trailing+48/+4C.
Drawable virtual18 supplies artwork dimensions when present; otherwise zeroes remain.

Mask0x2 partitions horizontal space only for strictly smaller artwork width.
COMISS/JBE rejects equality and unordered comparisons. Alignment1 places image at
leading edge and moves caption start past it; alignment2 places image at trailing
edge and ends the caption before it. Alignment3 centers image and constrains the
caption to the same horizontal interval. Other alignments leave full intervals.
Mask0x4 independently centers a strictly smaller artwork height. Its vertical
partition does not reduce the caption's full height. Center multiplier at00F9B5B4
is binary32 half (3F000000).

The function then adds caption leading insets+298/+29C and subtracts trailing
insets+2A0/+2A4, invokes receiver virtualAC and may coordinate radio selection.
That branch requires a parent, button type3, selected mask0x4 and nonzero group.
It scans parent siblings, requests interface8ED27E7A, excludes itself and clears
mask0x4 on matching-group peers. Final interface+4 virtual90 completes the update.
A pure image/caption partition helper does not own these side effects.

The current renderer resolves the partition through its image provider, then
applies TextBorder separately in its caption renderer; it also has minimum clip
extent and outside-indicator expansion policies. Those policies and absent-image
fallback are not established equivalent by the partition arithmetic. Radio-group
and dirty-state coordination require their actual separate owners.

## Grid cell child placement and admission

[Original ASM005259D0](../../evidence/native/functions/005259D0_UiGrid_PlaceChildInCell.asm) ([actual annotated Ghidra C](../../evidence/native/functions/005259D0_UiGrid_PlaceChildInCell.c)).

Physical ECX receiver and five stack words, RET14. Third word is a child interface;
first/second are signed cell coordinates. Last two low-byte words independently
request width/height stretching. The C declaration's three explicit parameters,
unaff_retaddr and missing rectangle arithmetic are stack-recovery artifacts.
They cannot specify the original ABI or imply that a return address is a coordinate.

A null child returns. Interface+250 virtualFC supplies visible cell-index bounds;
signed JL/JGE comparisons enforce leading-inclusive/trailing-exclusive membership.
A nonnull child outside them receives virtual74(1,0). Inside, virtual168 obtains
cell descriptor, virtual1C0 its rectangle and virtual20 the current origin. Float
origin/rectangle terms combine with leading/trailing gutter fields+280..28C. The
leaf does not clamp negative gutters or oversized children. Child virtual38 reads
current width and height.

Only when **neither** stretch byte is set does the leaf apply descriptor alignment:
horizontal3 centers,4 trails; vertical6 centers,7 trails. Otherwise both alignment
adjustments are skipped. Each enabled stretch axis independently takes the
available trailing edge; an unstretched axis keeps its original child extent at
the available leading edge. Center uses the same binary32 half constant.

Child virtual64 receives the resulting bounds, then virtual74(1,1) enables it.
The selected leaf establishes this order, not the complete descriptor producer,
virtual callee internals, mutation/lifetime or cross-thread synchronization.
The original managed Grid.SetCellWindow overloads expose one stretch Boolean,
convert it to float0/1 and use GridGeneric ID15. Its original native binding
projects that value to both low-byte controls. The current bridge likewise stores
one retained stretch bit for both axes; that alone is not a mismatch in this
managed entry lane. It does not forward descriptor alignment to its rectangle
helper. Internal native callers can still retain independent flags. See complete
[managed IL](../../evidence/managed/selected/ui-window-subtrees/window-subtrees.il.txt)
([managed C#](../../evidence/managed/selected/ui-window-subtrees/window-subtrees.cs.txt))
and the [GridGeneric native ASM](../../evidence/native/functions/0077C2E0_ScriptCore_UIManager_UIManager_GridGenericImpl.asm) ([actual annotated C](../../evidence/native/functions/0077C2E0_ScriptCore_UIManager_UIManager_GridGenericImpl.c)).

The producer paths have their own complete canonical exports:

- [Original ASM005287B0](../../evidence/native/functions/005287B0_UiGrid_ReapplyRetainedCellWindows.asm) ([actual annotated Ghidra C](../../evidence/native/functions/005287B0_UiGrid_ReapplyRetainedCellWindows.c)). Reapply retained type1 windows; signed row/column lookup, require child and derive independent controls from payload flags at+18.
- [Original ASM0052A340](../../evidence/native/functions/0052A340_UiGrid_AdmitAndPlaceCellWindow.asm) ([actual annotated Ghidra C](../../evidence/native/functions/0052A340_UiGrid_AdmitAndPlaceCellWindow.c)). Admit child through manager virtualDC, prepare type1 record and forward five physical words, RET14. The C projection again omits two controls.

Incoming native references distinguish the producer paths:0052A340 forwards five
physical words after manager admission and storing a type1 cell record;
005287B0 traverses retained type1 cells and forwards the two bits from their
payload flag byte. Those complete callers were read live to establish this
frontier; their deeper cell-tree/storage helpers remain separate analysis.

## Related ownership boundaries

[Button state and click dispatch](button-state-and-click-dispatch.md) covers
separate managed/native interaction; [window subtree lifetime](window-subtree-lifetime.md)
covers retained Grid cells and detach. Neither rectangle arithmetic nor enabling
one child establishes safe destruction, callback delivery or parallel access.
No original game execution, pixel comparison or concurrency acceptance is claimed.
