/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetRainPuddlesOnLotImpl. Export ordinal(s):
   1372. Entry VA: 0x1058a540. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000D01. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl World_GetRainPuddlesOnLotImpl(int param_1,int param_2,undefined4 param_3)

{
  void *pvVar1;
  char *pcVar2;
  char cVar3;
  int *in_EAX;
  int *piVar4;
  undefined3 extraout_var;
  uint uVar5;
  undefined4 uVar6;
  float *pfVar7;
  float *pfVar8;
  int iVar9;
  float *local_98;
  float *local_94;
  float *local_90;
  char *local_8c;
  int local_88;
  char *local_84;
  int local_80;
  int local_7c;
  uint local_78 [3];
  char *local_6c;
  void *local_68;
  float local_64;
  float local_60;
  float local_5c;
  int local_58;
  int *local_54;
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
  undefined4 uStack_14;
  
                    /* 0x58a540  1372  World_GetRainPuddlesOnLotImpl */
  pvVar1 = DAT_10c700c4;
  if ((((DAT_10c700c4 != (void *)0x0) &&
       (piVar4 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), in_EAX = piVar4,
       piVar4 != (int *)0x0)) && (local_58 = *(int *)((int)pvVar1 + 0x74), local_58 != 0)) &&
     (piVar4[0xa6] != 0)) {
    local_54 = piVar4;
    cVar3 = FUN_10342d80();
    in_EAX = (int *)CONCAT31(extraout_var,cVar3);
    if (cVar3 != '\0') {
      pfVar8 = (float *)0x0;
      local_98 = (float *)0x0;
      local_94 = (float *)0x0;
      local_90 = (float *)0x0;
      local_8c = "Scratch/PositionArrayForPuddleVerts";
      local_78[0] = 0;
      local_78[1] = 0;
      local_78[2] = 0;
      local_6c = "Scratch/ValidTilePartsPerLevel";
      uVar5 = FUN_100754f0(piVar4,local_78);
      if ((char)uVar5 == '\0') {
        uVar5 = FUN_10064cc0(local_78);
        return uVar5 & 0xffffff00;
      }
      pfVar7 = (float *)0x0;
      iVar9 = local_7c;
      if (-1 < piVar4[0x60]) {
        local_7c = piVar4[0x60] + 1;
        local_88 = 0;
        do {
          pvVar1 = (void *)(local_88 + local_78[0]);
          local_68 = pvVar1;
          FUN_103255b0(pvVar1,(int *)&local_84);
          if (local_84 != *(char **)(*(int *)((int)pvVar1 + 4) + *(int *)((int)pvVar1 + 8) * 4)) {
            do {
              piVar4 = local_54;
              pcVar2 = local_84;
              FUN_100bee10((int)local_54,local_84,&local_50);
              FUN_1007c560(piVar4,&local_50,&local_50);
              uVar6 = FUN_10347290(&local_50,piVar4,'\0','\0');
              pfVar7 = local_94;
              if ((char)uVar6 != '\0') {
                local_30 = local_50;
                fStack_2c = fStack_4c;
                fStack_28 = fStack_48;
                uStack_24 = uStack_44;
                local_5c = local_50;
                if (pfVar8 < local_90) {
                  local_94 = pfVar8 + 1;
                  if (pfVar8 != (float *)0x0) {
                    *pfVar8 = local_50;
                  }
                }
                else {
                  FUN_10084550(&local_98,pfVar8,&local_5c);
                }
                local_40 = local_50;
                fStack_3c = fStack_4c;
                fStack_38 = fStack_48;
                uStack_34 = uStack_44;
                local_64 = fStack_4c;
                if (local_94 < local_90) {
                  pfVar8 = local_94 + 1;
                  if (local_94 != (float *)0x0) {
                    *local_94 = fStack_4c;
                  }
                }
                else {
                  FUN_10084550(&local_98,local_94,&local_64);
                  pfVar8 = local_94;
                }
                local_94 = pfVar8;
                local_20 = local_50;
                fStack_1c = fStack_4c;
                fStack_18 = fStack_48;
                uStack_14 = uStack_44;
                local_60 = fStack_48;
                if (local_94 < local_90) {
                  pfVar8 = local_94 + 1;
                  pfVar7 = pfVar8;
                  if (local_94 != (float *)0x0) {
                    *local_94 = fStack_48;
                  }
                }
                else {
                  FUN_10084550(&local_98,local_94,&local_60);
                  pfVar8 = local_94;
                  pfVar7 = local_94;
                }
              }
              local_94 = pfVar7;
              local_84 = *(char **)(pcVar2 + 4);
              while (local_84 == (char *)0x0) {
                piVar4 = (int *)(local_80 + 4);
                local_80 = local_80 + 4;
                local_84 = (char *)*piVar4;
              }
            } while (local_84 !=
                     *(char **)(*(int *)((int)local_68 + 4) + *(int *)((int)local_68 + 8) * 4));
          }
          pfVar7 = local_98;
          local_88 = local_88 + 0x20;
          local_7c = local_7c + -1;
        } while (local_7c != 0);
        iVar9 = 0;
        if (local_98 != pfVar8) {
          piVar4 = (int *)FUN_1055b120();
          iVar9 = (int)pfVar8 - (int)pfVar7 >> 2;
          (**(code **)(*piVar4 + 0x90))(param_3,iVar9);
          (**(code **)(*piVar4 + 0xa8))(param_3,pfVar7,0,iVar9);
          uVar6 = FUN_10064cc0((uint *)&local_90);
          if (pfVar7 != (float *)0x0) {
            uVar6 = FUN_10918e90((int)pfVar7);
          }
          return CONCAT31((int3)((uint)uVar6 >> 8),1);
        }
      }
      local_7c = iVar9;
      in_EAX = (int *)FUN_10064cc0(local_78);
      if (pfVar7 != (float *)0x0) {
        in_EAX = (int *)FUN_10918e90((int)pfVar7);
      }
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

