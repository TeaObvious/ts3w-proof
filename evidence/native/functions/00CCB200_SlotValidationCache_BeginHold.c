/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX collector plus held native object pointer and mode-byte stack DWORDs, RET8. Clears
   the validation tree when held pointer or low mode byte changes. Always clears candidate count and
   refreshes held yaw at collector2C, or writes zero if no suitable held placement component. Native
   pointer/mode scope is not inferred to be a managed GUID or universal cheat identity. */

void __thiscall SlotValidationCache_BeginHold(void *this,int param_1,char param_2)

{
  int iVar1;
  void *this_00;
  float fVar2;
  
  if ((param_1 != *(int *)((int)this + 8)) || (param_2 != *(char *)((int)this + 0xc))) {
    FUN_00ccac30(*(undefined4 **)((int)this + 0x1c));
    iVar1 = (int)this + 0x14;
    *(int *)((int)this + 0x18) = iVar1;
    *(int *)iVar1 = iVar1;
    *(undefined4 *)((int)this + 0x1c) = 0;
    *(undefined1 *)((int)this + 0x20) = 0;
    *(undefined4 *)((int)this + 0x24) = 0;
    *(undefined4 *)((int)this + 0x34) = *(undefined4 *)((int)this + 0x30);
    *(int *)((int)this + 8) = param_1;
    *(char *)((int)this + 0xc) = param_2;
  }
  *(undefined4 *)((int)this + 0x34) = *(undefined4 *)((int)this + 0x30);
  *(undefined4 *)((int)this + 0x2c) = 0;
  if (*(void **)((int)this + 8) != (void *)0x0) {
    this_00 = Object_GetComponentByMask(*(void **)((int)this + 8),DAT_011edf08);
    if (this_00 != (void *)0x0) {
      fVar2 = PlacementLocation_ReadYawWithRefresh(this_00);
      *(float *)((int)this + 0x2c) = fVar2;
    }
  }
  return;
}

