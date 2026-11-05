/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_StoreInventoryImpl. Export
   ordinal(s): 412. Entry VA: 0x10787910. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600117C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

ulonglong __cdecl DownloadContent_StoreInventoryImpl(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  byte bVar2;
  char cVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  void *pvVar7;
  int iVar8;
  int *unaff_EBX;
  int *unaff_ESI;
  undefined **ppuVar9;
  int *unaff_EDI;
  ulonglong uVar10;
  undefined4 uStack_134;
  int **ppiVar11;
  int *local_11c;
  int *piStack_118;
  int aiStack_114 [2];
  void *pvStack_10c;
  int iStack_108;
  int aiStack_104 [2];
  int *local_fc;
  undefined **local_f8;
  undefined4 *local_f4;
  undefined4 *local_f0;
  undefined **local_e8;
  undefined **local_e4;
  undefined4 *puStack_e0;
  undefined1 local_d8 [4];
  int aiStack_d4 [7];
  int *piStack_b8;
  undefined1 auStack_b4 [20];
  undefined1 auStack_a0 [144];
  undefined4 uStack_10;
  
                    /* 0x787910  412  DownloadContent_StoreInventoryImpl */
  piVar4 = (int *)FUN_1055b120();
  local_11c = (int *)0x10b58c98;
  local_fc = piVar4;
  FUN_10727810(&local_e8,&local_11c);
  uVar5 = FUN_10784010(piVar4,param_1);
  if ((char)uVar5 == '\0') {
    if (local_e8 != (undefined **)0x0) {
      FUN_10918e90((int)local_e8);
    }
    return 0;
  }
  local_11c = (int *)0x10b58c6c;
  FUN_10727810(&local_f8,&local_11c);
  for (ppuVar9 = local_e8; ppuVar9 != local_e4; ppuVar9 = ppuVar9 + 4) {
    uVar6 = FUN_10788380((uint)ppuVar9);
    puVar1 = local_f4;
    if ((char)uVar6 != '\0') {
      if (local_f4 < local_f0) {
        puVar1 = local_f4 + 4;
        if (local_f4 != (undefined4 *)0x0) {
          *local_f4 = *ppuVar9;
          local_f4[1] = ppuVar9[1];
          local_f4[2] = ppuVar9[2];
          local_f4[3] = ppuVar9[3];
        }
      }
      else {
        uStack_134 = 0x107879dc;
        FUN_104befa0(&local_f8,local_f4,ppuVar9);
        puVar1 = local_f4;
      }
    }
    local_f4 = puVar1;
  }
  local_11c = (int *)0x10b58c44;
  FUN_10727810(local_d8,&local_11c);
  ppiVar11 = &local_11c;
  uStack_134 = param_2;
  (**(code **)(*piVar4 + 0x68))();
  if (0 < (int)unaff_EDI) {
    FUN_107a2c60(&local_e4,pvStack_10c,(int)((int)pvStack_10c + (int)unaff_EDI * 8));
  }
  FUN_10914090(aiStack_d4,0,0,"Scratch/DownloadContent/MemoryStream");
  FUN_10913a70(aiStack_d4,1,1.0);
  FUN_105cc2a0(&stack0xfffffedc,aiStack_d4,1);
  (**(code **)(*local_11c + 0x24))();
  bVar2 = FUN_10912b90(unaff_EBX,0,(int)piStack_118);
  FUN_105ca960(&stack0xfffffed8,bVar2);
  piVar4 = (int *)0x0;
  (**(code **)(*unaff_EBX + 0x24))();
  bVar2 = FUN_10912b90(unaff_ESI,0,(int)local_11c);
  FUN_105ca960(&stack0xfffffed4,bVar2);
  (**(code **)(*unaff_ESI + 0x24))();
  bVar2 = FUN_10912b90(unaff_EDI,0,(int)unaff_EBX);
  FUN_105ca960(&stack0xfffffed0,bVar2);
  (**(code **)(*unaff_EDI + 0x24))();
  bVar2 = FUN_10912b90((int *)ppiVar11,0,(int)unaff_ESI);
  FUN_105ca960(&uStack_134,bVar2);
  pvVar7 = (void *)FUN_1072a1a0();
  uVar6 = FUN_1072aec0(pvVar7,(int)&uStack_134,aiStack_104,aiStack_114,&local_f4);
  if ((char)uVar6 == '\0') {
    FUN_105ca900((int)&uStack_134);
    local_e4 = &PTR_FUN_10b8ad10;
    if (puStack_e0 != (undefined4 *)0x0) {
      FUN_10913a30(puStack_e0);
    }
    local_e4 = &PTR_LAB_10aafee4;
    if (local_f4 != (undefined4 *)0x0) {
      FUN_10918e90((int)local_f4);
    }
    if (aiStack_114[0] != 0) {
      FUN_10918e90(aiStack_114[0]);
    }
    if (aiStack_104[0] != 0) {
      FUN_10918e90(aiStack_104[0]);
      return 0;
    }
  }
  else {
    FUN_105c9b50(auStack_a0,0);
    uVar5 = FUN_1078e350(aiStack_114,auStack_a0);
    if ((char)uVar5 == '\0') {
      FUN_105c9800((int)auStack_a0);
      FUN_105ca900((int)&uStack_134);
      local_e4 = &PTR_FUN_10b8ad10;
      if (puStack_e0 != (undefined4 *)0x0) {
        FUN_10913a30(puStack_e0);
      }
      local_e4 = &PTR_LAB_10aafee4;
      if (local_f4 != (undefined4 *)0x0) {
        FUN_10918e90((int)local_f4);
      }
      if (aiStack_114[0] != 0) {
        FUN_10918e90(aiStack_114[0]);
      }
      if (aiStack_104[0] != 0) {
        FUN_10918e90(aiStack_104[0]);
        return 0;
      }
    }
    else {
      local_11c = DAT_10c8de94;
      FUN_108e50d0();
      FUN_105ca870(&piStack_b8);
      uVar5 = FUN_10790830(local_11c,&piStack_b8);
      if ((char)uVar5 == '\0') {
        FUN_105ca900((int)&piStack_b8);
        FUN_105c9800((int)auStack_a0);
        FUN_105ca900((int)&uStack_134);
        local_e4 = &PTR_FUN_10b8ad10;
        if (puStack_e0 != (undefined4 *)0x0) {
          FUN_10913a30(puStack_e0);
        }
        local_e4 = &PTR_LAB_10aafee4;
        if (local_f4 != (undefined4 *)0x0) {
          FUN_10918e90((int)local_f4);
        }
        if (aiStack_114[0] != 0) {
          FUN_10918e90(aiStack_114[0]);
        }
        if (aiStack_104[0] != 0) {
          FUN_10918e90(aiStack_104[0]);
          return 0;
        }
      }
      else {
        FUN_107cbbb0(aiStack_114,piStack_b8);
        FUN_105ca900((int)&piStack_b8);
        FUN_105cb330((int)&uStack_134);
        FUN_1006ca40(&uStack_134);
        (**(code **)(*piStack_118 + 0x70))(uStack_10,&local_11c,&piStack_118);
        cVar3 = (*(code *)local_f0[0xe])(unaff_EDI,unaff_ESI);
        if (cVar3 == '\0') {
          FUN_105c9800((int)auStack_b4);
          FUN_105ca900((int)&stack0xfffffeb8);
          local_f8 = &PTR_FUN_10b8ad10;
          if (local_f4 != (undefined4 *)0x0) {
            FUN_10913a30(local_f4);
          }
          local_f8 = &PTR_LAB_10aafee4;
          if (iStack_108 != 0) {
            FUN_10918e90(iStack_108);
          }
          if (unaff_EDI != (int *)0x0) {
            FUN_10918e90((int)unaff_EDI);
          }
          if (piStack_118 != (int *)0x0) {
            FUN_10918e90((int)piStack_118);
            return 0;
          }
        }
        else {
          FUN_105cb330((int)&stack0xfffffeb8);
          FUN_1006ca40(&stack0xfffffeb8);
          cVar3 = FUN_105cb8c0(&piStack_118,(int)&stack0xfffffeb8);
          if (cVar3 == '\0') {
            FUN_105c9800((int)auStack_b4);
            FUN_105ca900((int)&stack0xfffffeb8);
            FUN_1001e1d0(&local_f8);
            if (iStack_108 != 0) {
              FUN_10918e90(iStack_108);
            }
            if (unaff_EDI != (int *)0x0) {
              FUN_10918e90((int)unaff_EDI);
            }
            if (piStack_118 != (int *)0x0) {
              FUN_10918e90((int)piStack_118);
              return 0;
            }
          }
          else {
            FUN_105cb330((int)&stack0xfffffeb8);
            FUN_1006ca40(&stack0xfffffeb8);
            cVar3 = FUN_105cb8c0(&stack0xfffffed8,(int)&stack0xfffffeb8);
            if (cVar3 == '\0') {
              FUN_105c9800((int)auStack_b4);
              FUN_105ca900((int)&stack0xfffffeb8);
              FUN_1001e1d0(&local_f8);
              if (iStack_108 != 0) {
                FUN_10918e90(iStack_108);
              }
              if (unaff_EDI != (int *)0x0) {
                FUN_10918e90((int)unaff_EDI);
              }
              if (piStack_118 != (int *)0x0) {
                FUN_10918e90((int)piStack_118);
                return 0;
              }
            }
            else {
              FUN_105cb330((int)&stack0xfffffeb8);
              FUN_1006ca40(&stack0xfffffeb8);
              cVar3 = FUN_107273c0(&iStack_108,&stack0xfffffeb8);
              if (cVar3 != '\0') {
                iVar8 = FUN_107744c0();
                pvVar7 = (void *)FUN_107742c0(iVar8);
                uVar10 = FUN_1079f410(pvVar7,piVar4);
                FUN_105c9800((int)auStack_b4);
                FUN_105ca900((int)&stack0xfffffeb8);
                FUN_1001e1d0(&local_f8);
                if (iStack_108 != 0) {
                  FUN_10918e90(iStack_108);
                }
                if (unaff_EDI != (int *)0x0) {
                  FUN_10918e90((int)unaff_EDI);
                }
                if (piStack_118 != (int *)0x0) {
                  FUN_10918e90((int)piStack_118);
                }
                return uVar10;
              }
              FUN_105c9800((int)auStack_b4);
              FUN_105ca900((int)&stack0xfffffeb8);
              FUN_1001e1d0(&local_f8);
              if (iStack_108 != 0) {
                FUN_10918e90(iStack_108);
              }
              if (unaff_EDI != (int *)0x0) {
                FUN_10918e90((int)unaff_EDI);
              }
              if (piStack_118 != (int *)0x0) {
                FUN_10918e90((int)piStack_118);
              }
            }
          }
        }
      }
    }
  }
  return 0;
}

