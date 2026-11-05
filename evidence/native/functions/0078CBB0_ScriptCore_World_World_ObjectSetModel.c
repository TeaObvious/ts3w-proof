/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011635c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetModel [assembly=ScriptCore token=0x060007BD; objId:
   System.UInt64, modelName: System.String, groupId: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_ObjectSetModel
          (undefined4 param_1,undefined4 param_2,int param_3,uint param_4)

{
  int *piVar1;
  wint_t *pwVar2;
  uint uVar3;
  uint *extraout_EAX;
  void *pvVar4;
  uint *puVar5;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  int aiStack_20 [8];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (param_3 == 0) {
    local_30 = 0;
  }
  else {
    pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_3);
    local_30 = FUN_007d0050(pwVar2);
  }
  uVar3 = 1;
  local_2c = 0;
  local_28 = 0x1661233;
  local_24 = 1;
  if (param_4 == 0) {
    ResourceKey_CopyWithMountedCandidate((uint *)(aiStack_20 + 4),&local_30);
    local_30 = *extraout_EAX;
    local_2c = extraout_EAX[1];
    local_28 = extraout_EAX[2];
    uVar3 = extraout_EAX[3];
  }
  local_30 = local_30 ^ param_4;
  local_24 = uVar3 ^ param_4;
  pvVar4 = ObjectRegistry_GetGlobal();
  if (pvVar4 != (void *)0x0) {
    pvVar4 = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(param_2,param_1));
    if (pvVar4 != (void *)0x0) {
      pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011e9fc4);
      if (pvVar4 != (void *)0x0) {
        puVar5 = (uint *)FUN_005455f0((int)pvVar4);
        if ((((*puVar5 != local_30) || (puVar5[2] != local_28)) || (puVar5[3] != local_24)) ||
           (puVar5[1] != local_2c)) {
          aiStack_20[0] = 0;
          aiStack_20[1] = 0;
          aiStack_20[2] = 0;
          aiStack_20[3] = 0;
          aiStack_20[4] = 0;
          aiStack_20[5] = 0;
          aiStack_20[6] = 0;
          aiStack_20[7] = 0;
          FUN_0094b150(pvVar4,aiStack_20 + 4,aiStack_20);
          ModelComponent_SetReplacedModelKey(pvVar4,&local_30);
        }
      }
    }
  }
  return;
}

