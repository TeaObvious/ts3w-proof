# Text style, category windows and product selection

Original PC1.67, static instruction evidence. Canonical pairs are actual annotated
Ghidra exports from the saved database. Analyst names describe roles; genuine
registered names remain intact. Nine full bodies have3,300owned bytes/870instructions
and six nonowned padding bytes inside one envelope. No original bytes changed.

| Entry / role | Complete original pair |
| --- | --- |
|00506F40 text-service styled draw | [ASM](../../evidence/native/functions/00506F40_UiTextService_DrawStyledString.asm) ([pseudocode](../../evidence/native/functions/00506F40_UiTextService_DrawStyledString.c)) |
|0045EFE0 text-style initialization | [ASM](../../evidence/native/functions/0045EFE0_TextStyle_Initialize.asm) ([pseudocode](../../evidence/native/functions/0045EFE0_TextStyle_Initialize.c)) |
|0077A280 category-window creation | [ASM](../../evidence/native/functions/0077A280_UIManager_CreateCategoryWindow.asm) ([pseudocode](../../evidence/native/functions/0077A280_UIManager_CreateCategoryWindow.c)) |
|0077A3E0 registered hierarchy initialization | [ASM](../../evidence/native/functions/0077A3E0_ScriptCore_UIManager_UIManager_InitUIHierarchyImpl.asm) ([pseudocode](../../evidence/native/functions/0077A3E0_ScriptCore_UIManager_UIManager_InitUIHierarchyImpl.c)) |
|00516090 native Window field initialization | [ASM](../../evidence/native/functions/00516090_Window_InitializeNativeFields.asm) ([pseudocode](../../evidence/native/functions/00516090_Window_InitializeNativeFields.c)) |
|0051D080 combo-control initialization | [ASM](../../evidence/native/functions/0051D080_WinComboBox_InitializeControl.asm) ([pseudocode](../../evidence/native/functions/0051D080_WinComboBox_InitializeControl.c)) |
|00C97B20 first authored preset string | [ASM](../../evidence/native/functions/00C97B20_ObjectProduct_ReadFirstPresetString.asm) ([pseudocode](../../evidence/native/functions/00C97B20_ObjectProduct_ReadFirstPresetString.c)) |
|00C97D70 full preset-ID ordinal lookup | [ASM](../../evidence/native/functions/00C97D70_ObjectProduct_FindPresetOrdinalByFullId.asm) ([pseudocode](../../evidence/native/functions/00C97D70_ObjectProduct_FindPresetOrdinalByFullId.c)) |
|00CEA470 registered preset-string selection | [ASM](../../evidence/native/functions/00CEA470_ScriptCore_UserToolUtils_UserToolUtils_GetPresetStringImpl.asm) ([pseudocode](../../evidence/native/functions/00CEA470_ScriptCore_UserToolUtils_UserToolUtils_GetPresetStringImpl.c)) |

## Text boundary

Vtable00FBB388 references00506F40. Its exact reachable body excludes six padding
bytes; ECX is the selected text-service receiver and RET20 consumes eight physical
stack words. Length−1 scans UTF16 to a terminator; null style selects011CDD70.
Wrap5, horizontal4 and vertical3 retain incoming style fields. Other values copy
and override those fields before layout/rendering. The complete glyph/layout
service, resource allocation and virtual draw callbacks remain in the function;
an offset-only helper is not its full contract. Vertical center uses floor in
both selected wrapped/unwrapped branches. The stored zero-formal signature and
inferred C arguments remain distinct from this physical calling evidence.

0045EFE0 initializes selected style defaults after0045EE80. Its inferred ushort
pointer doubles indices: horizontal+244 and vertical+248 become0, wrap+250 becomes4,
scale+268 is binary32 one. These fields do not establish a full source type or
all stylesheet parsing/shaping/default rules. Existing names on shared leaf
setters do not by themselves establish the selected text receiver's semantics.

## Window hierarchy

Registration01162D90 identifies0077A3E0; its registered ScriptCore.UIManager hook
is preserved. The full355-byte/88-instruction body guards the actual UI service,
then creates root0372D500 and18children through0077A280. Calls and three-word
caller cleanup establish parent, control ID and topmost argument order.

Creation resolves the root or requested parent, allocates0x250 and invokes native
Window initialization, attaches/reorders the child, sets local extents derived
from the parent's width/height and assigns its control ID/flag operations.
Window initialization starts flags2003; the selected category producer enables
10 and4000, and enables/disables40 from the topmost argument. Selected results
are6013 or6053. Only D50B/D509 branches have topmost true; D503/D50B parentD502 and
D509 parentD501, remaining categories parentD500. Numeric ID order is not draw
order. Allocation failure and lower virtual behavior remain exactly visible;
no managed dictionary, lease or thread-ownership policy is inferred.

## Combo style and preset identity

[Selected native descriptor rows](../../evidence/native/data/combo-box-style-descriptors.tsv)
retain240necessary original bytes. Alignment, colors, disabled color, visible
count and flags use type09; colors have fixed count6, other selected scalar rows
count1. Structure rows identify gutters; offset has type0B. Signed/unsigned
compatibility and native XML/scalar admission remain in the separate
[authored-property contract](authored-window-properties.md).
The constructor stores six colors FF000000/FFECE9D8/FFECE9D8/FF737163/FFFFFFFF/
FF000000, disabledFF718AAD, gutter binary32 twos, flags/alignment1, visible count−1
and vertical offset0. These are authored-property defaults, not a complete native
popup/focus/grid or glyph-rendering implementation.

The [complete pristine managed key getter](../../evidence/managed/selected/catalog-category-projection/BuildBuyPreset.KeyForThumbnail.il.txt)
([actual managed decompilation](../../evidence/managed/selected/catalog-category-projection/BuildBuyPreset.KeyForThumbnail.cs))
preserves product type/instance, high8group bits and low24preset-ID bits.
00CEA470 separates those lanes before lookup. Low24bits0 orFFFFFF select the first
authored preset; other IDs require exact00C97D70 ordinal lookup, with no first-row
fallback on miss.00C97B20 checks authored begin/end: empty writes AL0 and leaves
output untouched; nonempty copies first string and writes AL1, not a full-EAX
Boolean. Extra-ID handling in00C97D70 remains separately annotated. This evidence
does not establish complete thumbnail camera/render/cache behavior or runtime
localization, queue, concurrency or visual acceptance.
