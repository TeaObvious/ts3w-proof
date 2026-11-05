/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl11physicalDWORDslots/ordinaryRET, lowALsuccess.
   Registry lookup full objectGUID and owned reference; Transform matrix before selecting
   containing/explicit/defaultworld lot and virtual+30 admission. On successful virtual30,
   ObjectEvents_Dispatch0B THEN reference release and AL1. Do not infer one B-before15 order from
   separateC6E170 helper. Direction normalization uses RSQRTPS/Newton and original cross products,
   not established equivalent to arbitrary managed Matrix4x4 helpers. Missing owner/failed insertion
   returnsAL0 after owned cleanup. */

undefined4 __cdecl
ObjectPlacement_AdmitCreatedOwner
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4,float param_5,float param_6
          ,float param_7,undefined4 param_8,float param_9,float param_10,float param_11)

{
  int iVar1;
  undefined1 auVar2 [16];
  char cVar3;
  void *pvVar4;
  int *this;
  int *piVar5;
  undefined4 uVar6;
  int *piVar7;
  float fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  float fVar11;
  float fVar12;
  float fVar13;
  undefined1 auVar14 [16];
  int *local_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  undefined4 uStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(param_2,param_1));
  piVar7 = this;
  if (this == (int *)0x0) goto LAB_0079909a;
  LOCK();
  this[1] = this[1] + 1;
  UNLOCK();
  local_70 = param_5;
  fStack_6c = param_6;
  fStack_68 = param_7;
  fStack_64 = param_5;
  local_94 = this;
  pvVar4 = Object_GetComponentByMask(this,DAT_011ea158);
  if (pvVar4 != (void *)0x0) {
    auVar9._0_4_ = param_9 * param_9;
    auVar9._4_4_ = param_10 * param_10;
    auVar9._8_4_ = param_11 * param_11;
    auVar9._12_4_ = param_9 * param_9;
    fVar8 = auVar9._8_4_ + auVar9._4_4_ + auVar9._0_4_;
    auVar2._4_4_ = fVar8;
    auVar2._0_4_ = fVar8;
    auVar2._8_4_ = fVar8;
    auVar2._12_4_ = fVar8;
    auVar10 = rsqrtps(auVar9,auVar2);
    fVar11 = auVar10._0_4_;
    fVar12 = auVar10._4_4_;
    fVar13 = auVar10._8_4_;
    fVar11 = (1.0 - fVar11 * fVar11 * fVar8) * fVar11 * 0.5 + fVar11;
    fVar12 = (1.0 - fVar12 * fVar12 * fVar8) * fVar12 * 0.5 + fVar12;
    fVar13 = (1.0 - fVar13 * fVar13 * fVar8) * fVar13 * 0.5 + fVar13;
    local_90 = ((1.0 - fVar11 * fVar11 * fVar8) * fVar11 * 0.5 + fVar11) * param_9;
    fStack_8c = ((1.0 - fVar12 * fVar12 * fVar8) * fVar12 * 0.5 + fVar12) * param_10;
    fStack_88 = ((1.0 - fVar13 * fVar13 * fVar8) * fVar13 * 0.5 + fVar13) * param_11;
    local_50 = fStack_88 * 1.0 - fStack_8c * 0.0;
    fStack_4c = local_90 * 0.0 - fStack_88 * 0.0;
    fStack_48 = fStack_8c * 0.0 - local_90 * 1.0;
    fVar8 = local_50 * local_50;
    auVar14._4_4_ = fVar8;
    auVar14._0_4_ = fStack_4c * fStack_4c;
    auVar14._8_4_ = fVar8;
    auVar14._12_4_ = fVar8;
    fVar8 = fStack_48 * fStack_48 + fStack_4c * fStack_4c + fVar8;
    auVar10._4_4_ = fVar8;
    auVar10._0_4_ = fVar8;
    auVar10._8_4_ = fVar8;
    auVar10._12_4_ = fVar8;
    auVar10 = rsqrtps(auVar14,auVar10);
    fVar11 = auVar10._0_4_;
    fVar12 = auVar10._4_4_;
    fVar13 = auVar10._8_4_;
    fVar11 = (1.0 - fVar11 * fVar11 * fVar8) * fVar11 * 0.5 + fVar11;
    fVar12 = (1.0 - fVar12 * fVar12 * fVar8) * fVar12 * 0.5 + fVar12;
    fVar13 = (1.0 - fVar13 * fVar13 * fVar8) * fVar13 * 0.5 + fVar13;
    local_80 = local_70;
    fStack_7c = fStack_6c;
    fStack_78 = fStack_68;
    local_50 = ((1.0 - fVar11 * fVar11 * fVar8) * fVar11 * 0.5 + fVar11) * local_50;
    fStack_4c = ((1.0 - fVar12 * fVar12 * fVar8) * fVar12 * 0.5 + fVar12) * fStack_4c;
    fStack_48 = ((1.0 - fVar13 * fVar13 * fVar8) * fVar13 * 0.5 + fVar13) * fStack_48;
    fStack_74 = 1.0;
    local_40 = fStack_48 * fStack_8c - fStack_4c * fStack_88;
    fStack_3c = local_50 * fStack_88 - fStack_48 * local_90;
    fStack_38 = fStack_4c * local_90 - local_50 * fStack_8c;
    uStack_44 = 0;
    fStack_64 = 0.0;
    uStack_34 = 0;
    uStack_84 = 0;
    uStack_24 = 0;
    local_20 = local_70;
    fStack_1c = fStack_6c;
    fStack_18 = fStack_68;
    fStack_14 = 1.0;
    local_70 = local_40;
    fStack_6c = fStack_3c;
    fStack_68 = fStack_38;
    local_60 = fStack_88;
    fStack_5c = local_90;
    fStack_58 = fStack_8c;
    fStack_54 = local_90;
    local_30 = local_90;
    fStack_2c = fStack_8c;
    fStack_28 = fStack_88;
    TransformComponent_SetWorldMatrix(pvVar4,&local_50);
  }
  pvVar4 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar5 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_5,param_7);
    piVar7 = *(int **)((int)pvVar4 + 0xb0);
    if (param_3 == 0 && param_4 == 0) {
      if (piVar5 != (int *)0x0) goto LAB_0079904d;
    }
    else if ((param_3 != piVar7[0x12]) || (param_4 != piVar7[0x13])) {
      piVar5 = WorldObjects_FindByGuid(pvVar4,param_3,param_4,(uint *)0x0);
LAB_0079904d:
      piVar7 = piVar5;
    }
    cVar3 = (**(code **)(*piVar7 + 0x30))(this);
    if (cVar3 != '\0') {
      ObjectEvents_Dispatch(0xb,this,(void *)0x0);
      uVar6 = FUN_007462e0((int *)&local_94);
      return CONCAT31((int3)((uint)uVar6 >> 8),1);
    }
  }
  piVar7 = this + 1;
  LOCK();
  iVar1 = *piVar7;
  *piVar7 = *piVar7 + -1;
  UNLOCK();
  if (iVar1 == 1) {
    LOCK();
    *piVar7 = 1;
    UNLOCK();
    piVar7 = (int *)(**(code **)*this)(1);
  }
LAB_0079909a:
  return (uint)piVar7 & 0xffffff00;
}

