/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Owner GUID copied as two DWORDs; payload event0x063bd2a3 has layer at+0x10,
   dispatched00693380. Original player bytes unchanged. */

void __thiscall RugComponent_NotifyLayerChanged(void *this,undefined4 param_1)

{
  int iVar1;
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50 [19];
  
  iVar1 = *(int *)((int)this + 4);
  if (iVar1 != 0) {
    local_58 = *(undefined4 *)(iVar1 + 8);
    local_54 = *(undefined4 *)(iVar1 + 0xc);
    local_60 = 0x63bd2a3;
    local_5c = (undefined4 *)0x0;
    local_50[0] = param_1;
    FUN_00693380(&local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(local_50);
    }
  }
  return;
}

