/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011635d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetModelKey [assembly=ScriptCore token=0x060007BE; objId:
   System.UInt64, modelKey: Sims3.SimIFace.ResourceKey; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetModelKey
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4,int param_5,int param_6)

{
  void *pvVar1;
  int *piVar2;
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
  pvVar1 = ObjectRegistry_GetGlobal();
  if ((((pvVar1 != (void *)0x0) &&
       (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)),
       pvVar1 != (void *)0x0)) &&
      (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fc4), pvVar1 != (void *)0x0)) &&
     (((piVar2 = (int *)FUN_005455f0((int)pvVar1), *piVar2 != local_20 || (piVar2[2] != local_18))
      || ((piVar2[3] != local_14 || (piVar2[1] != local_1c)))))) {
    param_3 = 0;
    param_4 = 0;
    param_5 = 0;
    param_6 = 0;
    local_10[0] = 0;
    local_10[1] = 0;
    local_10[2] = 0;
    local_10[3] = 0;
    FUN_0094b150(pvVar1,local_10,&param_3);
    ModelComponent_SetReplacedModelKey(pvVar1,&local_20);
  }
  return;
}

