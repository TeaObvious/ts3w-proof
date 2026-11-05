# Original SACS controller registration and notifications

Static PC1.67 TS3W.exe analysis. The callback table at01021380 contains original
Started00805120, Ending00805250, Looped008A38B0 and Completed00805D70 targets.
The selected six canonical pairs below include the complete play producer,
registration query, callbacks and removal consumer. Final analyst comments live
in the actual Ghidra C. Original byte envelopes were checked against the pristine
executable and the database saved clean without modifying original bytes.

Started and Ending use ECX receiver and physical two-word/RET8 callback ABI.
The Completed adapter rewrites the two caller words and tail-jumps to the
RET8 removal consumer. Inferred callback C declarations/return types are not
an independent ABI specification. Ending's incidental EAX is not a status return.

## SacsPlayAnimationNode_SubmitResolvedClip

[ASM 007F8DC0](../../evidence/native/functions/007F8DC0_SacsPlayAnimationNode_SubmitResolvedClip.asm) ([annotated Ghidra C](../../evidence/native/functions/007F8DC0_SacsPlayAnimationNode_SubmitResolvedClip.c)).

ECX play node; complete producer.007F8F22..61 tests actor loop/interrupt bytes+72/+73 and retained loop+18, consumes first-animation token via007FFD50, then AtEnd bit1.007F9637..67 queries0093CA00 tail interruptibility only for a nonstable append candidate; NEG AL/SBB EAX,EAX/AND FFFFFFFE/ADD2 yields native mode0 when admitted,2 otherwise. This is one play producer, not a separate stop-node entry. Existing CLIP fallback/namespace/timing comments remain bounded.

## SacsListener_OnControllerStarted

[ASM 00805120](../../evidence/native/functions/00805120_SacsListener_OnControllerStarted.asm) ([annotated Ghidra C](../../evidence/native/functions/00805120_SacsListener_OnControllerStarted.c)).

ECX listener; RET8 consumes two physical words despite inferred argument roles. Updates actor overlay selection using007FD8A0 and native state identity. Selected controller plus active statuses1/2/3/7 can become ready0 for non-Edith destination, otherwise interruptible3 or playing2; Edith interruptible emits completion. Native also emits overlay subtype7 when selected state is overlay-enabled. Current notification projection omits this overlay side effect.

## SacsListener_OnControllerEnding

[ASM 00805250](../../evidence/native/functions/00805250_SacsListener_OnControllerEnding.asm) ([annotated Ghidra C](../../evidence/native/functions/00805250_SacsListener_OnControllerEnding.c)).

ECX listener; RET8 consumes two physical stack words although decompiler omits one. Scan24-byte entries, matching controller identity+8 updates required-event byte+F from notification+14; any uncleared entry prevents all-complete. Selected-or-no-selected, active/Edith, required-complete gates threshold decision. Original FCOMIP/JBE means strictly remaining<threshold, equality/NaN do not admit. Clip virtual+2C and machine bit4 select zero or manager frame threshold*00FC2B9C. State7 plus all-complete emits Edith completion or readies active status. Return EAX is incidental, not a meaningful int contract.

## SacsListener_RemoveControllerRegistration

[ASM 00805A10](../../evidence/native/functions/00805A10_SacsListener_RemoveControllerRegistration.asm) ([annotated Ghidra C](../../evidence/native/functions/00805A10_SacsListener_RemoveControllerRegistration.c)).

ECX listener; two physical words RET8. Edith selected completion first; locate24-byte entry, unregister original controller callback00566990, shift entries via008055B0, release controller+14 and namespace+10 retains. Optional namespace context marks related animation entities. Selected-or-none clears selected+14 and readies active1/2/3/7 even when no entry matched. Current list removal models identity/flags only, not native retains or namespace side effects. Former one-byte Ghidra body repaired using original reachable flow with no overlap/byte patch.

## SacsListener_ControllerCompletedAdapter

[ASM 00805D70](../../evidence/native/functions/00805D70_SacsListener_ControllerCompletedAdapter.asm) ([annotated Ghidra C](../../evidence/native/functions/00805D70_SacsListener_ControllerCompletedAdapter.c)).

ECX listener; physical notification/context stack words follow original RET cleanup. Loads controller identity through *notification+20 and context from notification+4, forwards both to00805A10; no independent completion lifetime policy. Callback can be delivered by controller removal; current projected notification carries only its recorded identity.

## SacsListener_HasBlockingController

[ASM 00804FB0](../../evidence/native/functions/00804FB0_SacsListener_HasBlockingController.asm) ([annotated Ghidra C](../../evidence/native/functions/00804FB0_SacsListener_HasBlockingController.c)).

ECX listener; AL Boolean, upper EAX incidental. Scan24-byte registrations [listener+4,+8); primary byte+D or controller identity+8 equal selected+14 yields true. Current focused registration owner must query actual live entry flags/selected identity, not a constructor snapshot.

## Bounds and downstream differences

Native registration retains controller and namespace references, unregisters the
actual controller callback, shifts entries and releases retained objects. A managed
list of identities/Boolean flags models only part of that lifetime. Its zero/duplicate
rejection is current implementation policy, not established by this removal path.
Native removal may clear/readify even if no matching entry was found; current
Notify ignores unknown identities. Started also updates overlay state and can emit
subtype7, beyond the current notification projection.

The sequence-tail decision belongs to the play producer itself;007F9640 is an
interior instruction, not a separate stop-node function. Native mode mapping and
controller/group effects must not be inferred solely from Append/Replace enum
names. No retail execution, callback-race acceptance or performance measurement
was performed. [Resource/status context](resource-loading-save-records-and-status.md)
and [managed acquisition/wait consumers](managed-client-postload-and-waits.md)
retain the related ownership boundaries.
