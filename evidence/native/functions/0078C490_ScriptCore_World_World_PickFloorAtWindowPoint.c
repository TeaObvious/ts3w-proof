/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01163550 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_PickFloorAtWindowPoint [assembly=ScriptCore token=0x060007B1; x:
   System.Int32, y: System.Int32, outHitPt: Sims3.SimIFace.Vector3&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst instruction contract: cdecl x/y/out pointer are three stack words. Window ray7CEF70 feeds
   iterative CollisionService_QuerySegment with flags1 and trailing byte1. At78C619 a false low AL
   from AB1020 terminates picking; at78C664 low AL from AFDE10 admits only a floor hit. Rejected
   hits advance accumulated segment distance plus binary32 FB35B4 (0.001) and query again. Success
   writes output XYZ through76BF70 and sets AL1. Failure sets AL0 without writing the output
   pointer; upper EAX is not Boolean status. No direct equivalence with a displayed-lot-only cached
   floor query or collision child predicate is established. */

uint __cdecl ScriptCore.World::World_PickFloorAtWindowPoint(int param_1,int param_2,void *param_3)

{
  char cVar1;
  void *pvVar2;
  int iVar3;
  uint uVar4;
  void *pvVar5;
  undefined3 extraout_var;
  undefined4 uVar6;
  float fVar7;
  undefined1 auVar8 [16];
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined1 in_XMM4 [16];
  undefined1 auVar13 [16];
  float local_d0;
  LotXZLevel local_cc;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  undefined4 uStack_9c;
  float fStack_98;
  undefined4 uStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  undefined4 uStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined1 local_60 [16];
  float local_50 [4];
  float local_40;
  undefined4 uStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  
  pvVar2 = LoadPump_ReadFrameServiceGlobal();
  iVar3 = FUN_005361d0((int)pvVar2);
  FUN_007cef70(iVar3,param_1,param_2,&local_70,&local_b0);
  pvVar2 = DAT_011edbc4;
  local_90 = local_b0 - local_70;
  fStack_8c = fStack_ac - fStack_6c;
  fStack_88 = fStack_a8 - fStack_68;
  fVar7 = fStack_88 * fStack_88 + fStack_8c * fStack_8c + local_90 * local_90;
  auVar13._4_4_ = fVar7;
  auVar13._0_4_ = fVar7;
  auVar13._8_4_ = fVar7;
  auVar13._12_4_ = fVar7;
  auVar13 = rsqrtps(in_XMM4,auVar13);
  fVar9 = auVar13._0_4_;
  fVar10 = auVar13._4_4_;
  fVar11 = auVar13._8_4_;
  fVar12 = auVar13._12_4_;
  fVar9 = (FLOAT_00f998f8 - fVar9 * fVar9 * fVar7) * _DAT_00f9b5b4 * fVar9 + fVar9;
  fVar10 = (FLOAT_00f998f8 - fVar10 * fVar10 * fVar7) * _DAT_00f9b5b4 * fVar10 + fVar10;
  fVar11 = (FLOAT_00f998f8 - fVar11 * fVar11 * fVar7) * _DAT_00f9b5b4 * fVar11 + fVar11;
  fVar12 = (FLOAT_00f998f8 - fVar12 * fVar12 * fVar7) * _DAT_00f9b5b4 * fVar12 + fVar12;
  local_90 = ((FLOAT_00f998f8 - fVar9 * fVar9 * fVar7) * _DAT_00f9b5b4 * fVar9 + fVar9) * local_90;
  fStack_8c = ((FLOAT_00f998f8 - fVar10 * fVar10 * fVar7) * _DAT_00f9b5b4 * fVar10 + fVar10) *
              fStack_8c;
  fStack_88 = ((FLOAT_00f998f8 - fVar11 * fVar11 * fVar7) * _DAT_00f9b5b4 * fVar11 + fVar11) *
              fStack_88;
  fStack_84 = ((FLOAT_00f998f8 - fVar12 * fVar12 * fVar7) * _DAT_00f9b5b4 * fVar12 + fVar12) *
              (fStack_a4 - fStack_64);
  local_c0 = local_70;
  fStack_bc = fStack_6c;
  fStack_b8 = fStack_68;
  fStack_b4 = fStack_64;
  local_d0 = 0.0;
  CollisionService_GetGlobal();
  uVar4 = CollisionService_QuerySegment(&local_c0,&local_b0,1,local_50,'\x01');
  cVar1 = (char)uVar4;
  while (cVar1 != '\0') {
    auVar8._0_4_ = (fStack_a8 - fStack_b8) * (fStack_a8 - fStack_b8) +
                   (fStack_ac - fStack_bc) * (fStack_ac - fStack_bc) +
                   (local_b0 - local_c0) * (local_b0 - local_c0);
    auVar8._4_4_ = auVar8._0_4_;
    auVar8._8_4_ = auVar8._0_4_;
    auVar8._12_4_ = auVar8._0_4_;
    local_60 = sqrtps(auVar8,auVar8);
    fVar7 = (float)local_60._0_4_ * local_50[0];
    pvVar5 = LotSpatialIndex_FindContainingLotAtWorldXZ(pvVar2,local_40,fStack_38);
    if (pvVar5 != (void *)0x0) {
      cVar1 = FUN_00ab1020((int)pvVar5);
      uVar4 = CONCAT31(extraout_var,cVar1);
      if (cVar1 == '\0') break;
      local_cc.x = FLOAT_00fab218;
      local_cc.z = FLOAT_00fab218;
      local_cc.level = 0;
      Lot_WorldPositionToLocalLocation(pvVar5,&local_40,&local_cc);
      uVar4 = FUN_00afde10(pvVar5,&local_cc.x,'\0','\0','\0');
      if ((char)uVar4 != '\0') {
        local_90 = local_40;
        fStack_8c = (float)uStack_3c;
        fStack_88 = fStack_38;
        fStack_84 = (float)uStack_34;
        local_80 = local_40;
        uStack_7c = uStack_3c;
        fStack_78 = fStack_38;
        uStack_74 = uStack_34;
        local_a0 = local_40;
        uStack_9c = uStack_3c;
        fStack_98 = fStack_38;
        uStack_94 = uStack_34;
        uVar6 = FUN_0076bf70(param_3,local_40,uStack_3c,fStack_38);
        return CONCAT31((int3)((uint)uVar6 >> 8),1);
      }
    }
    local_d0 = fVar7 + local_d0 + FLOAT_00fb35b4;
    local_c0 = local_d0 * local_90 + local_70;
    fStack_bc = local_d0 * fStack_8c + fStack_6c;
    fStack_b8 = local_d0 * fStack_88 + fStack_68;
    fStack_b4 = local_d0 * fStack_84 + fStack_64;
    uVar4 = CollisionService_QuerySegment(&local_c0,&local_b0,1,local_50,'\x01');
    cVar1 = (char)uVar4;
  }
  return uVar4 & 0xffffff00;
}

