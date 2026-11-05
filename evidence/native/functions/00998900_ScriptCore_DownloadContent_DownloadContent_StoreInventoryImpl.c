/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

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


/* Verified PC 1.67 registration table at 0x01181658 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  uint arg0;
  uint arg0_00;
  uint uVar7;
  void *pvVar8;
  uint uVar9;
  int *unaff_EBX;
  int *unaff_ESI;
  undefined **ppuVar10;
  int *unaff_EDI;
  ulonglong uVar11;
  undefined1 *puStack_134;
  int **stream;
  int *piStack_11c;
  int *piStack_118;
  void *apvStack_114 [2];
  void *pvStack_10c;
  void *pvStack_108;
  void *apvStack_104 [2];
  int *piStack_fc;
  undefined **ppuStack_f8;
  undefined4 *puStack_f4;
  undefined4 *puStack_f0;
  undefined **ppuStack_e8;
  undefined **ppuStack_e4;
  undefined4 *puStack_e0;
  undefined1 auStack_d8 [4];
  undefined1 auStack_d4 [28];
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
      Memory_FreeIfNonNull(ppuStack_e8);
    }
    return 0;
  }
  piStack_11c = (int *)0x1049f70;
  FUN_007d9500(&ppuStack_f8,&piStack_11c);
  for (ppuVar10 = ppuStack_e8; ppuVar10 != ppuStack_e4; ppuVar10 = ppuVar10 + 4) {
    uVar6 = FUN_00999380((uint)ppuVar10);
    puVar1 = puStack_f4;
    if ((char)uVar6 != '\0') {
      if (puStack_f4 < puStack_f0) {
        puVar1 = puStack_f4 + 4;
        if (puStack_f4 != (undefined4 *)0x0) {
          *puStack_f4 = *ppuVar10;
          puStack_f4[1] = ppuVar10[1];
          puStack_f4[2] = ppuVar10[2];
          puStack_f4[3] = ppuVar10[3];
        }
      }
      else {
        puStack_134 = &LAB_009989cc;
        FUN_00cca0b0(&ppuStack_f8,puStack_f4,ppuVar10);
        puVar1 = puStack_f4;
      }
    }
    puStack_f4 = puVar1;
  }
  piStack_11c = (int *)0x1049f48;
  FUN_007d9500(auStack_d8,&piStack_11c);
  stream = &piStack_11c;
  puStack_134 = param_2;
  (**(code **)(*piVar4 + 0x68))();
  if (0 < (int)unaff_EDI) {
    FUN_007def60(&ppuStack_e4,pvStack_10c,(int)((int)pvStack_10c + (int)unaff_EDI * 8));
  }
  FUN_004df460(auStack_d4,0,0,"Scratch/DownloadContent/MemoryStream");
  FUN_004dee40(auStack_d4,1,1.0);
  StreamReader_Construct(apvStack_114 + -4,auStack_d4,1);
  uVar6 = (**(code **)(*piStack_11c + 0x24))();
  bVar2 = Stream_WriteUInt32(unaff_EBX,0,(uint)piStack_118);
  StreamReader_AccumulateStatus(apvStack_114 + -5,bVar2);
  piVar4 = (int *)0x0;
  arg0 = (**(code **)(*unaff_EBX + 0x24))();
  bVar2 = Stream_WriteUInt32(unaff_ESI,0,(uint)piStack_11c);
  StreamReader_AccumulateStatus(apvStack_114 + -6,bVar2);
  arg0_00 = (**(code **)(*unaff_ESI + 0x24))();
  bVar2 = Stream_WriteUInt32(unaff_EDI,0,(uint)unaff_EBX);
  StreamReader_AccumulateStatus(apvStack_114 + -7,bVar2);
  uVar7 = (**(code **)(*unaff_EDI + 0x24))();
  bVar2 = Stream_WriteUInt32(stream,0,(uint)unaff_ESI);
  StreamReader_AccumulateStatus(&puStack_134,bVar2);
  pvVar8 = ObjectRegistry_GetGlobal();
  uVar9 = FUN_00938290(pvVar8,(int)&puStack_134,apvStack_104,apvStack_114,&puStack_f4);
  if ((char)uVar9 == '\0') {
    StreamReader_ReleaseAuxiliary(&puStack_134);
    ppuStack_e4 = &PTR_FUN_00fb6c00;
    if (puStack_e0 != (undefined4 *)0x0) {
      MemoryBacking_ReleaseReference(puStack_e0);
    }
    ppuStack_e4 = &PTR_LAB_00faaa04;
    if (puStack_f4 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(puStack_f4);
    }
    if (apvStack_114[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_114[0]);
    }
    if (apvStack_104[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_104[0]);
      return 0;
    }
  }
  else {
    ResourceReferences_ConstructContext(auStack_a0,0);
    uVar5 = FUN_0099f220(apvStack_114,auStack_a0);
    if ((char)uVar5 == '\0') {
      FUN_007d6890((int)auStack_a0);
      StreamReader_ReleaseAuxiliary(&puStack_134);
      ppuStack_e4 = &PTR_FUN_00fb6c00;
      if (puStack_e0 != (undefined4 *)0x0) {
        MemoryBacking_ReleaseReference(puStack_e0);
      }
      ppuStack_e4 = &PTR_LAB_00faaa04;
      if (puStack_f4 != (undefined4 *)0x0) {
        Memory_FreeIfNonNull(puStack_f4);
      }
      if (apvStack_114[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_114[0]);
      }
      if (apvStack_104[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_104[0]);
        return 0;
      }
    }
    else {
      piStack_11c = DAT_011ea6a4;
      FUN_004afe80();
      FUN_007d7900(&piStack_b8);
      uVar5 = FUN_009a16e0(piStack_11c,&piStack_b8);
      if ((char)uVar5 == '\0') {
        StreamReader_ReleaseAuxiliary(&piStack_b8);
        FUN_007d6890((int)auStack_a0);
        StreamReader_ReleaseAuxiliary(&puStack_134);
        ppuStack_e4 = &PTR_FUN_00fb6c00;
        if (puStack_e0 != (undefined4 *)0x0) {
          MemoryBacking_ReleaseReference(puStack_e0);
        }
        ppuStack_e4 = &PTR_LAB_00faaa04;
        if (puStack_f4 != (undefined4 *)0x0) {
          Memory_FreeIfNonNull(puStack_f4);
        }
        if (apvStack_114[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_114[0]);
        }
        if (apvStack_104[0] != (void *)0x0) {
          Memory_FreeIfNonNull(apvStack_104[0]);
          return 0;
        }
      }
      else {
        FUN_009daad0(apvStack_114,piStack_b8);
        StreamReader_ReleaseAuxiliary(&piStack_b8);
        uVar9 = StreamContext_GetPositionAndMarkNegative(&puStack_134);
        Stream_BackpatchUInt32(&puStack_134,uVar7,uVar9);
        (**(code **)(*piStack_118 + 0x70))(uStack_10,&piStack_11c,&piStack_118);
        cVar3 = (*(code *)puStack_f0[0xe])(unaff_EDI,unaff_ESI);
        if (cVar3 == '\0') {
          FUN_007d6890((int)auStack_b4);
          StreamReader_ReleaseAuxiliary(apvStack_114 + -0xd);
          ppuStack_f8 = &PTR_FUN_00fb6c00;
          if (puStack_f4 != (undefined4 *)0x0) {
            MemoryBacking_ReleaseReference(puStack_f4);
          }
          ppuStack_f8 = &PTR_LAB_00faaa04;
          if (pvStack_108 != (void *)0x0) {
            Memory_FreeIfNonNull(pvStack_108);
          }
          if (unaff_EDI != (int *)0x0) {
            Memory_FreeIfNonNull(unaff_EDI);
          }
          if (piStack_118 != (int *)0x0) {
            Memory_FreeIfNonNull(piStack_118);
            return 0;
          }
        }
        else {
          uVar7 = StreamContext_GetPositionAndMarkNegative(apvStack_114 + -0xd);
          Stream_BackpatchUInt32(apvStack_114 + -0xd,uVar6,uVar7);
          cVar3 = FUN_007d8a00(&piStack_118,(int)(apvStack_114 + -0xd));
          if (cVar3 == '\0') {
            FUN_007d6890((int)auStack_b4);
            StreamReader_ReleaseAuxiliary(apvStack_114 + -0xd);
            FUN_00455b30(&ppuStack_f8);
            if (pvStack_108 != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_108);
            }
            if (unaff_EDI != (int *)0x0) {
              Memory_FreeIfNonNull(unaff_EDI);
            }
            if (piStack_118 != (int *)0x0) {
              Memory_FreeIfNonNull(piStack_118);
              return 0;
            }
          }
          else {
            uVar6 = StreamContext_GetPositionAndMarkNegative(apvStack_114 + -0xd);
            Stream_BackpatchUInt32(apvStack_114 + -0xd,arg0,uVar6);
            cVar3 = FUN_007d8a00(apvStack_114 + -5,(int)(apvStack_114 + -0xd));
            if (cVar3 == '\0') {
              FUN_007d6890((int)auStack_b4);
              StreamReader_ReleaseAuxiliary(apvStack_114 + -0xd);
              FUN_00455b30(&ppuStack_f8);
              if (pvStack_108 != (void *)0x0) {
                Memory_FreeIfNonNull(pvStack_108);
              }
              if (unaff_EDI != (int *)0x0) {
                Memory_FreeIfNonNull(unaff_EDI);
              }
              if (piStack_118 != (int *)0x0) {
                Memory_FreeIfNonNull(piStack_118);
                return 0;
              }
            }
            else {
              uVar6 = StreamContext_GetPositionAndMarkNegative(apvStack_114 + -0xd);
              Stream_BackpatchUInt32(apvStack_114 + -0xd,arg0_00,uVar6);
              cVar3 = FUN_00934880(&pvStack_108,apvStack_114 + -0xd);
              if (cVar3 != '\0') {
                pvVar8 = DownloadContent_GetOwnerFromGlobalLink();
                pvVar8 = (void *)FUN_00982c40((int)pvVar8);
                uVar11 = FUN_009b0280(pvVar8,piVar4);
                FUN_007d6890((int)auStack_b4);
                StreamReader_ReleaseAuxiliary(apvStack_114 + -0xd);
                FUN_00455b30(&ppuStack_f8);
                if (pvStack_108 != (void *)0x0) {
                  Memory_FreeIfNonNull(pvStack_108);
                }
                if (unaff_EDI != (int *)0x0) {
                  Memory_FreeIfNonNull(unaff_EDI);
                }
                if (piStack_118 != (int *)0x0) {
                  Memory_FreeIfNonNull(piStack_118);
                }
                return uVar11;
              }
              FUN_007d6890((int)auStack_b4);
              StreamReader_ReleaseAuxiliary(apvStack_114 + -0xd);
              FUN_00455b30(&ppuStack_f8);
              if (pvStack_108 != (void *)0x0) {
                Memory_FreeIfNonNull(pvStack_108);
              }
              if (unaff_EDI != (int *)0x0) {
                Memory_FreeIfNonNull(unaff_EDI);
              }
              if (piStack_118 != (int *)0x0) {
                Memory_FreeIfNonNull(piStack_118);
              }
            }
          }
        }
      }
    }
  }
  return 0;
}

