/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetTilesWithFloorFeaturesImpl. Export
   ordinal(s): 1386. Entry VA: 0x10589270. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CB3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
World_GetTilesWithFloorFeaturesImpl(int param_1,int param_2,int param_3,uint param_4,ushort param_5)

{
  void *pvVar1;
  char cVar2;
  byte bVar3;
  short sVar4;
  int *piVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  uint *puVar12;
  undefined2 local_7c;
  char local_7a;
  ushort local_78;
  char local_76;
  undefined1 local_75;
  ushort local_74;
  char local_72;
  undefined1 local_71;
  undefined4 local_70;
  void *local_6c;
  int local_68;
  int local_64;
  float local_60;
  float local_5c;
  int local_58;
  int local_54;
  uint local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  uint *local_40;
  uint *local_3c;
  uint *local_38;
  char *local_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20 [3];
  float fStack_14;
  
                    /* 0x589270  1386  World_GetTilesWithFloorFeaturesImpl */
  pvVar1 = DAT_10c700c4;
  puVar12 = (uint *)0x0;
  local_70 = 0;
  if (((DAT_10c700c4 == (void *)0x0) ||
      (piVar5 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), piVar5 == (int *)0x0)) ||
     (local_6c = (void *)piVar5[0xa6], local_6c == (void *)0x0)) {
    return 0;
  }
  local_64 = *(int *)((int)pvVar1 + 0x74);
  iVar7 = piVar5[0x5d];
  local_68 = piVar5[0x5e];
  iVar9 = piVar5[0x60];
  local_7c._0_1_ = 0xff;
  local_7c._1_1_ = 0xff;
  local_7a = (char)piVar5[0x5f];
  puVar10 = (uint *)0x0;
  local_40 = (uint *)0x0;
  local_3c = (uint *)0x0;
  local_38 = (uint *)0x0;
  local_34 = "Scripting/WorldHost";
  local_58 = iVar7;
  local_54 = iVar9;
  if (local_7a <= iVar9) {
    do {
      local_7c._0_1_ = 0;
      if (0 < iVar7) {
        do {
          local_7c = (ushort)(byte)local_7c;
          puVar10 = puVar12;
          if (0 < local_68) {
            do {
              uVar6 = FUN_1007bb20(piVar5,(char *)&local_7c,param_4,param_5);
              if ((char)uVar6 == '\0') {
                puVar12 = puVar10;
                if (((param_4 >> 2 & 1) != 0) && (local_64 != 0)) {
                  local_74 = local_7c;
                  local_72 = local_7a;
                  local_71 = 1;
                  sVar4 = FUN_10110540(local_6c,(char *)&local_74,param_3,'\x01');
                  if (sVar4 == 0) {
                    FUN_10076a80(piVar5,(float)(int)(char)(byte)local_7c,(float)(int)local_7c._1_1_,
                                 &local_60,&local_5c);
                    fStack_28 = local_5c;
                    fStack_24 = local_60;
                    uStack_2c = 0;
                    local_30 = local_60;
                    local_20[0] = local_60;
                    local_20[1] = 0.0;
                    local_20[2] = local_5c;
                    fStack_14 = local_60;
                    uVar8 = FUN_10347290(local_20,piVar5,'\x01','\0');
                    if ((char)uVar8 != '\0') {
                      uVar6 = (int)local_7c._1_1_ << 0x10 | (int)(char)(byte)local_7c;
                      uVar11 = (int)uVar6 >> 0x1f | (int)local_7a & 0xffffU;
                      local_48 = uVar6;
                      local_44 = uVar11;
                      if (puVar10 < local_38) goto LAB_105894ca;
                      puVar12 = &local_48;
                      goto LAB_105894e2;
                    }
                  }
                }
              }
              else {
                local_78 = local_7c;
                local_76 = local_7a;
                local_75 = 1;
                iVar7 = FUN_10110540(local_6c,(char *)&local_78,param_3,'\x01');
                uVar6 = (int)local_7c._1_1_ << 0x10 | (int)(char)(byte)local_7c;
                uVar11 = iVar7 << 0x10 | (int)local_7a & 0xffffU | (int)uVar6 >> 0x1f;
                local_50 = uVar6;
                local_4c = uVar11;
                if (puVar10 < local_38) {
LAB_105894ca:
                  local_3c = puVar10 + 2;
                  puVar12 = local_3c;
                  if (puVar10 != (uint *)0x0) {
                    *puVar10 = uVar6;
                    puVar10[1] = uVar11;
                  }
                }
                else {
                  puVar12 = &local_50;
LAB_105894e2:
                  FUN_10036a00(&local_40,puVar10,puVar12);
                  puVar12 = local_3c;
                }
              }
              cVar2 = local_7c._1_1_ + '\x01';
              local_7c = CONCAT11(cVar2,(byte)local_7c);
              iVar7 = local_58;
              puVar10 = puVar12;
            } while (cVar2 < local_68);
          }
          bVar3 = (byte)local_7c + 1;
          iVar9 = local_54;
          local_7c._0_1_ = bVar3;
        } while ((char)bVar3 < iVar7);
      }
      puVar10 = local_40;
      local_7a = local_7a + '\x01';
    } while (local_7a <= iVar9);
    if (local_40 != puVar12) {
      piVar5 = (int *)FUN_1055b120();
      iVar7 = (int)puVar12 - (int)puVar10 >> 3;
      (**(code **)(*piVar5 + 0x88))(&local_70,iVar7);
      (**(code **)(*piVar5 + 0xa0))(&local_78,puVar10,0,iVar7);
    }
  }
  uVar8 = local_70;
  if (puVar10 != (uint *)0x0) {
    FUN_10918e90((int)puVar10);
  }
  return uVar8;
}

