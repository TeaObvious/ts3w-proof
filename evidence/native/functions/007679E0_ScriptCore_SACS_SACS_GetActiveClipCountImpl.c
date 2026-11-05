/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161e90 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_GetActiveClipCountImpl [assembly=ScriptCore token=0x06000D71; objHandle:
   System.UInt64, callback: System.Delegate; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl
ScriptCore.SACS::SACS_GetActiveClipCountImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 *this;
  int *piVar4;
  int *piVar5;
  uint unaff_EBX;
  undefined4 *unaff_EDI;
  undefined8 uVar6;
  void *local_28;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  iVar3 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar3);
  if (this == (undefined4 *)0x0) {
    local_28 = (void *)0x0;
  }
  else {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    local_28 = (void *)FUN_00934260(this,DAT_011dd484);
  }
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_28 != (void *)0x0) {
    piVar5 = (int *)FUN_004e4500(0x10,"Debug/Animation/ActiveClipInfo",0);
    if (piVar5 == (int *)0x0) {
      piVar5 = (int *)0x0;
    }
    else {
      *piVar5 = 0;
      piVar5[1] = 0;
      piVar5[2] = 0;
      piVar5[3] = (int)"Debug/Animation/ActiveClipInfo";
    }
    FUN_00941c90(local_28,piVar5);
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f59c0(local_20,0x10,0x20,piVar5,4,1);
    iVar3 = *piVar4;
    uVar6 = (**(code **)(iVar3 + 0x118))(local_20,0);
    (**(code **)(iVar3 + 0x130))(param_3,uVar6);
    iVar3 = piVar5[1];
    iVar2 = *piVar5;
    if ((unaff_EBX & 4) != 0) {
      FUN_004f5760(&stack0xffffffcc,'\0');
    }
    if (unaff_EDI != (undefined4 *)0x0) {
      piVar4 = unaff_EDI + 1;
      LOCK();
      iVar1 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*unaff_EDI)(1);
      }
    }
    return (iVar3 - iVar2) / 0x114;
  }
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  FUN_004f59c0(local_20,0x10,0x20,(void *)0x0,4,1);
  iVar3 = *piVar4;
  uVar6 = (**(code **)(iVar3 + 0x118))(local_20,0);
  (**(code **)(iVar3 + 0x130))(param_3,uVar6);
  if ((unaff_EBX & 4) != 0) {
    FUN_004f5760(&stack0xffffffcc,'\0');
  }
  if (this != (undefined4 *)0x0) {
    piVar4 = this + 1;
    LOCK();
    iVar3 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return 0;
}

