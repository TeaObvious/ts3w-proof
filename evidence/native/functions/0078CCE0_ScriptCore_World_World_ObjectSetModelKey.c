/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635d0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectSetModelKey [assembly=ScriptCore token=0x060007BE; objId:
   System.UInt64, modelKey: Sims3.SimIFace.ResourceKey; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetModelKey
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4,int param_5,int param_6)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  int local_10 [4];
  
  GetGlobalInterfacePointer_11D5BBC();
  local_20 = param_5;
  local_1c = param_6;
  local_18 = param_3;
  local_14 = param_4;
  iVar1 = FUN_00937570();
  if ((((iVar1 != 0) && (pvVar2 = (void *)FUN_00937f80(iVar1), pvVar2 != (void *)0x0)) &&
      (pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011e9fc4), pvVar2 != (void *)0x0)) &&
     (((piVar3 = (int *)FUN_005455f0((int)pvVar2), *piVar3 != local_20 || (piVar3[2] != local_18))
      || ((piVar3[3] != local_14 || (piVar3[1] != local_1c)))))) {
    param_3 = 0;
    param_4 = 0;
    param_5 = 0;
    param_6 = 0;
    local_10[0] = 0;
    local_10[1] = 0;
    local_10[2] = 0;
    local_10[3] = 0;
    FUN_0094b150(pvVar2,local_10,&param_3);
    FUN_009497d0(pvVar2,&local_20);
  }
  return;
}

