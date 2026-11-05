/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161e90 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *this;
  undefined4 *this_00;
  int *piVar4;
  int *piVar5;
  uint unaff_EBX;
  undefined4 *unaff_EDI;
  undefined8 uVar6;
  void *local_28;
  undefined **local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  this = ObjectRegistry_GetGlobal();
  this_00 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1));
  if (this_00 == (undefined4 *)0x0) {
    local_28 = (void *)0x0;
  }
  else {
    LOCK();
    this_00[1] = this_00[1] + 1;
    UNLOCK();
    local_28 = Object_GetComponentByMask(this_00,DAT_011dd484);
  }
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_28 == (void *)0x0) {
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f59c0(local_20,0x10,0x20,(void *)0x0,4,1);
    iVar2 = *piVar4;
    uVar6 = (**(code **)(iVar2 + 0x118))(local_20,0);
    (**(code **)(iVar2 + 0x130))(param_3,uVar6);
    if ((unaff_EBX & 4) != 0) {
      FUN_004f5760(local_20 + -5,'\0');
    }
    if (this_00 != (undefined4 *)0x0) {
      piVar4 = this_00 + 1;
      LOCK();
      iVar2 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*this_00)(1);
      }
    }
    return 0;
  }
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
  iVar2 = *piVar4;
  uVar6 = (**(code **)(iVar2 + 0x118))(local_20,0);
  (**(code **)(iVar2 + 0x130))(param_3,uVar6);
  iVar2 = piVar5[1];
  iVar3 = *piVar5;
  if ((unaff_EBX & 4) != 0) {
    FUN_004f5760(local_20 + -5,'\0');
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
  return (iVar2 - iVar3) / 0x114;
}

