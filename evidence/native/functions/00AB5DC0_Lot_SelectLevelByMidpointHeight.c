/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: ordinary lot level selector, used by World_GetLotLocationImpl through 00adc860. MOV
   EAX/LEA EAX exits and RET8 prove a signed integer EAX return; old float return corrected. Signed
   min/max levels at lot+17c/+180; downward walk samples level heights, selects L or L+1 across
   midpoint to previous height. Normal branch also guards Y with terrainHeight+0.075 and clamps
   level-zero sampled height upward to that bound. Special branch (+408==1/+40c==50 or
   +4b0/predicate) clamps level-zero midpoint to previousHeight-1.5 or previousHeight-0.375. Nonzero
   validateSurface invokes cell-mask and lower-level predicates; missing height object/no candidate
   returns minimum. Internal record is LotXZLevel {float x;float z;int level}; input is four-float
   local-position vector. Remaining decompiler casts '(float)level', comparison with 1.4013e-45 and
   int(float)level returns are artifacts: original TEST/CMP EBX,1 at 00ab6109 and MOV EAX,EBX exits
   perform integer operations with no float conversion. Special flag/property identities remain
   unresolved. */

int __thiscall
Lot_SelectLevelByMidpointHeight(void *param_1,float *localPosition,char validateSurface)

{
  uint uVar1;
  undefined4 uVar2;
  float fVar3;
  int level;
  float10 fVar4;
  float fVar5;
  char local_60;
  undefined1 local_5f;
  char local_5e;
  char local_5c;
  undefined1 local_5b;
  char local_5a;
  int local_58;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  LotXZLevel local_3c;
  LotXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_58 = *(int *)((int)param_1 + 0x17c);
  level = *(int *)((int)param_1 + 0x180);
  if (*(int *)((int)param_1 + 0x290) != 0) {
    local_54 = DAT_00fab220;
    local_50 = DAT_00fc24d8;
    local_3c.x = *localPosition;
    local_30.z = localPosition[1];
    local_3c.z = localPosition[2];
    fStack_24 = localPosition[3];
    local_3c.level = 0;
    local_30.x = local_3c.x;
    local_30.level = (int)local_3c.z;
    if (((*(int *)((int)param_1 + 0x408) == 1) && (*(int *)((int)param_1 + 0x40c) == 0x50)) ||
       ((local_20 = local_3c.x, fStack_1c = local_30.z, fStack_18 = local_3c.z,
        fStack_14 = fStack_24, *(char *)((int)param_1 + 0x4b0) != '\0' &&
        (uVar1 = Lot_TestNextLevelAtLocalLocation(param_1,&local_3c,1), (char)uVar1 == '\0')))) {
      local_20 = *localPosition;
      fStack_1c = localPosition[1];
      fStack_18 = localPosition[2];
      fStack_14 = localPosition[3];
      if (local_58 <= level) {
        do {
          local_3c.level = level;
          fVar4 = LotLevelHeight_SampleLocalPosition(*(void **)((int)param_1 + 0x290),&local_3c);
          local_4c = (float)fVar4;
          if (fVar4 <= (float10)fStack_1c) {
            fVar5 = (local_4c + local_54) * _DAT_00f9b5b4;
            fVar3 = fVar5;
            if ((float)level == 0.0) {
              local_44 = DAT_0103fd68;
              if (*(char *)((int)param_1 + 0x4b0) != '\0') {
                local_44 = _DAT_01066028;
              }
              local_44 = local_54 - local_44;
              local_50 = fVar5 - local_44;
              fVar3 = (float)(~((int)local_50 >> 0x1f) & (uint)fVar5 |
                             (uint)local_44 & (int)local_50 >> 0x1f);
              local_48 = fVar5;
              local_40 = fVar3;
            }
            local_30.x = local_3c.x;
            local_30.z = local_3c.z;
            if (fVar3 < fStack_1c) {
              local_5e = (char)level + '\x01';
              local_30.level = level + 1;
              if (((validateSurface == '\0') || ((float)level == 0.0)) ||
                 ((local_60 = (char)(int)local_3c.x, local_5f = (char)(int)local_3c.z,
                  uVar1 = LotLevelSurface_TestCellMask
                                    (*(void **)((int)param_1 + 0x290),&local_60,0xf,1),
                  (char)uVar1 != '\0' &&
                  (uVar1 = Lot_TestLowerLevelPropertyAtPosition(param_1,&local_30),
                  (char)uVar1 == '\0')))) goto LAB_00ab61a2;
            }
            else if ((validateSurface == '\0') ||
                    (((local_5c = (char)(int)local_3c.x, local_5b = (char)(int)local_3c.z,
                      local_5a = (char)level, local_30.level = level,
                      uVar2 = FUN_00624bc0((int)param_1), (char)uVar2 != '\0' &&
                      ((float)level == 1.4013e-45)) ||
                     (uVar1 = LotLevelSurface_TestCellMask
                                        (*(void **)((int)param_1 + 0x290),&local_5c,0xf,1),
                     (char)uVar1 != '\0')))) {
              return (int)(float)level;
            }
          }
          local_54 = local_4c;
          level = level + -1;
          if (level < local_58) {
            return local_58;
          }
        } while( true );
      }
    }
    else {
      if (((*(void **)((int)param_1 + 0x294) != (void *)0x0) && (0.0 <= local_3c.x)) &&
         ((local_3c.x <= (float)*(int *)((int)param_1 + 0x174) &&
          ((0.0 <= local_3c.z && (local_3c.z <= (float)*(int *)((int)param_1 + 0x178))))))) {
        fVar4 = LotTerrainHeight_SampleLocalXZ
                          (*(void **)((int)param_1 + 0x294),local_3c.x,local_3c.z);
        local_50 = (float)(fVar4 + (float10)_DAT_01183ee4);
      }
      local_20 = *localPosition;
      fStack_1c = localPosition[1];
      fStack_18 = localPosition[2];
      fStack_14 = localPosition[3];
      if (local_58 <= level) {
        do {
          local_3c.level = level;
          fVar4 = LotLevelHeight_SampleLocalPosition(*(void **)((int)param_1 + 0x290),&local_3c);
          local_4c = (float)fVar4;
          if ((fVar4 <= (float10)fStack_1c) && ((level < 1 || (local_50 < fStack_1c)))) {
            fVar3 = local_4c;
            if (((float)level == 0.0) && (local_4c < local_50)) {
              fVar3 = local_50;
            }
            local_30.x = local_3c.x;
            local_30.z = local_3c.z;
            if ((fVar3 + local_54) * _DAT_00f9b5b4 < fStack_1c) {
              local_5a = (char)level + '\x01';
              local_30.level = level + 1;
              if ((validateSurface == '\0') ||
                 ((local_5c = (char)(int)local_3c.x, local_5b = (char)(int)local_3c.z,
                  uVar1 = LotLevelSurface_TestCellMask
                                    (*(void **)((int)param_1 + 0x290),&local_5c,0xf,1),
                  (char)uVar1 != '\0' &&
                  (uVar1 = Lot_TestLowerLevelPropertyAtPosition(param_1,&local_30),
                  (char)uVar1 == '\0')))) {
LAB_00ab61a2:
                return level + 1;
              }
            }
            else {
              if (validateSurface == '\0') {
                return (int)(float)level;
              }
              local_60 = (char)(int)local_3c.x;
              local_5f = (char)(int)local_3c.z;
              local_5e = (char)level;
              local_30.level = level;
              uVar1 = LotLevelSurface_TestCellMask(*(void **)((int)param_1 + 0x290),&local_60,0xf,1)
              ;
              if ((char)uVar1 != '\0') {
                return (int)(float)level;
              }
            }
          }
          local_54 = local_4c;
          level = level + -1;
        } while (local_58 <= level);
      }
    }
  }
  return local_58;
}

