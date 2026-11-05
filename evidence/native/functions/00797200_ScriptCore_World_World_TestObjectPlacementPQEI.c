/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011634d0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_TestObjectPlacementPQEI [assembly=ScriptCore token=0x0600079E; objId:
   System.UInt64, options: System.UInt32, objIdsToIgnore: System.UInt64[], position:
   Sims3.SimIFace.Vector3&, orientation: Sims3.SimIFace.Quaternion&, maxErrors: System.UInt32,
   numErrors: System.UInt32&, errorTypes: System.UInt64[]&, errorDatas: System.UInt64[]&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.World::World_TestObjectPlacementPQEI
          (undefined4 param_1,undefined4 param_2,uint param_3,int param_4,float *param_5,
          float *param_6,uint param_7,uint *param_8,int param_9,int param_10)

{
  char cVar1;
  undefined1 uVar2;
  int *piVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined4 uVar7;
  uint *puVar8;
  char *pcVar9;
  int iStack_120;
  undefined4 *local_f0;
  char *local_ec;
  uint *local_e8;
  int local_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  int local_d0 [4];
  float local_c0;
  float local_bc;
  float fStack_b8;
  float fStack_b4;
  undefined1 auStack_b0 [12];
  undefined4 uStack_a4;
  undefined1 auStack_a0 [16];
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  undefined1 local_80 [124];
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar4 = FUN_00937570();
  puVar5 = (undefined4 *)FUN_00937f80(iVar4);
  local_f0 = puVar5;
  if (puVar5 != (undefined4 *)0x0) {
    LOCK();
    puVar5[1] = puVar5[1] + 1;
    UNLOCK();
    if (param_5 != (float *)0x0) {
      fStack_d8 = param_5[2];
      local_e0 = *param_5;
      fStack_dc = param_5[1];
      local_e8 = (uint *)0x0;
      local_e4 = 0;
      fStack_d4 = local_e0;
      local_90 = local_e0;
      fStack_8c = fStack_dc;
      fStack_88 = fStack_d8;
      fStack_84 = local_e0;
      if (param_4 != 0) {
        (**(code **)(*piVar3 + 0x68))();
      }
      if ((((param_9 == 0) || (param_10 == 0)) || (param_7 == 0)) || (param_8 == (uint *)0x0)) {
        if (param_6 == (float *)0x0) {
          uVar2 = FUN_00c7ca80(puVar5,local_e8,local_e4,&local_90,param_3,(void *)0x0);
          uVar7 = FUN_007462e0((int *)&local_f0);
          return CONCAT31((int3)((uint)uVar7 >> 8),uVar2);
        }
        fStack_d4 = param_6[3];
        fStack_d8 = param_6[2];
        fStack_dc = param_6[1];
        local_e0 = *param_6;
        iStack_120 = 0x797555;
        uVar6 = FUN_00c79a80(puVar5,local_e8,local_e4,&local_90,&local_e0,param_3,(void *)0x0);
        uVar7 = FUN_007462e0((int *)&local_f0);
        return CONCAT31((int3)((uint)uVar7 >> 8),(char)uVar6);
      }
      FUN_00c783e0((int)local_80);
      if (param_6 == (float *)0x0) {
        cVar1 = FUN_00c7ca80(puVar5,local_e8,local_e4,&local_90,param_3,local_80);
      }
      else {
        fStack_b4 = param_6[3];
        fStack_b8 = param_6[2];
        local_bc = param_6[1];
        local_c0 = *param_6;
        iStack_120 = 0x797344;
        uVar6 = FUN_00c79a80(puVar5,local_e8,local_e4,&local_90,&local_c0,param_3,local_80);
        cVar1 = (char)uVar6;
      }
      if (cVar1 != '\0') {
        FUN_00796590((int)local_80);
        uVar7 = FUN_007462e0((int *)&local_f0);
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      uVar6 = 0;
      local_ec = "World/TestObjectPlacement/IdList";
      FUN_007d9500(&local_e0,&local_ec);
      local_ec = "World/TestObjectPlacement/IdList";
      FUN_007d9500(auStack_a0,&local_ec);
      iVar4 = FUN_007e51a0(local_80);
      pcVar9 = *(char **)(iVar4 + 8);
      local_ec = pcVar9;
      iVar4 = FUN_007e51a0(local_80);
      if (pcVar9 != (char *)(iVar4 + 4)) {
        do {
          if (param_7 <= uVar6) break;
          local_d0[0] = *(int *)(pcVar9 + 0x10);
          local_d0[1] = 0;
          FUN_00572500(&local_e0,local_d0);
          local_bc = *(float *)(pcVar9 + 0x3c);
          local_c0 = *(float *)(pcVar9 + 0x38);
          FUN_00572500(auStack_a0,&local_c0);
          uVar6 = uVar6 + 1;
          FUN_00822530(&local_ec,&uStack_a4);
          iVar4 = FUN_007e51a0(local_80);
          pcVar9 = local_ec;
        } while (local_ec != (char *)(iVar4 + 4));
      }
      (**(code **)(*piVar3 + 0x88))();
      iVar4 = 0;
      (**(code **)(*piVar3 + 0xa0))();
      iStack_120 = param_10;
      (**(code **)(*piVar3 + 0x88))();
      (**(code **)(*piVar3 + 0xa0))(param_10,local_c0,0,(int)local_bc - (int)local_c0 >> 3);
      *param_8 = uVar6;
      if (local_d0[0] != 0) {
        FUN_004e44e0(local_d0[0]);
      }
      if (iVar4 != 0) {
        FUN_004e44e0(iVar4);
      }
      FUN_00796590((int)auStack_b0);
      uVar6 = FUN_007462e0(&iStack_120);
      return uVar6 & 0xffffff00;
    }
  }
  puVar8 = (uint *)0x0;
  if (((param_7 != 0) && (puVar8 = param_8, param_8 != (uint *)0x0)) &&
     ((param_9 != 0 && (param_10 != 0)))) {
    *param_8 = 1;
    local_ec = "World/TestObjectPlacement/IdList";
    FUN_007d9500(local_d0,&local_ec);
    local_c0 = 0.0;
    local_bc = 0.0;
    FUN_00572500(local_d0,&local_c0);
    (**(code **)(*piVar3 + 0x88))();
    (**(code **)(*piVar3 + 0xa0))();
    iStack_120 = param_10;
    (**(code **)(*piVar3 + 0x88))();
    (**(code **)(*piVar3 + 0xa0))(param_10,local_f0,0,(int)local_ec - (int)local_f0 >> 3);
    puVar8 = (uint *)0x0;
    if (local_d0[0] != 0) {
      puVar8 = (uint *)FUN_004e44e0(local_d0[0]);
    }
  }
  if (local_f0 != (undefined4 *)0x0) {
    puVar8 = local_f0 + 1;
    LOCK();
    uVar6 = *puVar8;
    *puVar8 = *puVar8 - 1;
    UNLOCK();
    if (uVar6 == 1) {
      LOCK();
      *puVar8 = 1;
      UNLOCK();
      puVar8 = (uint *)(**(code **)*local_f0)();
    }
  }
  return (uint)puVar8 & 0xffffff00;
}

