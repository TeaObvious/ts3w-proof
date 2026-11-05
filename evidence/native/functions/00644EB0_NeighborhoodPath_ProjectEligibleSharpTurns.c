/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* ECX filter context, stack path and dot threshold; RET8. Null or at most3 nodes produces no work.
   Saves context+70/+71, temporarily writes1/0, then restores them. Node constraint/floor/flag gates
   precede normalized incoming/outgoing dot comparison. Candidate segment intersections require
   visibility; ordered squared-distance and01159308 comparisons choose an admissible XZ replacement.
   The runtime value of01159308 is not established by this body. */

void __thiscall NeighborhoodPath_ProjectEligibleSharpTurns(void *this,int param_1,float param_2)

{
  float *pfVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  float fVar7;
  float local_88;
  int local_84;
  int *local_80;
  int *local_7c;
  float local_78;
  int *local_74;
  int *local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  int local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c;
  int *local_48;
  float local_44;
  float local_40;
  float local_3c;
  int *local_38;
  int *local_34;
  float local_30;
  int *local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  
  if ((param_1 != 0) &&
     (local_5c = *(int *)(param_1 + 0xc) - *(int *)(param_1 + 8) >> 6, 3 < local_5c)) {
    uVar2 = *(undefined1 *)((int)this + 0x70);
    uVar3 = *(undefined1 *)((int)this + 0x71);
    *(undefined1 *)((int)this + 0x70) = 1;
    *(undefined1 *)((int)this + 0x71) = 0;
    local_84 = 1;
    if (1 < local_5c + -1) {
      iVar6 = 0x40;
      do {
        pfVar1 = (float *)(iVar6 + *(int *)(param_1 + 8));
        fVar7 = pfVar1[7];
        if (((((fVar7 != 2.8026e-45) && (fVar7 != 4.2039e-45)) &&
             ((fVar7 != 1.4013e-44 || ((pfVar1[-9] != 1.4013e-45 && (pfVar1[0x17] != 1.4013e-45)))))
             ) && ((*(short *)(pfVar1 + 3) == *(short *)(pfVar1 + -0xd) ||
                   ((pfVar1[0xe] != 0.0 || (pfVar1[-2] != 0.0)))))) &&
           ((*(short *)(pfVar1 + 3) == *(short *)(pfVar1 + 0x13) ||
            ((pfVar1[0xe] != 0.0 || (pfVar1[0x1e] != 0.0)))))) {
          local_2c = (int *)pfVar1[0x10];
          local_30 = *pfVar1;
          local_34 = (int *)pfVar1[-0x10];
          local_48 = (int *)pfVar1[0x12];
          local_44 = pfVar1[2];
          local_58 = (float)local_2c - local_30;
          local_50 = local_30 - (float)local_34;
          local_38 = (int *)pfVar1[-0xe];
          local_54 = (float)local_48 - local_44;
          local_4c = local_44 - (float)local_38;
          if (((1.1920929e-07 < local_58) ||
              (((local_58 < -1.1920929e-07 || (1.1920929e-07 < local_54)) ||
               (local_54 < -1.1920929e-07)))) &&
             (((1.1920929e-07 < local_50 || (local_50 < -1.1920929e-07)) ||
              ((1.1920929e-07 < local_4c || (local_4c < -1.1920929e-07)))))) {
            FUN_00642650(&local_58,&local_58);
            FUN_00642650(&local_50,&local_50);
            if (local_4c * local_54 + local_50 * local_58 < param_2) {
              local_40 = local_30;
              local_3c = local_44;
              local_80 = local_2c;
              local_88 = DAT_01159308;
              local_78 = DAT_01159308;
              local_74 = local_34;
              local_70 = local_38;
              local_7c = local_48;
              if (1 < local_84) {
                local_14 = *(float *)(iVar6 + -0x78 + *(int *)(param_1 + 8));
                local_18 = *(float *)(iVar6 + -0x80 + *(int *)(param_1 + 8));
                local_28 = ((float)local_34 - local_18) * 10.0 + (float)local_34;
                local_24 = ((float)local_38 - local_14) * 10.0 + (float)local_38;
                uVar4 = TryIntersectSegments2D
                                  (&local_18,&local_28,&local_40,(float *)&local_80,&local_64,0.01);
                if (((char)uVar4 != '\0') &&
                   (uVar5 = PathFilter_TestSegmentVisibility
                                      (this,local_74,local_70,(int)*(short *)(pfVar1 + 3),local_64,
                                       local_60,(int)*(short *)(pfVar1 + 3)), (char)uVar5 != '\0'))
                {
                  local_88 = ((float)local_70 - local_60) * ((float)local_70 - local_60) +
                             ((float)local_74 - local_64) * ((float)local_74 - local_64);
                }
              }
              fVar7 = local_78;
              if (local_84 <= local_5c + -3) {
                local_1c = *(float *)(iVar6 + 0x88 + *(int *)(param_1 + 8));
                local_20 = *(float *)(iVar6 + 0x80 + *(int *)(param_1 + 8));
                local_10 = ((float)local_80 - local_20) * 10.0 + (float)local_80;
                local_c = ((float)local_7c - local_1c) * 10.0 + (float)local_7c;
                uVar4 = TryIntersectSegments2D
                                  ((float *)&local_74,&local_40,&local_10,&local_20,&local_6c,0.01);
                fVar7 = local_78;
                if (((char)uVar4 != '\0') &&
                   (uVar5 = PathFilter_TestSegmentVisibility
                                      (this,local_80,local_7c,(int)*(short *)(pfVar1 + 3),local_6c,
                                       local_68,(int)*(short *)(pfVar1 + 3)), fVar7 = local_78,
                   (char)uVar5 != '\0')) {
                  fVar7 = ((float)local_7c - local_68) * ((float)local_7c - local_68) +
                          ((float)local_80 - local_6c) * ((float)local_80 - local_6c);
                }
              }
              if (fVar7 <= local_88) {
                if (DAT_01159308 <= fVar7) goto LAB_00645342;
                *pfVar1 = local_6c;
                fVar7 = local_68;
              }
              else {
                *pfVar1 = local_64;
                fVar7 = local_60;
              }
              pfVar1[2] = fVar7;
            }
          }
        }
LAB_00645342:
        local_84 = local_84 + 1;
        iVar6 = iVar6 + 0x40;
      } while (local_84 < local_5c + -1);
    }
    *(undefined1 *)((int)this + 0x70) = uVar2;
    *(undefined1 *)((int)this + 0x71) = uVar3;
  }
  return;
}

