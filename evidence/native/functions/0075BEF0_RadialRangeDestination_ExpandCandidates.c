/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Radial vtable+0x10 expands current world center/cone from stored
   target-local coordinates if target transform resolves. Determines level, sets scoring context,
   optionally emits near-start candidate if abs(startY-centerY)<1, then radii over[min,max]. For
   max>min chooses max(2,uint32(truncTowardZero((max-min)/spacing+0.5))) steps and visits inclusive
   endpoints; preferred radius defaults min when negative and is added if not already sampled. Cone
   interval from atan2(z,x)-angle/2. Missing target falls back to stored vectors. Return is whether
   candidate vector is nonempty. */

bool __thiscall
RadialRangeDestination_ExpandCandidates
          (void *this,float param_1,void *param_2,float *param_3,int *param_4,undefined4 param_5,
          int *param_6,int param_7,void *param_8)

{
  bool bVar1;
  char cVar2;
  void *pvVar3;
  void *this_00;
  undefined3 extraout_var;
  float *pfVar4;
  float10 fVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  int local_68;
  float local_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 local_3c [3];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  FUN_0074cc70(local_3c,param_6);
  local_30 = *(float *)((int)this + 0x40);
  fStack_2c = *(float *)((int)this + 0x44);
  fStack_28 = *(float *)((int)this + 0x48);
  fStack_24 = *(float *)((int)this + 0x4c);
  local_20 = *(float *)((int)this + 0x30);
  fStack_1c = *(float *)((int)this + 0x34);
  fStack_18 = *(float *)((int)this + 0x38);
  fStack_14 = *(float *)((int)this + 0x3c);
  local_80 = 0.0;
  if (*(int *)((int)this + 0x50) != 0 || *(int *)((int)this + 0x54) != 0) {
    pvVar3 = ObjectRegistry_GetGlobal();
    pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,*(ulonglong *)((int)this + 0x50));
    if (pvVar3 != (void *)0x0) {
      this_00 = Object_GetComponentByMask(pvVar3,DAT_011ea158);
      if (this_00 != (void *)0x0) {
        TransformComponent_GetWorldQuaternionTranslation(this_00,&local_60);
        fVar8 = *(float *)((int)this + 0x40);
        fVar10 = *(float *)((int)this + 0x44);
        fVar12 = *(float *)((int)this + 0x48);
        fVar7 = (fVar12 * fStack_5c - fVar10 * fStack_58) + fStack_54 * fVar8;
        fVar9 = (fVar8 * fStack_58 - fVar12 * local_60) + fStack_54 * fVar10;
        fVar11 = (fVar10 * local_60 - fVar8 * fStack_5c) + fStack_54 * fVar12;
        local_20 = *(float *)((int)this + 0x30);
        fStack_1c = *(float *)((int)this + 0x34);
        fStack_18 = *(float *)((int)this + 0x38);
        local_30 = (fVar11 * fStack_5c - fVar9 * fStack_58) * DAT_0103fd88 + fVar8 + local_50;
        fStack_2c = (fVar7 * fStack_58 - fVar11 * local_60) * DAT_0103fd88 + fVar10 + fStack_4c;
        fStack_28 = (fVar9 * local_60 - fVar7 * fStack_5c) * DAT_0103fd88 + fVar12 + fStack_48;
        fStack_24 = (fVar7 * local_60 - fVar7 * local_60) * DAT_0103fd88 +
                    *(float *)((int)this + 0x4c) + fStack_44;
        fVar8 = (fStack_18 * fStack_5c - fStack_1c * fStack_58) + local_20 * fStack_54;
        fVar10 = (local_20 * fStack_58 - fStack_18 * local_60) + fStack_1c * fStack_54;
        fVar12 = (fStack_1c * local_60 - local_20 * fStack_5c) + fStack_18 * fStack_54;
        local_20 = (fVar12 * fStack_5c - fVar10 * fStack_58) * DAT_0103fd88 + local_20;
        fStack_1c = (fVar8 * fStack_58 - fVar12 * local_60) * DAT_0103fd88 + fStack_1c;
        fStack_18 = (fVar10 * local_60 - fVar8 * fStack_5c) * DAT_0103fd88 + fStack_18;
        fStack_14 = (fVar8 * local_60 - fVar8 * local_60) * DAT_0103fd88 +
                    *(float *)((int)this + 0x3c);
      }
      fVar8 = (float)FUN_0074c120(pvVar3,&local_80);
      goto LAB_0075c055;
    }
  }
  fVar8 = (float)RoutePoint_ResolveLotAndLevel((float *)((int)this + 0x40),&local_80);
LAB_0075c055:
  cVar2 = RadialRangeDestination_InitializeScoringContext(this,param_3,&local_30);
  fVar10 = param_3[1];
  fStack_58 = fVar10 - fStack_2c;
  fStack_54 = fVar10 - fStack_2c;
  _local_60 = CONCAT44(fVar10 - fStack_2c,fVar10 - fStack_2c);
  local_68 = CONCAT31(extraout_var,cVar2);
  if (ABS(fVar10 - fStack_2c) < 1.0) {
    RadialRangeDestination_GenerateNearStartCandidate
              (this,param_1,param_2,param_3,&local_30,(undefined1 (*) [16])&local_20,fVar8,param_6,
               local_3c,param_7,param_4,param_8);
  }
  fVar10 = *(float *)((int)this + 0x60);
  local_64 = 0.0;
  local_80 = 1.4013e-45;
  local_6c = fVar10;
  if (0.0 <= *(float *)((int)this + 0x68)) {
    local_6c = *(float *)((int)this + 0x68);
  }
  if (fVar10 < *(float *)((int)this + 100)) {
    local_70 = 2.8026e-45;
    fVar5 = (float10)*(float *)((int)this + 100) - (float10)fVar10;
    local_60 = (float)(longlong)
                      ROUND(fVar5 / (float10)*(float *)((int)this + 0x6c) + (float10)_DAT_00f9b5b4);
    local_64 = local_60;
    pfVar4 = &local_64;
    if ((uint)local_60 < 3) {
      pfVar4 = &local_70;
    }
    local_80 = *pfVar4;
    fVar6 = (float10)(int)local_80;
    if ((int)local_80 < 0) {
      fVar6 = fVar6 + (float10)_DAT_00f99948;
    }
    local_64 = (float)(fVar5 / fVar6);
  }
  fStack_5c = fStack_1c;
  fStack_58 = fStack_18;
  fStack_54 = fStack_14;
  fVar5 = (float10)fpatan((float10)fStack_18,(float10)local_20);
  fVar5 = fVar5 - (float10)*(float *)((int)this + 0x5c) * (float10)_DAT_00f9b5b4;
  local_70 = (float)fVar5;
  local_74 = *(float *)((int)this + 0x5c) + local_70;
  bVar1 = false;
  local_78 = 0.0;
  while( true ) {
    fVar10 = (float)(int)local_78;
    if ((int)local_78 < 0) {
      fVar10 = fVar10 + _DAT_00f99948;
    }
    local_60 = fVar10 * local_64 + *(float *)((int)this + 0x60);
    local_7c = ABS(local_6c - local_60);
    if (local_7c < DAT_0100519c) {
      bVar1 = true;
    }
    RadialRangeDestination_GenerateRadiusCandidates
              (this,param_1,param_2,local_68,&local_30,local_60,fVar8,(float)fVar5,local_74,param_4,
               param_6,local_3c,param_7,&local_60,&local_20,param_8);
    local_78 = (float)((int)local_78 + 1);
    if ((uint)local_80 < (uint)local_78) break;
    fVar5 = (float10)local_70;
  }
  if (!bVar1) {
    RadialRangeDestination_GenerateRadiusCandidates
              (this,param_1,param_2,local_68,&local_30,local_6c,fVar8,local_70,local_74,param_4,
               param_6,local_3c,param_7,&local_20,&local_20,param_8);
  }
  return *param_4 != param_4[1];
}

