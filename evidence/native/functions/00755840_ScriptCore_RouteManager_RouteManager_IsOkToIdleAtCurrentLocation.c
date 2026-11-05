/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161bf8 (original PC 1.67 TS3W.exe).
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
  int *piVar1;
  char cVar2;
  short sVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  void *pvVar7;
  void *pvVar8;
  undefined4 uVar9;
  uint uVar10;
  uint uVar11;
  int *piVar12;
  longlong lVar13;
  undefined8 uVar14;
  int *local_b8;
  uint local_b4;
  undefined8 local_b0;
  undefined4 uStack_a8;
  void *local_a0;
  int *local_9c;
  int *piStack_98;
  int *piStack_94;
  undefined4 uStack_90;
  char *pcStack_8c;
  int local_84;
  float fStack_80;
  undefined4 uStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  float fStack_70;
  undefined4 uStack_6c;
  float fStack_68;
  undefined4 uStack_64;
  float fStack_60;
  undefined4 uStack_5c;
  float fStack_58;
  undefined4 uStack_54;
  float afStack_50 [19];
  
  local_b0._0_4_ = DAT_011da140;
  iVar4 = FUN_00937570();
  local_84 = iVar4;
  piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar6 = (int *)thunk_FUN_00835d40();
  local_9c = piVar6;
  if (piVar6 == (void *)0x0) {
    local_a0 = (void *)0x0;
  }
  else {
    local_a0 = (void *)FUN_008295c0((int)piVar6);
  }
  if (((((piVar5 != (int *)0x0) && ((void *)local_b0 != (void *)0x0)) && (iVar4 != 0)) &&
      ((param_1 != 0 || param_2 != 0 &&
       (pvVar7 = (void *)FUN_00937f80(iVar4), pvVar7 != (void *)0x0)))) &&
     (iVar4 = FUN_0055e010(pvVar7), iVar4 != 0)) {
    iVar4 = FUN_00839640(iVar4 + 8);
    if (iVar4 != 0) {
      return 2;
    }
    local_b8 = (int *)0x0;
    local_b4 = 0;
    if (param_3 != 0) {
      (**(code **)(*piVar5 + 0x68))(param_3,&local_b8,&local_b4);
    }
    pvVar8 = (void *)FUN_0055e050(pvVar7);
    if (pvVar8 != (void *)0x0) {
      FUN_00957a30(pvVar8,&fStack_80);
      if ((DAT_011edbc4 != 0) && (pvVar8 = *(void **)(DAT_011edbc4 + 0x5c), pvVar8 != (void *)0x0))
      {
        fStack_70 = fStack_80;
        uStack_6c = uStack_7c;
        fStack_68 = fStack_78;
        uStack_64 = uStack_74;
        fStack_60 = fStack_80;
        uStack_5c = uStack_7c;
        fStack_58 = fStack_78;
        uStack_54 = uStack_74;
        uVar9 = FUN_00b865c0(pvVar8,fStack_80,fStack_78,'\0','\0');
        if ((char)uVar9 != '\0') {
          return 0x80;
        }
        fStack_60 = fStack_80;
        uStack_5c = uStack_7c;
        fStack_58 = fStack_78;
        uStack_54 = uStack_74;
        fStack_70 = fStack_80;
        uStack_6c = uStack_7c;
        fStack_68 = fStack_78;
        uStack_64 = uStack_74;
        uVar9 = FUN_00b7ca40(pvVar8,fStack_80,fStack_78,'\x01');
        if ((char)uVar9 != '\0') {
          return 0x80;
        }
      }
      lVar13 = FUN_0083acb0(&fStack_80,param_4,local_b4,(int)local_b8);
      if (lVar13 != 0) {
        return 4;
      }
      if (piVar6 != (void *)0x0) {
        uVar10 = FUN_0074c120(pvVar7,(undefined4 *)&local_b0);
        pvVar7 = (void *)local_b0;
        if (((void *)local_b0 != (void *)0x0) && (local_a0 != (void *)0x0)) {
          local_b0._0_4_ = DAT_00fab218;
          local_b0._4_4_ = DAT_00fab218;
          uStack_a8 = 0;
          FUN_00adc860(pvVar7,&fStack_80,(float *)&local_b0);
          sVar3 = FUN_00b482c0(*(void **)((int)pvVar7 + 0x298),(float *)&local_b0,0,1);
          piVar6 = local_9c;
          if ((sVar3 != -1) &&
             (iVar4 = FUN_00630380(local_a0,*(uint *)((int)pvVar7 + 0x48),
                                   *(uint *)((int)pvVar7 + 0x4c)), piVar6 = local_9c, iVar4 != 0)) {
            fStack_70 = fStack_80;
            uStack_6c = uStack_7c;
            fStack_68 = fStack_78;
            uStack_64 = DAT_00f998f8;
            fStack_60 = fStack_80;
            uStack_5c = uStack_7c;
            fStack_58 = fStack_78;
            uStack_54 = DAT_00f998f8;
            uVar11 = FUN_00625960(iVar4,sVar3,uVar10,&fStack_60,param_4);
            piVar6 = local_9c;
            if ((char)uVar11 != '\0') {
              return 0x40;
            }
          }
        }
        local_9c = local_b8 + local_b4 * 2;
        FUN_00651150(afStack_50,&fStack_80,uVar10,0x3f800000,0,0);
        piStack_98 = (int *)0x0;
        piStack_94 = (int *)0x0;
        uStack_90 = 0;
        pcStack_8c = "Routing/Host";
        FUN_0082e7e0(piVar6,afStack_50,param_4,(int *)&piStack_98,'\0',param_5);
        piVar6 = piStack_98;
        if (piStack_98 != piStack_94) {
          do {
            piVar5 = (int *)*piVar6;
            if (piVar5 != (int *)0x0) {
              iVar4 = (**(code **)(*piVar5 + 0xc))();
              if (iVar4 == 5) {
                if (local_b4 == 0) {
LAB_00755bfd:
                  FUN_00652de0((int *)&piStack_98);
                  return 0x20;
                }
                uVar14 = (**(code **)(*piVar5 + 4))();
                piVar1 = local_9c;
                local_b0 = uVar14;
                piVar12 = (int *)FUN_00789230(local_b8,local_9c,(int *)&local_b0);
                if (piVar12 == piVar1) {
                  (**(code **)(*piVar5 + 4))();
                  uVar10 = FUN_00937f80(local_84);
                  if ((uVar10 != 0) && ((*(uint *)(uVar10 + 0x2c) & DAT_011ea0fc) != 0)) {
                    FUN_00652de0((int *)&piStack_98);
                    return 4;
                  }
                  goto LAB_00755bfd;
                }
              }
              else {
                cVar2 = (**(code **)(*piVar5 + 0x1c))(0);
                if (cVar2 != '\0') {
                  iVar4 = (**(code **)(*piVar5 + 8))();
                  if (iVar4 == 1) {
                    FUN_00652de0((int *)&piStack_98);
                    return 0x10;
                  }
                  if ((iVar4 == 0xc) || (iVar4 == 0x17)) {
                    FUN_00652de0((int *)&piStack_98);
                    return 8;
                  }
                }
              }
            }
            piVar6 = piVar6 + 1;
          } while (piVar6 != piStack_94);
        }
        FUN_00652de0((int *)&piStack_98);
      }
    }
  }
  return 0;
}

