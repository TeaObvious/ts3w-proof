/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual primary00FC1EC0+0x10, ECX layout, no stack
   inputs/plain RET. Call00549D20 callback-pair notification first (callback1,layout,opaqueData);
   that helper does NOT clear a registration manager. If host+0x98 is null, return. Capture
   retained-root vector bounds+0x64/+0x68; for each nonnull root query virtual0x0C(0xEEEE8218). If
   it returns IWindow, reread LIVE host+0x98 and invoke its virtual0xE4(DestroyChild). Root
   traversal follows retained-interface vector order. Registration-manager+0x1C cleanup is
   separately performed in00549D80 before it calls this virtual slot. No script-thread marker,
   depth512 or CLR grid/foreign-layout classifier occurs here. */

void __thiscall UiHostedLayout_DestroyRoots(void *this)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  
  UiLayout_NotifyCallbackPairs(this);
  if (*(int *)((int)this + 0x98) != 0) {
    piVar1 = *(int **)((int)this + 0x68);
    for (piVar3 = *(int **)((int)this + 100); piVar3 != piVar1; piVar3 = piVar3 + 1) {
      if (((int *)*piVar3 != (int *)0x0) &&
         (iVar2 = (**(code **)(*(int *)*piVar3 + 0xc))(0xeeee8218), iVar2 != 0)) {
        (**(code **)(**(int **)((int)this + 0x98) + 0xe4))(iVar2);
      }
    }
  }
  return;
}

