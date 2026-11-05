/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011635c8 (original PC 1.67 TS3W.exe).
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
  uint *puVar4;
  int iVar5;
  void *pvVar6;
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
    puVar4 = (uint *)FUN_007d8310((uint *)(aiStack_20 + 4),&local_30);
    local_30 = *puVar4;
    local_2c = puVar4[1];
    local_28 = puVar4[2];
    uVar3 = puVar4[3];
  }
  local_30 = local_30 ^ param_4;
  local_24 = uVar3 ^ param_4;
  iVar5 = FUN_00937570();
  if (iVar5 != 0) {
    pvVar6 = (void *)FUN_00937f80(iVar5);
    if (pvVar6 != (void *)0x0) {
      pvVar6 = (void *)FUN_00934260(pvVar6,DAT_011e9fc4);
      if (pvVar6 != (void *)0x0) {
        puVar4 = (uint *)FUN_005455f0((int)pvVar6);
        if ((((*puVar4 != local_30) || (puVar4[2] != local_28)) || (puVar4[3] != local_24)) ||
           (puVar4[1] != local_2c)) {
          aiStack_20[0] = 0;
          aiStack_20[1] = 0;
          aiStack_20[2] = 0;
          aiStack_20[3] = 0;
          aiStack_20[4] = 0;
          aiStack_20[5] = 0;
          aiStack_20[6] = 0;
          aiStack_20[7] = 0;
          FUN_0094b150(pvVar6,aiStack_20 + 4,aiStack_20);
          FUN_009497d0(pvVar6,(int *)&local_30);
        }
      }
    }
  }
  return;
}

