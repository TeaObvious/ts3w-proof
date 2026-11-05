/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete Grid object, six DWORD slots/RET18hex, final
   three controls tested by lowbyte. Null payload is looked up from native grid record map+380.
   Missing record or no payload returnsAL0. Payload kind1 with nonnull window
   invokes528710(completeGrid,column,row,window); kind2 tears down actual text buffer/object, kind4
   releases actual retained interface, then clear payload+0C. Each selected flag controls
   auxiliary/free/state teardown exactly in body; returnAL1 for found payload. Window helper removes
   real child reference; no direct original script-controller disposal or current managed-layout
   collection is invented here. */

bool __thiscall
UiGrid_RetireCellPayload
          (void *this,int column,int row,void *payload,uint freeRecord,uint clearExtraValue,
          uint freeAuxiliaryBuffer)

{
  int iVar1;
  undefined4 *allocation;
  void *allocation_00;
  undefined4 uVar2;
  int *allocation_01;
  
  allocation_01 = payload;
  if (payload == (void *)0x0) {
    uVar2 = FUN_00527420((void *)((int)this + 0x380),column,row,(int *)&payload);
    if (((char)uVar2 == '\0') || (allocation_01 = *(int **)payload, allocation_01 == (int *)0x0)) {
      return false;
    }
  }
  iVar1 = *allocation_01;
  if (iVar1 == 1) {
    if ((void *)allocation_01[3] != (void *)0x0) {
      UiGrid_RemoveCellWindow(this,column,row,(void *)allocation_01[3]);
    }
  }
  else if (iVar1 == 2) {
    allocation = (undefined4 *)allocation_01[3];
    if (allocation != (undefined4 *)0x0) {
      allocation_00 = (void *)*allocation;
      if ((2 < (int)(allocation[2] - (int)allocation_00 & 0xfffffffeU)) &&
         (allocation_00 != (void *)0x0)) {
        Memory_FreeIfNonNull(allocation_00);
      }
      Memory_FreeIfNonNull(allocation);
    }
  }
  else {
    if (iVar1 != 4) goto LAB_00528ad5;
    if ((int *)allocation_01[3] != (int *)0x0) {
      (**(code **)(*(int *)allocation_01[3] + 4))();
    }
  }
  allocation_01[3] = 0;
LAB_00528ad5:
  if (((char)freeAuxiliaryBuffer != '\0') && ((void *)allocation_01[4] != (void *)0x0)) {
    Memory_FreeIfNonNull((void *)allocation_01[4]);
    allocation_01[4] = 0;
  }
  if (((char)clearExtraValue != '\0') && (allocation_01[5] != 0)) {
    allocation_01[5] = 0;
  }
  if ((char)freeRecord != '\0') {
    Memory_FreeIfNonNull(allocation_01);
  }
  return true;
}

