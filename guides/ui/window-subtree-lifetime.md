# Original window subtree detach and retirement

Static original PC1.67 evidence; analyst names describe instruction-proven roles and are not recovered source symbols. Complete native bodies and actual annotated Ghidra C are paired below. Original managed C# excerpts and complete CIL establish script ownership separately. No original runtime execution, timing or finalizer acceptance is represented. Reference identities belong to the central evidence indices.

| Entry | Established role | Original pair |
| --- | --- | --- |
| `0050cbc0` | complete recursive event 17 and service/capture/focus retirement | [ASM](../../evidence/native/functions/0050CBC0_UiWindowService_DetachSubtree.asm) ([pseudocode](../../evidence/native/functions/0050CBC0_UiWindowService_DetachSubtree.c)) |
| `0050c110` | seven-word message copy and actual source/receiver dispatch producer | [ASM](../../evidence/native/functions/0050C110_UiWindowService_DispatchEvent.asm) ([pseudocode](../../evidence/native/functions/0050C110_UiWindowService_DispatchEvent.c)) |
| `00514490` | unlink, detach, clear parent and release | [ASM](../../evidence/native/functions/00514490_UiWindowInterface_RemoveChild.asm) ([pseudocode](../../evidence/native/functions/00514490_UiWindowInterface_RemoveChild.c)) |
| `005144d0` | acquire child, RemoveChild, Shutdown, Release | [ASM](../../evidence/native/functions/005144D0_UiWindowInterface_DestroyChild.asm) ([pseudocode](../../evidence/native/functions/005144D0_UiWindowInterface_DestroyChild.c)) |
| `00514520` | live first-child destruction until intrusive list is empty | [ASM](../../evidence/native/functions/00514520_UiWindowInterface_DestroyAllChildren.asm) ([pseudocode](../../evidence/native/functions/00514520_UiWindowInterface_DestroyAllChildren.c)) |
| `00549d20` | live callback/data-pair notification with actual callback1 | [ASM](../../evidence/native/functions/00549D20_UiLayout_NotifyCallbackPairs.asm) ([pseudocode](../../evidence/native/functions/00549D20_UiLayout_NotifyCallbackPairs.c)) |
| `00549d80` | virtual root destruction before retained-root releases | [ASM](../../evidence/native/functions/00549D80_UiLayout_ReleaseRootReferences.asm) ([pseudocode](../../evidence/native/functions/00549D80_UiLayout_ReleaseRootReferences.c)) |
| `00549dd0` | layout base shutdown and association cleanup | [ASM](../../evidence/native/functions/00549DD0_UiLayout_ShutdownBaseState.asm) ([pseudocode](../../evidence/native/functions/00549DD0_UiLayout_ShutdownBaseState.c)) |
| `0054a780` | actual hosted-layout constructor/vtable producer | [ASM](../../evidence/native/functions/0054A780_UiHostedLayout_Initialize.asm) ([pseudocode](../../evidence/native/functions/0054A780_UiHostedLayout_Initialize.c)) |
| `0054a7d0` | derived layout shutdown before clear-and-release host | [ASM](../../evidence/native/functions/0054A7D0_UiHostedLayout_Shutdown.asm) ([pseudocode](../../evidence/native/functions/0054A7D0_UiHostedLayout_Shutdown.c)) |
| `0054a8a0` | actual virtual root destruction through host IWindow | [ASM](../../evidence/native/functions/0054A8A0_UiHostedLayout_DestroyRoots.asm) ([pseudocode](../../evidence/native/functions/0054A8A0_UiHostedLayout_DestroyRoots.c)) |
| `007796a0` | genuine ShutdownLayout bridge, kind 30 handle and cdecl ABI | [ASM](../../evidence/native/functions/007796A0_ScriptCore_UIManager_UIManager_ShutdownLayoutImpl.asm) ([pseudocode](../../evidence/native/functions/007796A0_ScriptCore_UIManager_UIManager_ShutdownLayoutImpl.c)) |
| `0077ae50` | genuine DestroyAllChildren bridge and actual IWindow virtual target | [ASM](../../evidence/native/functions/0077AE50_ScriptCore_UIManager_UIManager_DestroyAllChildrenImpl.asm) ([pseudocode](../../evidence/native/functions/0077AE50_ScriptCore_UIManager_UIManager_DestroyAllChildrenImpl.c)) |
| `0052afb0` | sparse cell clear, payload retirement and invalidation | [ASM](../../evidence/native/functions/0052AFB0_UiGrid_ClearCell.asm) ([pseudocode](../../evidence/native/functions/0052AFB0_UiGrid_ClearCell.c)) |
| `00525800` | signed rectangle clamp and column/row clear traversal | [ASM](../../evidence/native/functions/00525800_UiGrid_ClearRectangle.asm) ([pseudocode](../../evidence/native/functions/00525800_UiGrid_ClearRectangle.c)) |
| `00525900` | actual bounds-derived ClearAll and selection reset | [ASM](../../evidence/native/functions/00525900_UiGrid_ClearAllCells.asm) ([pseudocode](../../evidence/native/functions/00525900_UiGrid_ClearAllCells.c)) |
| `00531790` | full native cell-window admission/replacement state machine | [ASM](../../evidence/native/functions/00531790_UiGrid_SetCellWindow.asm) ([pseudocode](../../evidence/native/functions/00531790_UiGrid_SetCellWindow.c)) |
| `00528a30` | typed payload and flag-controlled cleanup | [ASM](../../evidence/native/functions/00528A30_UiGrid_RetireCellPayload.asm) ([pseudocode](../../evidence/native/functions/00528A30_UiGrid_RetireCellPayload.c)) |
| `00528710` | remove type1 cell record then real child reference | [ASM](../../evidence/native/functions/00528710_UiGrid_RemoveCellWindow.asm) ([pseudocode](../../evidence/native/functions/00528710_UiGrid_RemoveCellWindow.c)) |
| `0052b6d0` | complete Grid constructor, actual interfaces and retained cell-container | [ASM](../../evidence/native/functions/0052B6D0_UiGrid_InitializeFields.asm) ([pseudocode](../../evidence/native/functions/0052B6D0_UiGrid_InitializeFields.c)) |
| `0077c2e0` | complete typed GridGeneric dispatch and actual SetCellWindow producer | [ASM](../../evidence/native/functions/0077C2E0_ScriptCore_UIManager_UIManager_GridGenericImpl.asm) ([pseudocode](../../evidence/native/functions/0077C2E0_ScriptCore_UIManager_UIManager_GridGenericImpl.c)) |

## Detach message, child identity and order

Service DetachSubtree takes ECX service and one complete WindowBase pointer with RET 4. It constructs message17, converts the complete object to IWindow at+4 and passes the same interface as both source and receiver to DispatchEvent. The dispatcher copies seven DWORDs, overwrites source/destination from those two inputs and temporarily clears service+0x6A8. Its five stack words end in two controls whose low bytes select actual routing helpers; their broader semantics are not guessed. It invokes the selected observer/routes and restores the saved service state. The event result is AL, not an arbitrary full EAX value.

DetachSubtree sends the window's own callback before reading its actual child-list sentinel at complete+0x210 and recursively visits complete children derived from node-8. The full body then repairs ten fixed service capture/focus contexts and retires real observer/list state. It has no CLR visited set or depth 512 gate. This evidence does not establish the deeper routing helpers or every possible intrusive-list mutation during reentrant callbacks.

Parent IWindow is complete+4. RemoveChild unlinks the child node first, loads the service through parent-interface+0x2C, sends detach if the service exists, clears child-complete+0x2C parent, then releases the child's primary reference. DestroyChild acquires an extra primary reference around parent virtual0xE0 removal, child primary virtual0x1C shutdown and final primary Release. DestroyAllChildren repeatedly rereads the current first node and invokes parent IWindow virtual0xE4 until empty; it does not capture a child array first. Null conversion branches do not establish safe-null acceptance where later native dereferences remain.

## Real layout constructor and shutdown chain

Hosted-layout initialization installs primary00FC1EC0 and zeroes the retained host IWindow at+0x98. Its selected virtual+8 is Shutdown0054A7D0 and virtual+0x10 is DestroyRoots0054A8A0. The genuine ShutdownLayout binding takes a UInt32 kind 0x30 handle, resolves it through service0xCC and tail-calls object virtual+8. Invalid admission returns with a caller-clean plain RET; existing stdcall metadata was incorrect.

Derived Shutdown calls 00549DD0, which calls 00549D80. That body notifies/clears the registration manager and invokes virtual+0x10 **before** releasing retained root-vector references from+0x64 through+0x68. The actual installed DestroyRoots first invokes00549D20: it walks callback/data pairs from+0x74 to the live end at+0x78, with actual three-word cdecl callbacks (1,layout,data). This helper does not clear the registration manager; that separate+0x1C cleanup already occurred in00549D80. DestroyRoots then captures vector bounds, queries each nonnull root for IWindow0xEEEE8218 and, when found, rereads the live retained host and calls its DestroyChild0xE4. Only after this base chain does derived Shutdown reread host+0x98, clear it and tail-release its real reference. Native retained objects, root-vector order and registration state are not inferred from a managed handle dictionary.

The genuine DestroyAllChildren bridge also takes one UInt32 kind 0x30 handle, resolves and queries IWindow0xEEEE8218, then tail-calls virtual0xE8. Its plain RET paths establish cdecl. The actual selected Grid IWindow table joins E0/E4/E8 to the complete RemoveChild/DestroyChild/DestroyAllChildren bodies above.

## Actual Grid object, clear and replacement

The full 0x580-byte Grid constructor installs primary00FBE428, IWindow00FBE300 at complete+4 and Grid interface 00FBE0A8 at complete+0x250, with class identity0x08019BE6. It initializes the native fields and sparse maps and creates a plain WindowBase retained as cell-container IWindow at+0x4E4, attaching that container as a real child. Cell-window ownership is therefore not a union of dictionary values with render-child handles.

Grid ClearCell receives signed column/row through its interface ECX and RET 8. It evaluates the actual selection relation and sparse lookup, retires a found payload through 00528A30 on the complete Grid receiver, then performs the actual measure/invalidation effects. Missing cells return false with the selected state-dependent invalidation path. Its final backward jump ends at 0052B05A; the following INT3 is outside the complete function.

ClearRectangle takes four signed coordinate/count words and RET 0x10. Initially nonpositive counts return true; actual queried bounds clamp signed starts and inclusive ends, and an empty clamped extent returns false. It visits columns outer/rows inner, calls Grid virtual0x198 for each cell, ignores each per-cell boolean and invalidates afterward. ClearAll queries actual bounds, forms inclusive counts, invokes rectangle clear through 0x19C, resets native selection and invalidates; its selection fields become0xFFFFFFFF. Matching method names alone do not justify replacing this traversal with a map-key loop.

SetCellWindow takes six words with RET 0x18: signed coordinates, IWindow, two opaque options and a default word. It normalizes a zero sixth full DWORD to1, checks actual existing ownership through virtual0x1F0, handles automatic coordinate0x7FFFFFFF and helper sentinels, retires an existing payload with the selected zero cleanup flags and reuses/allocates a0x1C-byte record. It then performs real attachment/measurement/selection through its callees, with actual ClearCell cleanup on failure. The selected pair is complete; deeper measurement/attachment helpers are explicit static follow-ups rather than guessed policy names.

Typed payload retirement distinguishes window kind 1, text kind 2 and retained-interface kind 4, with its three final controls tested by low byte. Window removal erases the matching type1 record/count/node in map+0x3E0 before asking the retained cell-container IWindow+0x4E4 to RemoveChild0xE0. That helper does not directly call child Shutdown; actual retained-reference release and explicit DestroyChild are distinct native paths.

## Complete GridGeneric producer and managed consumer

The full GridGeneric body is0x91E bytes. Its aligned EBP frame reads six caller-clean incoming words: UInt32 window handle, function ID and four addresses. Instructions distinguish ref-int/ref-int/ref-uint/ref-float uses by branch, so those addresses cannot all be described as float arrays. It validates kind 0x30, resolves/query Grid0xAF1EE902 and uses unsigned functionID-1<=49 to dispatch the complete 50-entry switch. IDs 12/13 choose ClearCell0x198/ClearAll0x1A0. ID 15 rejects a zero/wrong-kind window handle, resolves/query IWindow and supplies column,row,window,two low-byte predicates from float!=0 and a full DWORD 1 to SetCellWindow0x1EC. UCOMISS admits NaN as nonzero and treats negative zero as zero; upper predicate bits are not asserted to be initialized.

The [necessary original data](../../evidence/native/data/ui-window-subtree-lifetime.txt) contains 248 bytes: five hosted-layout vtable words, three Grid clear slots, three IWindow child slots, the complete 50-DWORD GridGeneric switch and its SetCellWindow slot. They join actual producer/consumer receivers; they are not arbitrary neighboring table dumps.

Original [selected managed members](../../evidence/managed/selected/ui-window-subtrees/window-subtrees.cs.txt) ([complete original CIL](../../evidence/managed/selected/ui-window-subtrees/window-subtrees.il.txt)) establish 15 complete bodies totaling519 CIL bytes, with their actual raw headers; no selected body has exception sections. WindowBase.Detach accessors register/de-register17. DisposeOnDetach checks custom identity and flag property61480961/mask 1. Dispose destroys a nonzero native handle, clears original managed state, returns to the original pool and selects finalizer behavior according to the result and fromDtor flag.

UIManager.OnCustomDetach checks DisableDisposeOnDetatch, DisposeOnDetach, custom identity and dictionary removal before de-registering events and disposing outside the designer. OnWinDetach independently removes a cached wrapper and deregisters events. Grid.ClearCell removes an original tag before native ID 12; ClearAllCells clears original tags before ID 13. GetCellWindow wraps a returned handle. SetCellWindow's default overload supplies true; its second overload dereferences WindowBase.WinHandle and passes1/0 through ref-float. Passing null is therefore not an original managed clear API. These tag, cache, wrapper and disposal policies remain original assembly responsibilities.

## Invalid assignment is distinct from clearing a cell

The complete GridGeneric binding's ID15 path starts at0077C532. It loads the
incoming window handle from the third ref argument, masks its high byte at
0077C539 and compares with30000000 at0077C53F. A mismatch branches directly to
0077CBF5;0077CBF7 writes AL0 before the caller-clean return. Handle0 therefore
fails before any native SetCellWindow operation. With the right family, service
resolution at0077C556 and the IWindow query00513CC0 at0077C559 must succeed;
0077C563/565 gates the latter result before any stretch/data reads or slot1EC
call. No old cell is removed by these rejected assignment paths.

Only after that admission does0077C56B read the float argument. The two UCOMISS
sequences project its zero/nonzero state to separate low-byte controls; NaN is
nonzero and either signed zero is zero. Six physical words are then pushed:
column, row, IWindow, two controls and1, consumed by slot1EC. This is the same
complete [original ASM](../../evidence/native/functions/0077C2E0_ScriptCore_UIManager_UIManager_GridGenericImpl.asm) ([annotated C](../../evidence/native/functions/0077C2E0_ScriptCore_UIManager_UIManager_GridGenericImpl.c)); no second export or inferred substitute body is needed.

The complete original Grid.SetCellWindow0600047E obtains WindowBase.WinHandle
with callvirt atIL0001, prepares stretch0/1, and invokes GridGeneric with ID15 at
IL001C. Passing a null managed WindowBase fails that getter rather than requesting
clear. Separate ClearCell/ClearAll methods select IDs12/13 after their own managed
tag updates. The [complete CIL](../../evidence/managed/selected/ui-window-subtrees/window-subtrees.il.txt) ([annotated managed C#](../../evidence/managed/selected/ui-window-subtrees/window-subtrees.cs.txt)) preserves that distinction.

This result concerns assignment admission. It does not establish every later
SetCellWindow coordinate, existing-ownership, payload-replacement or measurement
branch, and it does not turn an arbitrary nonzero numeric handle into an admitted
native IWindow. Native reference conversion, cell cleanup and managed wrappers
remain separate owners.

## Coverage and static boundaries

21 full native pairs: 2,474 owned Listing instructions, 6,861 owned bytes and 6,861 envelope bytes;248 necessary original data bytes and 15 complete managed bodies / 519 CIL bytes. Final pairs preserve prior reviewed annotations and genuine original binding names. Owned instructions, exact boundaries, actual ABI and original bytes were checked against the pristine executable.51 direct E8 target operands were checked; the separate Ghidra-resolved CALL EAX at 0052BC3F is an indirect frontier (selected IWindow virtual0x74), not counted as a direct call. The database was saved clean without changing original bytes; independent publication review remains separate. Actual C retains documented stack/register aliases around unresolved indirect calls: the seven-DWORD message copy is not an eight-byte buffer contract, receiverInterface._0_1_ is a local result alias, Grid clear bounds/SetCellWindow unaff_* locals are not literal uninitialized inputs, and original physical PUSH/RET instructions define each boundary. SetCellWindow virtual0x1F0 receives four actual stack words despite three apparent arguments in C. No unrelated helper prototype was guessed to make decompilation cleaner. Deep routing helpers, complete Grid primary shutdown override/measurement, the allocator/reference system and original frame/finalizer scheduling remain specific static boundaries. Runtime callback reentrancy, finalizer races and user-visible behavior need separate execution. This guide describes original evidence, not migration history or a product acceptance claim.
