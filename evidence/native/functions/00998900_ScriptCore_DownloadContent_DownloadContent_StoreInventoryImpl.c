/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Fresh ABI qualification: managed token0600009B has THREE array inputs, not the
   two inferred parameters below. Indirect host conversion confused the decompiler;
   unrecovered EBX/ESI/EDI and param_2 are not a fourth implicit input. Read original
   instructions.998F84 calls9B0280;998F90/92 save EAX/EDX,998FDF/E2 restore them
   after cleanup. 9B0280 writes B4DD716B/group0 under its allocated ID, or returns0.
   Full transitive component/remap/allocation/IO parity is not supplied by this C. */

/* Verified PC 1.67 registration table at 0x01181658 (original PC 1.67 TS3W.exe).
   ScriptCore.DownloadContent::DownloadContent_StoreInventoryImpl [assembly=ScriptCore
   token=0x0600009B; pKeyTable: System.Byte[], pIdTable: System.UInt64[], pScriptData:
   System.Byte[]; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

ulonglong ScriptCore_DownloadContent__DownloadContent_StoreInventoryImpl
                    (undefined4 param_1,undefined1 *param_2)

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
  undefined1 *puStack_134;
  int **ppiVar11;
  int *piStack_11c;
  int *piStack_118;
  int aiStack_114 [2];
  void *pvStack_10c;
  int iStack_108;
  int aiStack_104 [2];
  int *piStack_fc;
  undefined **ppuStack_f8;
  undefined4 *puStack_f4;
  undefined4 *puStack_f0;
  undefined **ppuStack_e8;
  undefined **ppuStack_e4;
  undefined4 *puStack_e0;
  undefined1 auStack_d8 [4];
  int aiStack_d4 [7];
  int *piStack_b8;
  undefined1 auStack_b4 [20];
  undefined1 auStack_a0 [144];
  undefined4 uStack_10;
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piStack_11c = (int *)0x1049f9c;
  piStack_fc = piVar4;
  FUN_007d9500(&ppuStack_e8,&piStack_11c);
  uVar5 = FUN_00994f40(piVar4,param_1);
  if ((char)uVar5 == '\0') {
    if (ppuStack_e8 != (undefined **)0x0) {
      FUN_004e44e0((int)ppuStack_e8);
    }
    return 0;
  }
  piStack_11c = (int *)0x1049f70;
  FUN_007d9500(&ppuStack_f8,&piStack_11c);
  for (ppuVar9 = ppuStack_e8; ppuVar9 != ppuStack_e4; ppuVar9 = ppuVar9 + 4) {
    uVar6 = FUN_00999380((uint)ppuVar9);
    puVar1 = puStack_f4;
    if ((char)uVar6 != '\0') {
      if (puStack_f4 < puStack_f0) {
        puVar1 = puStack_f4 + 4;
        if (puStack_f4 != (undefined4 *)0x0) {
          *puStack_f4 = *ppuVar9;
          puStack_f4[1] = ppuVar9[1];
          puStack_f4[2] = ppuVar9[2];
          puStack_f4[3] = ppuVar9[3];
        }
      }
      else {
        puStack_134 = &LAB_009989cc;
        FUN_00cca0b0(&ppuStack_f8,puStack_f4,ppuVar9);
        puVar1 = puStack_f4;
      }
    }
    puStack_f4 = puVar1;
  }
  piStack_11c = (int *)0x1049f48;
  FUN_007d9500(auStack_d8,&piStack_11c);
  ppiVar11 = &piStack_11c;
  puStack_134 = param_2;
  (**(code **)(*piVar4 + 0x68))();
  if (0 < (int)unaff_EDI) {
    FUN_007def60(&ppuStack_e4,pvStack_10c,(int)((int)pvStack_10c + (int)unaff_EDI * 8));
  }
  FUN_004df460(aiStack_d4,0,0,"Scratch/DownloadContent/MemoryStream");
  FUN_004dee40(aiStack_d4,1,1.0);
  FUN_007d93e0(&stack0xfffffedc,aiStack_d4,1);
  (**(code **)(*piStack_11c + 0x24))();
  bVar2 = FUN_004ddf70(unaff_EBX,0,(int)piStack_118);
  FUN_007d79f0(&stack0xfffffed8,bVar2);
  piVar4 = (int *)0x0;
  (**(code **)(*unaff_EBX + 0x24))();
  bVar2 = FUN_004ddf70(unaff_ESI,0,(int)piStack_11c);
  FUN_007d79f0(&stack0xfffffed4,bVar2);
  (**(code **)(*unaff_ESI + 0x24))();
  bVar2 = FUN_004ddf70(unaff_EDI,0,(int)unaff_EBX);
  FUN_007d79f0(&stack0xfffffed0,bVar2);
  (**(code **)(*unaff_EDI + 0x24))();
  bVar2 = FUN_004ddf70((int *)ppiVar11,0,(int)unaff_ESI);
  FUN_007d79f0(&puStack_134,bVar2);
  pvVar7 = (void *)FUN_00937570();
  uVar6 = FUN_00938290(pvVar7,(int)&puStack_134,aiStack_104,aiStack_114,&puStack_f4);
  if ((char)uVar6 == '\0') {
    FUN_007d7990((int)&puStack_134);
    ppuStack_e4 = &PTR_FUN_00fb6c00;
    if (puStack_e0 != (undefined4 *)0x0) {
      FUN_004dee00(puStack_e0);
    }
    ppuStack_e4 = &PTR_LAB_00faaa04;
    if (puStack_f4 != (undefined4 *)0x0) {
      FUN_004e44e0((int)puStack_f4);
    }
    if (aiStack_114[0] != 0) {
      FUN_004e44e0(aiStack_114[0]);
    }
    if (aiStack_104[0] != 0) {
      FUN_004e44e0(aiStack_104[0]);
      return 0;
    }
  }
  else {
    FUN_007d6be0(auStack_a0,0);
    uVar5 = FUN_0099f220(aiStack_114,auStack_a0);
    if ((char)uVar5 == '\0') {
      FUN_007d6890((int)auStack_a0);
      FUN_007d7990((int)&puStack_134);
      ppuStack_e4 = &PTR_FUN_00fb6c00;
      if (puStack_e0 != (undefined4 *)0x0) {
        FUN_004dee00(puStack_e0);
      }
      ppuStack_e4 = &PTR_LAB_00faaa04;
      if (puStack_f4 != (undefined4 *)0x0) {
        FUN_004e44e0((int)puStack_f4);
      }
      if (aiStack_114[0] != 0) {
        FUN_004e44e0(aiStack_114[0]);
      }
      if (aiStack_104[0] != 0) {
        FUN_004e44e0(aiStack_104[0]);
        return 0;
      }
    }
    else {
      piStack_11c = DAT_011ea6a4;
      FUN_004afe80();
      FUN_007d7900(&piStack_b8);
      uVar5 = FUN_009a16e0(piStack_11c,&piStack_b8);
      if ((char)uVar5 == '\0') {
        FUN_007d7990((int)&piStack_b8);
        FUN_007d6890((int)auStack_a0);
        FUN_007d7990((int)&puStack_134);
        ppuStack_e4 = &PTR_FUN_00fb6c00;
        if (puStack_e0 != (undefined4 *)0x0) {
          FUN_004dee00(puStack_e0);
        }
        ppuStack_e4 = &PTR_LAB_00faaa04;
        if (puStack_f4 != (undefined4 *)0x0) {
          FUN_004e44e0((int)puStack_f4);
        }
        if (aiStack_114[0] != 0) {
          FUN_004e44e0(aiStack_114[0]);
        }
        if (aiStack_104[0] != 0) {
          FUN_004e44e0(aiStack_104[0]);
          return 0;
        }
      }
      else {
        FUN_009daad0(aiStack_114,piStack_b8);
        FUN_007d7990((int)&piStack_b8);
        FUN_007d8470((int)&puStack_134);
        FUN_005bee40(&puStack_134);
        (**(code **)(*piStack_118 + 0x70))(uStack_10,&piStack_11c,&piStack_118);
        cVar3 = (*(code *)puStack_f0[0xe])(unaff_EDI,unaff_ESI);
        if (cVar3 == '\0') {
          FUN_007d6890((int)auStack_b4);
          FUN_007d7990((int)&stack0xfffffeb8);
          ppuStack_f8 = &PTR_FUN_00fb6c00;
          if (puStack_f4 != (undefined4 *)0x0) {
            FUN_004dee00(puStack_f4);
          }
          ppuStack_f8 = &PTR_LAB_00faaa04;
          if (iStack_108 != 0) {
            FUN_004e44e0(iStack_108);
          }
          if (unaff_EDI != (int *)0x0) {
            FUN_004e44e0((int)unaff_EDI);
          }
          if (piStack_118 != (int *)0x0) {
            FUN_004e44e0((int)piStack_118);
            return 0;
          }
        }
        else {
          FUN_007d8470((int)&stack0xfffffeb8);
          FUN_005bee40(&stack0xfffffeb8);
          cVar3 = FUN_007d8a00(&piStack_118,(int)&stack0xfffffeb8);
          if (cVar3 == '\0') {
            FUN_007d6890((int)auStack_b4);
            FUN_007d7990((int)&stack0xfffffeb8);
            FUN_00455b30(&ppuStack_f8);
            if (iStack_108 != 0) {
              FUN_004e44e0(iStack_108);
            }
            if (unaff_EDI != (int *)0x0) {
              FUN_004e44e0((int)unaff_EDI);
            }
            if (piStack_118 != (int *)0x0) {
              FUN_004e44e0((int)piStack_118);
              return 0;
            }
          }
          else {
            FUN_007d8470((int)&stack0xfffffeb8);
            FUN_005bee40(&stack0xfffffeb8);
            cVar3 = FUN_007d8a00(&stack0xfffffed8,(int)&stack0xfffffeb8);
            if (cVar3 == '\0') {
              FUN_007d6890((int)auStack_b4);
              FUN_007d7990((int)&stack0xfffffeb8);
              FUN_00455b30(&ppuStack_f8);
              if (iStack_108 != 0) {
                FUN_004e44e0(iStack_108);
              }
              if (unaff_EDI != (int *)0x0) {
                FUN_004e44e0((int)unaff_EDI);
              }
              if (piStack_118 != (int *)0x0) {
                FUN_004e44e0((int)piStack_118);
                return 0;
              }
            }
            else {
              FUN_007d8470((int)&stack0xfffffeb8);
              FUN_005bee40(&stack0xfffffeb8);
              cVar3 = FUN_00934880(&iStack_108,&stack0xfffffeb8);
              if (cVar3 != '\0') {
                iVar8 = FUN_00982e60();
                pvVar7 = (void *)FUN_00982c40(iVar8);
                uVar10 = FUN_009b0280(pvVar7,piVar4);
                FUN_007d6890((int)auStack_b4);
                FUN_007d7990((int)&stack0xfffffeb8);
                FUN_00455b30(&ppuStack_f8);
                if (iStack_108 != 0) {
                  FUN_004e44e0(iStack_108);
                }
                if (unaff_EDI != (int *)0x0) {
                  FUN_004e44e0((int)unaff_EDI);
                }
                if (piStack_118 != (int *)0x0) {
                  FUN_004e44e0((int)piStack_118);
                }
                return uVar10;
              }
              FUN_007d6890((int)auStack_b4);
              FUN_007d7990((int)&stack0xfffffeb8);
              FUN_00455b30(&ppuStack_f8);
              if (iStack_108 != 0) {
                FUN_004e44e0(iStack_108);
              }
              if (unaff_EDI != (int *)0x0) {
                FUN_004e44e0((int)unaff_EDI);
              }
              if (piStack_118 != (int *)0x0) {
                FUN_004e44e0((int)piStack_118);
              }
            }
          }
        }
      }
    }
  }
  return 0;
}

