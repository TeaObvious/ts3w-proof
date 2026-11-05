/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161bf8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_IsOkToIdleAtCurrentLocation [assembly=ScriptCore
   token=0x06001056; simObjID: System.UInt64, ignoreIds: System.UInt64[], radius: System.Single,
   agsFlags: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.RouteManager::RouteManager_IsOkToIdleAtCurrentLocation
          (int param_1,int param_2,int param_3,float param_4,undefined4 param_5)

{
  ulonglong guid;
  float fVar1;
  int *piVar2;
  char cVar3;
  short sVar4;
  void *pvVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  void *pvVar9;
  undefined4 uVar10;
  uint uVar11;
  uint uVar12;
  int *piVar13;
  longlong lVar14;
  undefined8 uVar15;
  int *local_b8;
  uint local_b4;
  LotXZLevel local_b0;
  void *local_a0;
  int *local_9c;
  int *piStack_98;
  int *piStack_94;
  undefined4 uStack_90;
  char *pcStack_8c;
  void *local_84;
  float fStack_80;
  undefined4 uStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  undefined4 uStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  undefined4 uStack_5c;
  float fStack_58;
  float fStack_54;
  float afStack_50 [19];
  
  local_b0.x = (float)DAT_011da140;
  pvVar5 = ObjectRegistry_GetGlobal();
  local_84 = pvVar5;
  piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar7 = (int *)thunk_FUN_00835d40();
  local_9c = piVar7;
  if (piVar7 == (void *)0x0) {
    local_a0 = (void *)0x0;
  }
  else {
    local_a0 = (void *)FUN_008295c0((int)piVar7);
  }
  if (((((piVar6 != (int *)0x0) && ((void *)local_b0.x != (void *)0x0)) && (pvVar5 != (void *)0x0))
      && ((param_1 != 0 || param_2 != 0 &&
          (pvVar5 = ObjectRegistry_FindBorrowed(pvVar5,CONCAT44(param_2,param_1)),
          pvVar5 != (void *)0x0)))) && (iVar8 = FUN_0055e010(pvVar5), iVar8 != 0)) {
    iVar8 = FUN_00839640(iVar8 + 8);
    if (iVar8 != 0) {
      return 2;
    }
    local_b8 = (int *)0x0;
    local_b4 = 0;
    if (param_3 != 0) {
      (**(code **)(*piVar6 + 0x68))(param_3,&local_b8,&local_b4);
    }
    pvVar9 = (void *)Object_GetTransformComponentOrNull(pvVar5);
    if (pvVar9 != (void *)0x0) {
      TransformComponent_GetWorldPosition(pvVar9,&fStack_80);
      if ((DAT_011edbc4 != 0) && (pvVar9 = *(void **)(DAT_011edbc4 + 0x5c), pvVar9 != (void *)0x0))
      {
        fStack_70 = fStack_80;
        uStack_6c = uStack_7c;
        fStack_68 = fStack_78;
        fStack_64 = fStack_74;
        fStack_60 = fStack_80;
        uStack_5c = uStack_7c;
        fStack_58 = fStack_78;
        fStack_54 = fStack_74;
        uVar10 = FUN_00b865c0(pvVar9,fStack_80,fStack_78,'\0','\0');
        if ((char)uVar10 != '\0') {
          return 0x80;
        }
        fStack_60 = fStack_80;
        uStack_5c = uStack_7c;
        fStack_58 = fStack_78;
        fStack_54 = fStack_74;
        fStack_70 = fStack_80;
        uStack_6c = uStack_7c;
        fStack_68 = fStack_78;
        fStack_64 = fStack_74;
        uVar10 = FUN_00b7ca40(pvVar9,fStack_80,fStack_78,'\x01');
        if ((char)uVar10 != '\0') {
          return 0x80;
        }
      }
      lVar14 = FUN_0083acb0(&fStack_80,param_4,local_b4,(int)local_b8);
      if (lVar14 != 0) {
        return 4;
      }
      if (piVar7 != (void *)0x0) {
        uVar11 = FUN_0074c120(pvVar5,&local_b0.x);
        fVar1 = local_b0.x;
        if (((void *)local_b0.x != (void *)0x0) && (local_a0 != (void *)0x0)) {
          local_b0.x = -1.0;
          local_b0.z = -1.0;
          local_b0.level = 0;
          Lot_WorldPositionToLocalLocation((void *)fVar1,&fStack_80,&local_b0);
          sVar4 = LotRoom_ResolveForLocalLocation(*(void **)((int)fVar1 + 0x298),&local_b0.x,0,1);
          if ((sVar4 != -1) &&
             (pvVar5 = LotRouteGraph_FindLotByGuid(local_a0,*(ulonglong *)((int)fVar1 + 0x48)),
             pvVar5 != (void *)0x0)) {
            fStack_70 = fStack_80;
            uStack_6c = uStack_7c;
            fStack_68 = fStack_78;
            fStack_64 = 1.0;
            fStack_60 = fStack_80;
            uStack_5c = uStack_7c;
            fStack_58 = fStack_78;
            fStack_54 = 1.0;
            uVar12 = FUN_00625960((int)pvVar5,sVar4,uVar11,&fStack_60,param_4);
            if ((char)uVar12 != '\0') {
              return 0x40;
            }
          }
          piVar7 = local_9c;
        }
        local_9c = local_b8 + local_b4 * 2;
        FUN_00651150(afStack_50,&fStack_80,uVar11,0x3f800000,0,0);
        piStack_98 = (int *)0x0;
        piStack_94 = (int *)0x0;
        uStack_90 = 0;
        pcStack_8c = "Routing/Host";
        FUN_0082e7e0(piVar7,afStack_50,param_4,(int *)&piStack_98,'\0',param_5);
        piVar7 = piStack_98;
        if (piStack_98 != piStack_94) {
          do {
            piVar6 = (int *)*piVar7;
            if (piVar6 != (int *)0x0) {
              iVar8 = (**(code **)(*piVar6 + 0xc))();
              if (iVar8 == 5) {
                if (local_b4 == 0) {
LAB_00755bfd:
                  FUN_00652de0((int *)&piStack_98);
                  return 0x20;
                }
                uVar15 = (**(code **)(*piVar6 + 4))();
                piVar2 = local_9c;
                local_b0._0_8_ = uVar15;
                piVar13 = (int *)FUN_00789230(local_b8,local_9c,(int *)&local_b0);
                if (piVar13 == piVar2) {
                  guid = (**(code **)(*piVar6 + 4))();
                  pvVar5 = ObjectRegistry_FindBorrowed(local_84,guid);
                  if ((pvVar5 != (void *)0x0) &&
                     ((*(uint *)((int)pvVar5 + 0x2c) & DAT_011ea0fc) != 0)) {
                    FUN_00652de0((int *)&piStack_98);
                    return 4;
                  }
                  goto LAB_00755bfd;
                }
              }
              else {
                cVar3 = (**(code **)(*piVar6 + 0x1c))(0);
                if (cVar3 != '\0') {
                  iVar8 = (**(code **)(*piVar6 + 8))();
                  if (iVar8 == 1) {
                    FUN_00652de0((int *)&piStack_98);
                    return 0x10;
                  }
                  if ((iVar8 == 0xc) || (iVar8 == 0x17)) {
                    FUN_00652de0((int *)&piStack_98);
                    return 8;
                  }
                }
              }
            }
            piVar7 = piVar7 + 1;
          } while (piVar7 != piStack_94);
        }
        FUN_00652de0((int *)&piStack_98);
      }
    }
  }
  return 0;
}

