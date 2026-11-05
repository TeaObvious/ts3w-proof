/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl four words. Complete rectangle/diamond perimeter
   generation; signed compact X/Z/level and orientation-specific wall locators. Host selected
   rectangle unit edges cover only one profile; do not infer full diamond topology from a
   rectangular loop. */

void __cdecl
BasementRegion_EnumeratePerimeterLocators(char *param_1,char *param_2,char param_3,void *param_4)

{
  char cVar1;
  char cVar2;
  float *pfVar3;
  char cVar4;
  int iVar5;
  char cVar6;
  char cVar7;
  uint uVar8;
  int iVar9;
  float local_94;
  undefined2 local_90;
  char local_89;
  int local_88;
  int local_84;
  int local_80;
  char local_79;
  float local_78;
  float local_74;
  float local_70;
  undefined4 local_6c;
  int local_68;
  float local_64;
  undefined4 local_60;
  int local_5c;
  int local_58;
  float local_54;
  int local_50;
  int local_4c;
  int local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  int local_2c;
  float local_28;
  float local_24;
  int local_20;
  float local_1c;
  float local_18;
  int local_14;
  float local_10;
  float local_c;
  int local_8;
  float local_4;
  
  cVar1 = param_1[1];
  cVar6 = *param_1;
  cVar7 = *param_2;
  cVar2 = param_2[1];
  cVar4 = param_1[2] + param_3;
  if ((cVar6 < cVar7) || (cVar1 < cVar2)) {
    local_89 = cVar6;
    local_79 = cVar7;
    if (cVar6 == cVar7) {
      if (cVar1 < cVar2) {
        local_70 = (float)(int)cVar6;
        uVar8 = (uint)(byte)(cVar2 - cVar1);
        iVar5 = (int)cVar1;
        local_64 = local_70;
        local_5c = (int)cVar4;
        local_54 = local_70;
        do {
          local_74 = (float)iVar5;
          local_78 = (float)(iVar5 + 1);
          local_58 = (int)ROUND(local_70);
          local_80 = (int)ROUND(local_74);
          local_88 = (int)ROUND(local_64);
          local_94 = (float)CONCAT13((undefined1)local_88,
                                     CONCAT12(cVar4,CONCAT11((undefined1)local_80,(char)local_58)));
          local_84 = (int)ROUND(local_78);
          pfVar3 = *(float **)((int)param_4 + 4);
          local_90 = CONCAT11((undefined1)local_5c,(undefined1)local_84);
          if (pfVar3 < *(float **)((int)param_4 + 8)) {
            *(int *)((int)param_4 + 4) = (int)pfVar3 + 6;
            if (pfVar3 != (float *)0x0) {
              *pfVar3 = local_94;
              *(undefined2 *)(pfVar3 + 1) = local_90;
            }
          }
          else {
            local_6c = local_74;
            local_68 = (int)cVar4;
            local_60 = local_78;
            FUN_00aeb900(param_4,pfVar3,&local_94);
            local_70 = local_54;
          }
          uVar8 = uVar8 - 1;
          iVar5 = iVar5 + 1;
        } while (uVar8 != 0);
        return;
      }
    }
    else if (cVar1 == cVar2) {
      if (cVar6 < cVar7) {
        local_74 = (float)(int)cVar1;
        iVar5 = (int)cVar6;
        uVar8 = (uint)(byte)(cVar7 - cVar6);
        local_78 = local_74;
        local_60 = local_74;
        local_5c = (int)cVar4;
        local_54 = local_74;
        do {
          local_70 = (float)iVar5;
          iVar5 = iVar5 + 1;
          local_64 = (float)iVar5;
          local_84 = (int)ROUND(local_70);
          local_88 = (int)ROUND(local_74);
          local_80 = (int)ROUND(local_64);
          local_94 = (float)CONCAT13((undefined1)local_80,
                                     CONCAT12(cVar4,CONCAT11((undefined1)local_88,(char)local_84)));
          local_58 = (int)ROUND(local_78);
          pfVar3 = *(float **)((int)param_4 + 4);
          local_90 = CONCAT11((undefined1)local_5c,(undefined1)local_58);
          if (pfVar3 < *(float **)((int)param_4 + 8)) {
            *(int *)((int)param_4 + 4) = (int)pfVar3 + 6;
            if (pfVar3 != (float *)0x0) {
              *pfVar3 = local_94;
              *(undefined2 *)(pfVar3 + 1) = local_90;
            }
          }
          else {
            local_6c = local_74;
            local_68 = (int)cVar4;
            FUN_00aeb900(param_4,pfVar3,&local_94);
            local_74 = local_54;
          }
          uVar8 = uVar8 - 1;
        } while (uVar8 != 0);
        return;
      }
    }
    else {
      if (cVar6 < cVar7) {
        iVar5 = (int)cVar4;
        local_54 = (float)(int)cVar1;
        local_40 = (float)(int)cVar2;
        local_74 = (float)(uint)(byte)(cVar7 - cVar6);
        local_94 = (float)(int)cVar6;
        local_38 = local_54;
        local_30 = local_40;
        local_2c = iVar5;
        local_24 = local_54;
        local_4 = local_40;
        do {
          local_1c = (float)(int)local_94;
          local_94 = (float)((int)local_94 + 1);
          local_34 = (float)(int)local_94;
          local_84 = (int)ROUND(local_1c);
          local_88 = (int)ROUND(local_54);
          local_80 = (int)ROUND(local_34);
          local_64 = (float)CONCAT13((undefined1)local_80,
                                     CONCAT12(cVar4,CONCAT11((undefined1)local_88,(char)local_84)));
          local_58 = (int)ROUND(local_38);
          local_60._0_2_ = CONCAT11(cVar4,(undefined1)local_58);
          local_50 = (int)ROUND(local_1c);
          local_48 = (int)ROUND(local_4);
          local_4c = (int)ROUND(local_34);
          local_70 = (float)CONCAT13((undefined1)local_4c,
                                     CONCAT12(cVar4,CONCAT11((undefined1)local_48,(char)local_50)));
          local_78 = (float)(int)ROUND(local_40);
          local_6c._0_2_ = CONCAT11((undefined1)local_2c,local_78._0_1_);
          pfVar3 = *(float **)((int)param_4 + 4);
          local_44 = local_4;
          local_3c = local_54;
          local_28 = local_34;
          local_20 = iVar5;
          local_18 = local_54;
          local_14 = iVar5;
          local_10 = local_1c;
          local_c = local_4;
          local_8 = iVar5;
          if (pfVar3 < *(float **)((int)param_4 + 8)) {
            *(int *)((int)param_4 + 4) = (int)pfVar3 + 6;
            if (pfVar3 != (float *)0x0) {
              *pfVar3 = local_64;
              *(undefined2 *)(pfVar3 + 1) = (undefined2)local_60;
            }
          }
          else {
            FUN_00aeb900(param_4,pfVar3,&local_64);
            cVar6 = local_89;
            cVar7 = local_79;
          }
          pfVar3 = *(float **)((int)param_4 + 4);
          if (pfVar3 < *(float **)((int)param_4 + 8)) {
            *(int *)((int)param_4 + 4) = (int)pfVar3 + 6;
            if (pfVar3 != (float *)0x0) {
              *pfVar3 = local_70;
              *(undefined2 *)(pfVar3 + 1) = (undefined2)local_6c;
            }
          }
          else {
            FUN_00aeb900(param_4,pfVar3,&local_70);
            cVar6 = local_89;
            cVar7 = local_79;
          }
          local_74 = (float)((int)local_74 - 1);
        } while (local_74 != 0.0);
      }
      if (cVar1 < cVar2) {
        iVar9 = (int)cVar4;
        local_54 = (float)(int)cVar6;
        local_94 = (float)(int)cVar7;
        uVar8 = (uint)(byte)(cVar2 - cVar1);
        iVar5 = (int)cVar1;
        local_1c = local_94;
        local_14 = iVar9;
        local_10 = local_54;
        do {
          local_40 = (float)iVar5;
          local_44 = (float)(iVar5 + 1);
          local_74 = (float)(int)ROUND(local_54);
          local_78 = (float)(int)ROUND(local_40);
          local_4c = (int)ROUND(local_10);
          local_70 = (float)CONCAT13((undefined1)local_4c,
                                     CONCAT12(cVar4,CONCAT11(local_78._0_1_,SUB41(local_74,0))));
          local_48 = (int)ROUND(local_44);
          local_6c._0_2_ = CONCAT11(cVar4,(undefined1)local_48);
          local_50 = (int)ROUND(local_94);
          local_84 = (int)ROUND(local_40);
          local_88 = (int)ROUND(local_1c);
          local_64 = (float)CONCAT13((undefined1)local_88,
                                     CONCAT12(cVar4,CONCAT11((undefined1)local_84,(char)local_50)));
          local_80 = (int)ROUND(local_44);
          pfVar3 = *(float **)((int)param_4 + 4);
          local_60._0_2_ = CONCAT11((undefined1)local_14,(undefined1)local_80);
          local_3c = local_44;
          local_38 = local_40;
          local_34 = local_54;
          local_30 = local_40;
          local_2c = iVar9;
          local_28 = local_94;
          local_24 = local_40;
          local_20 = iVar9;
          local_18 = local_44;
          local_c = local_44;
          local_8 = iVar9;
          if (pfVar3 < *(float **)((int)param_4 + 8)) {
            *(int *)((int)param_4 + 4) = (int)pfVar3 + 6;
            if (pfVar3 != (float *)0x0) {
              *pfVar3 = local_70;
              *(undefined2 *)(pfVar3 + 1) = (undefined2)local_6c;
            }
          }
          else {
            FUN_00aeb900(param_4,pfVar3,&local_70);
          }
          pfVar3 = *(float **)((int)param_4 + 4);
          if (pfVar3 < *(float **)((int)param_4 + 8)) {
            *(int *)((int)param_4 + 4) = (int)pfVar3 + 6;
            if (pfVar3 != (float *)0x0) {
              *pfVar3 = local_64;
              *(undefined2 *)(pfVar3 + 1) = (undefined2)local_60;
            }
          }
          else {
            FUN_00aeb900(param_4,pfVar3,&local_64);
          }
          uVar8 = uVar8 - 1;
          iVar5 = iVar5 + 1;
        } while (uVar8 != 0);
      }
    }
  }
  return;
}

