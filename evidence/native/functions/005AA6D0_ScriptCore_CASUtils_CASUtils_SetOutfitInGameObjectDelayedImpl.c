/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564c8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SetOutfitInGameObjectDelayedImpl [assembly=ScriptCore
   token=0x06000336; resKey: Sims3.SimIFace.ResourceKey, scriptHandle: System.UInt64,
   finshedCallback: System.Delegate, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SetOutfitInGameObjectDelayedImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,int param_7)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  undefined4 *this_00;
  undefined8 uVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_1;
  local_4 = param_2;
  iVar1 = FUN_005ebac0();
  if ((iVar1 != 0) && (*(char *)(iVar1 + 0x138) != '\0')) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    if ((param_7 == 0) ||
       (this = (void *)FUN_004e4500(0x18,"CAS/CASSwapReadyCallback",0), this == (void *)0x0)) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)FUN_005aa440(this,param_5,param_6,param_7);
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
    }
    this_00 = FUN_0076ae20();
    if (this_00 == (undefined4 *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      puVar5 = &local_10;
      piVar6 = piVar3;
      uVar4 = (**(code **)(*piVar2 + 0x118))();
      piVar2 = FUN_005aa330(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),puVar5,param_5,
                            param_6,piVar6);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    FUN_005ae5b0((int)piVar2);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
    }
  }
  return;
}

