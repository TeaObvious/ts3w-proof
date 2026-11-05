/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* PC 1.67 original: Eleven stack words, plain RET and caller cleanup; truth is AL, with unrelated
   high EAX unspecified. Rejects sampling step below binary32 0.1. World upper-region and
   bridge/component paths can bypass or replace ordinary sampling. Ordinary path performs ground
   mask 0x10 midpoint prepass at step 1.0, pond segment mask 0x20, outline mask 0x40 and sea segment
   mask 0x04 before final midpoint recursion; processed bits are cleared. Caller 00644900 supplies
   ordinary 0x7D or smoothing 0x59 and step 0.25; smoothing drops both pond 0x20 and sea 0x04.
   Component connectivity shortcuts, nullable operands and flag-dependent branches remain part of
   this complete body. */

uint __cdecl
NeighborhoodVisibility_TestWorldSegment
          (uint param_1,void *param_2,undefined4 param_3,void *param_4,float param_5,int *param_6,
          float param_7,float param_8,float param_9,undefined4 param_10,uint *param_11)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  bool bVar3;
  bool bVar4;
  uint in_EAX;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  uint3 uVar9;
  int **ppiVar8;
  int extraout_ECX;
  int iVar10;
  int **ppiVar11;
  int iVar12;
  int *piVar13;
  float10 fVar14;
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  double dVar21;
  float fVar22;
  float fVar23;
  undefined8 uVar24;
  byte local_85;
  int *local_84;
  float local_80;
  int *local_7c;
  int *local_78;
  float local_74;
  int *local_70;
  int *local_6c;
  void *local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  float local_54;
  int *local_50;
  float local_4c;
  float local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  int *piStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (param_9 < 0.1) goto LAB_00658e6d;
  if (param_2 == (void *)0x0) {
LAB_00658f1a:
    bVar3 = false;
    uVar5 = FUN_00b77f60(*(void **)((int)param_2 + 0x5c),param_5,(float)param_6,'\x01','\0',
                         &local_68,(float *)0x0,'\0');
    if (((char)uVar5 != '\0') &&
       ((local_68 != (void *)0x0 &&
        (uVar5 = FUN_00b738a0(local_68,param_7,param_8,'\x01','\0',(float *)0x0,'\0'),
        (char)uVar5 != '\0')))) goto LAB_00658f6c;
  }
  else {
    if ((((param_5 < *(float *)((int)param_2 + 0xb4)) ||
         ((float)param_6 <= *(float *)((int)param_2 + 0xc0))) ||
        (*(float *)((int)param_2 + 0xbc) <= param_5)) ||
       (*(float *)((int)param_2 + 0xc4) + *(float *)((int)param_2 + 0xc0) <= (float)param_6)) {
      bVar3 = false;
    }
    else {
      bVar3 = true;
    }
    if (((param_7 < *(float *)((int)param_2 + 0xb4)) || (param_8 <= *(float *)((int)param_2 + 0xc0))
        ) || ((*(float *)((int)param_2 + 0xbc) <= param_7 ||
              (*(float *)((int)param_2 + 0xc4) + *(float *)((int)param_2 + 0xc0) <= param_8)))) {
      bVar4 = false;
    }
    else {
      bVar4 = true;
    }
    if ((!bVar3) && (!bVar4)) goto LAB_00658f1a;
    bVar3 = true;
  }
  if ((param_4 != (void *)0x0) && (!bVar3)) {
    uVar6 = FUN_0066dc30(*(void **)((int)param_4 + 0x14),(int)param_2,param_5,0,(float)param_6);
    uVar7 = FUN_0066dc30(*(void **)((int)param_4 + 0x14),(int)param_2,param_7,0,param_8);
    iVar10 = *(int *)((int)param_4 + 0x14);
    if (uVar6 < *(uint *)(iVar10 + 0xc)) {
      local_85 = *(byte *)(*(int *)(iVar10 + 0x1c) + uVar6 * 2);
    }
    else {
      local_85 = 0;
    }
    uVar9 = (uint3)(uVar7 >> 8);
    if (uVar7 < *(uint *)(iVar10 + 0xc)) {
      iVar10 = *(int *)(iVar10 + 0x1c);
      in_EAX = CONCAT31(uVar9,*(undefined1 *)(iVar10 + uVar7 * 2));
    }
    else {
      in_EAX = (uint)uVar9 << 8;
    }
    if (((local_85 != 0) && ((byte)in_EAX == local_85)) && (local_85 != 0x7f)) {
      if ((param_1 & 0x40) != 0) {
        in_EAX = 0;
        if (*(void **)((int)param_4 + 8) != (void *)0x0) {
          local_4c = param_7;
          local_48 = param_8;
          local_44 = 0;
          local_40._8_4_ = 0;
          local_40._4_4_ = param_6;
          local_40._0_4_ = param_5;
          in_EAX = FUN_00628040(*(void **)((int)param_4 + 8),(float *)local_40,&local_4c,param_11,
                                '\0');
          iVar10 = extraout_ECX;
          if ((char)in_EAX != '\0') goto LAB_00658e6d;
        }
      }
      iVar12 = 1;
      local_74 = ABS(param_7 - param_5);
      local_80 = ABS(param_8 - (float)param_6);
      local_30 = -1.0;
      fStack_2c = -1.0;
      fStack_28 = -1.0;
      fStack_24 = -1.0;
      local_20 = 1.5258789e-05;
      piStack_1c = (int *)0x37800000;
      fStack_18 = 1.5258789e-05;
      fStack_14 = 1.5258789e-05;
      auVar18._0_4_ = local_74 * -1.0;
      auVar18._4_4_ = local_74 * -1.0;
      auVar18._8_4_ = local_74 * -1.0;
      auVar18._12_4_ = local_74 * -1.0;
      auVar19._4_4_ = local_74;
      auVar19._0_4_ = local_74;
      auVar19._8_4_ = local_74;
      auVar19._12_4_ = local_74;
      auVar19 = maxps(auVar18,auVar19);
      auVar20._4_4_ = -(uint)(auVar19._4_4_ <= 1.5258789e-05);
      auVar20._0_4_ = -(uint)(auVar19._0_4_ <= 1.5258789e-05);
      auVar20._8_4_ = -(uint)(auVar19._8_4_ <= 1.5258789e-05);
      auVar20._12_4_ = -(uint)(auVar19._12_4_ <= 1.5258789e-05);
      iVar10 = movmskps(iVar10,auVar20);
      local_6c = (int *)local_74;
      if (iVar10 == 0xf) {
        local_70 = (int *)0x0;
        local_84 = (int *)0x47c35000;
      }
      else {
        if (param_7 <= param_5) {
          local_70 = (int *)-1.0;
          dVar21 = floor((double)param_5);
          local_7c = (int *)(float)dVar21;
          local_84 = (int *)((param_5 - (float)local_7c) * local_80);
          dVar21 = floor((double)param_7);
          in_EAX = Compiler_TruncateX87ToLowInt32((float10)dVar21);
          iVar12 = (int)(float)local_7c - in_EAX;
        }
        else {
          local_70 = (int *)0x3f800000;
          dVar21 = floor((double)param_5);
          local_7c = (int *)(float)dVar21;
          local_84 = (int *)((((float)local_7c - param_5) + 1.0) * local_80);
          dVar21 = floor((double)param_7);
          in_EAX = Compiler_TruncateX87ToLowInt32((float10)dVar21);
          iVar12 = in_EAX - (int)(float)local_7c;
        }
        iVar12 = iVar12 + 1;
      }
      auVar15._0_4_ = local_30 * local_80;
      auVar15._4_4_ = fStack_2c * local_80;
      auVar15._8_4_ = fStack_28 * local_80;
      auVar15._12_4_ = fStack_24 * local_80;
      auVar2._4_4_ = local_80;
      auVar2._0_4_ = local_80;
      auVar2._8_4_ = local_80;
      auVar2._12_4_ = local_80;
      auVar19 = maxps(auVar15,auVar2);
      auVar16._4_4_ = -(uint)(auVar19._4_4_ <= (float)piStack_1c);
      auVar16._0_4_ = -(uint)(auVar19._0_4_ <= local_20);
      auVar16._8_4_ = -(uint)(auVar19._8_4_ <= fStack_18);
      auVar16._12_4_ = -(uint)(auVar19._12_4_ <= fStack_14);
      iVar10 = movmskps(in_EAX,auVar16);
      if (iVar10 == 0xf) {
        local_78 = (int *)0x0;
        local_84 = (int *)0xc7c35000;
      }
      else if (param_8 <= (float)param_6) {
        local_78 = (int *)0xbf800000;
        dVar21 = floor((double)(float)param_6);
        local_7c = (int *)(float)dVar21;
        local_84 = (int *)(((float)param_6 - (float)local_7c) * local_74);
        dVar21 = floor((double)param_8);
        iVar10 = Compiler_TruncateX87ToLowInt32((float10)dVar21);
        iVar12 = iVar12 + ((int)(float)local_7c - iVar10);
      }
      else {
        local_78 = (int *)0x3f800000;
        dVar21 = floor((double)(float)param_6);
        local_7c = (int *)(float)dVar21;
        local_84 = (int *)((float)local_84 - (((float)local_7c - (float)param_6) + 1.0) * local_74);
        dVar21 = floor((double)param_8);
        iVar10 = Compiler_TruncateX87ToLowInt32((float10)dVar21);
        iVar12 = iVar12 + (iVar10 - (int)(float)local_7c);
      }
      uVar5 = thunk_FUN_00835d40();
      if (param_11 == (uint *)0x0) {
        uVar6 = 0;
      }
      else {
        uVar6 = *param_11 & 0xcf00;
      }
      local_6c = (int *)param_5;
      local_7c = param_6;
      if (iVar12 < 1) {
LAB_00658f6c:
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
      while( true ) {
        uVar7 = FUN_0066dc30(*(void **)((int)param_4 + 0x14),(int)param_2,(float)local_6c,0,
                             (float)local_7c);
        in_EAX = FUN_0066e120(*(void **)((int)param_4 + 0x14),(uint)local_85,uVar7,uVar6,'\0');
        if ((char)in_EAX == '\0') break;
        if ((float)local_84 <= 0.0) {
          local_6c = (int *)((float)local_6c + (float)local_70);
          local_84 = (int *)((float)local_84 + local_80);
        }
        else {
          local_7c = (int *)((float)local_7c + (float)local_78);
          local_84 = (int *)((float)local_84 - local_74);
        }
        iVar12 = iVar12 + -1;
        if (iVar12 < 1) {
          return CONCAT31((int3)(in_EAX >> 8),1);
        }
      }
      goto LAB_00658e6d;
    }
  }
  auVar17._0_4_ =
       ((float)param_6 - param_8) * ((float)param_6 - param_8) +
       (param_5 - param_7) * (param_5 - param_7);
  auVar17._4_4_ = auVar17._0_4_;
  auVar17._8_4_ = auVar17._0_4_;
  auVar17._12_4_ = auVar17._0_4_;
  local_40 = sqrtps(auVar17,auVar17);
  if ((param_1 & 0x10) != 0) {
    in_EAX = NeighborhoodVisibility_TestRecursiveMidpoints
                       (0x10,param_2,param_3,param_4,param_5,(float)param_6,
                        (param_5 + param_7) * 0.5,((float)param_6 + param_8) * 0.5,param_7,param_8,
                        (float)local_40._0_4_ * 0.5,1.0,param_10);
    if ((char)in_EAX == '\0') goto LAB_00658e6d;
    param_1 = param_1 & 0xffffffef;
  }
  if (!bVar3) {
    if ((param_1 & 0x20) != 0) {
      in_EAX = FUN_00c60960(param_2,param_5,(float)param_6,param_7,param_8,'\x01');
      if ((char)in_EAX != '\0') goto LAB_00658e6d;
      param_1 = param_1 & 0xffffffdf;
    }
    if ((((param_1 & 0x40) != 0) && (param_4 != (void *)0x0)) &&
       (*(int *)((int)param_4 + 0x10) != 0)) {
      if (*(void **)((int)param_4 + 8) != (void *)0x0) {
        fStack_28 = 0.0;
        fStack_18 = 0.0;
        local_30 = param_7;
        fStack_2c = param_8;
        local_20 = param_5;
        piStack_1c = param_6;
        in_EAX = FUN_00628040(*(void **)((int)param_4 + 8),&local_20,&local_30,param_11,'\0');
        if ((char)in_EAX != '\0') goto LAB_00658e6d;
      }
      local_6c = *(int **)((int)param_4 + 0x10);
      local_78 = (int *)(int)(param_5 * 0.03125);
      local_5c = param_7;
      local_58 = param_8;
      local_70 = (int *)(int)(param_7 * 0.03125);
      local_84 = (int *)(int)(param_8 * 0.03125);
      piVar13 = (int *)(int)((float)param_6 * 0.03125);
      local_54 = param_5;
      local_50 = param_6;
      local_7c = piVar13;
      ppiVar8 = &local_70;
      if ((int)local_78 <= (int)local_70) {
        ppiVar8 = &local_78;
      }
      local_7c = (int *)((int)*ppiVar8 + -1);
      ppiVar8 = &local_84;
      if ((int)piVar13 <= (int)local_84) {
        ppiVar8 = &local_7c;
      }
      local_80 = (float)((int)*ppiVar8 + -1);
      ppiVar11 = &local_70;
      if ((int)local_70 <= (int)local_78) {
        ppiVar11 = &local_78;
      }
      local_68 = (void *)((int)*ppiVar11 + 1);
      ppiVar11 = &local_84;
      if ((int)local_84 <= (int)piVar13) {
        ppiVar11 = &local_7c;
      }
      local_78 = (int *)((int)*ppiVar11 + 1);
      if ((int)local_7c < 0) {
        local_7c = (int *)0x0;
      }
      if (*local_6c <= (int)local_68) {
        local_68 = (void *)(*local_6c + -1);
      }
      if ((int)*ppiVar8 + -1 < 0) {
        local_80 = 0.0;
      }
      if (local_6c[1] <= (int)local_78) {
        local_78 = (int *)(local_6c[1] + -1);
      }
      if ((int)local_7c <= (int)local_68) {
        do {
          local_74 = local_80;
          if ((int)local_80 <= (int)local_78) {
            do {
              piVar13 = FUN_00658540(param_4,(uint)(*local_6c * (int)local_74 + (int)local_7c));
              if (piVar13 != (int *)0x0) {
                local_70 = (int *)*piVar13;
                piVar13 = (int *)piVar13[1];
                local_84 = piVar13;
                if (local_70 != piVar13) {
                  do {
                    iVar10 = local_70[1];
                    uVar6 = iVar10 - *local_70 >> 3;
                    if (1 < uVar6) {
                      local_64 = *(float *)(iVar10 + -8);
                      local_60 = *(float *)(iVar10 + -4);
                      uVar7 = 0;
                      if (uVar6 != 0) {
                        do {
                          pfVar1 = (float *)(*local_70 + uVar7 * 8);
                          in_EAX = TryIntersectSegments2D
                                             (&local_64,pfVar1,&local_54,&local_5c,(float *)0x0,0.01
                                             );
                          if ((char)in_EAX != '\0') goto LAB_00658e6d;
                          local_64 = *pfVar1;
                          uVar7 = uVar7 + 1;
                          local_60 = pfVar1[1];
                        } while (uVar7 < uVar6);
                        piVar13 = local_84;
                      }
                    }
                    local_70 = local_70 + 4;
                  } while (local_70 != piVar13);
                }
              }
              local_74 = (float)((int)local_74 + 1);
            } while ((int)local_74 <= (int)local_78);
          }
          local_7c = (int *)((int)local_7c + 1);
        } while ((int)local_7c <= (int)local_68);
      }
      param_1 = param_1 & 0xffffffbf;
    }
    if ((param_1 & 4) != 0) {
      uVar24 = CONCAT44(1,param_8);
      fVar22 = param_5;
      piVar13 = param_6;
      fVar23 = param_7;
      fVar14 = WorldWater_GetSeaLevel((int)param_2);
      in_EAX = WorldSurface_IsSegmentAbovePlane
                         (param_2,(float)fVar14,fVar22,(float)piVar13,fVar23,(float)uVar24,
                          (char)((ulonglong)uVar24 >> 0x20));
      if ((char)in_EAX == '\0') {
LAB_00658e6d:
        return in_EAX & 0xffffff00;
      }
      param_1 = param_1 & 0xfffffffb;
    }
  }
  uVar5 = NeighborhoodVisibility_TestRecursiveMidpoints
                    (param_1,param_2,param_3,param_4,param_5,(float)param_6,
                     (param_5 + param_7) * 0.5,((float)param_6 + param_8) * 0.5,param_7,param_8,
                     (float)local_40._0_4_ * 0.5,param_9,param_10);
  return uVar5;
}

