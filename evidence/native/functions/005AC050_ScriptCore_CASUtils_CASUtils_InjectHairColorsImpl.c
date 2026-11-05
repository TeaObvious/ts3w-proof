/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x005ac2ec) */
/* WARNING: Removing unreachable block (ram,0x005ac2f0) */
/* Verified PC 1.67 registration table at 0x01156740 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_InjectHairColorsImpl [assembly=ScriptCore token=0x060003A1; handle:
   System.UInt32, part: Sims3.SimIFace.CAS.CASPart, designPreset: System.String, colors:
   System.UInt32[]; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ** ScriptCore_CASUtils__CASUtils_InjectHairColorsImpl(void)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  int *piVar4;
  LPCWSTR pWVar5;
  int *piVar6;
  int iVar7;
  undefined4 uVar8;
  uint uVar9;
  void *unaff_ESI;
  uint unaff_retaddr;
  undefined4 in_stack_0000004c;
  int in_stack_00000050;
  int aiStack_114 [2];
  undefined4 uStack_fc;
  char *pcStack_f8;
  undefined1 **ppuStack_f4;
  void *pvStack_f0;
  undefined1 auStack_ec [4];
  undefined1 *puStack_e8;
  undefined1 *puStack_e4;
  undefined2 *puStack_e0;
  char *pcStack_dc;
  int aiStack_d8 [3];
  char *pcStack_cc;
  int aiStack_c8 [2];
  undefined4 uStack_c0;
  undefined **ppuStack_bc;
  uint uStack_b8;
  undefined **appuStack_b4 [2];
  undefined2 uStack_ac;
  undefined2 uStack_aa;
  undefined **appuStack_9c [2];
  byte abStack_94 [24];
  undefined4 auStack_7c [2];
  undefined4 auStack_74 [26];
  undefined4 uStack_c;
  undefined **ppuStack_8;
  undefined4 uStack_4;
  
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar5 = (LPCWSTR)(**(code **)(*piVar4 + 0x58))();
  if (pWVar5 == (LPCWSTR)0x0) {
    return (undefined1 **)0x0;
  }
  if ((unaff_retaddr & 0xff000000) == 0x35000000) {
    piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar7 = (**(code **)(*piVar6 + 0xcc))();
    if (iVar7 != 0) {
      (**(code **)(*piVar4 + 0x6c))(in_stack_0000004c,&uStack_fc);
      if (3 < (int)pvStack_f0) {
        DesignPreset_InitializeEmpty(auStack_74);
        FUN_005c0060(auStack_74,pWVar5);
        bVar1 = false;
        bVar3 = true;
        iVar7 = 0;
        do {
          if (bVar1) {
LAB_005ac13c:
            if ((bVar3) &&
               (uVar8 = FUN_005bf290(auStack_74,
                                     *(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar7),2,
                                     *(undefined4 *)(iVar7 + in_stack_00000050),0),
               (char)uVar8 != '\0')) {
              bVar3 = true;
            }
            else {
              bVar3 = false;
            }
          }
          else {
            bVar2 = PresetProperty_ReadWordByName
                              (auStack_74,*(char **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar7),
                               &uStack_b8,(uint *)&ppuStack_f4);
            if ((bVar2) && (ppuStack_f4 != *(undefined1 ***)(iVar7 + in_stack_00000050))) {
              bVar1 = true;
              goto LAB_005ac13c;
            }
          }
          iVar7 = iVar7 + 4;
        } while (iVar7 < 0x10);
        if (bVar1) {
          if ((bVar3) && (uVar9 = FUN_005bef50((int)auStack_74), (char)uVar9 != '\0')) {
            uStack_c0 = uStack_c;
            aiStack_c8[0] = uStack_4;
            ppuStack_bc = ppuStack_8;
            uVar9 = FUN_005bef60(auStack_74,unaff_ESI,aiStack_d8 + 4);
            if ((char)uVar9 != '\0') {
              uStack_fc = 0;
              pcStack_f8 = "CAS/Host";
              bVar3 = ComplateNative_BuildPrograms
                                (auStack_74,(undefined *)(aiStack_114 + 4),0,false);
              if (bVar3) {
                pcStack_dc = "CAS/Host";
                puStack_e8 = &DAT_011c8e54;
                puStack_e4 = &DAT_011c8e54;
                puStack_e0 = &DAT_011c8e56;
                FUN_005bfd20(auStack_74,&puStack_e8);
                FUN_005ab2a0(abStack_94,&puStack_e8);
                (**(code **)(*piVar4 + 0x50))(abStack_94,auStack_ec);
                appuStack_9c[0] = &PTR_FUN_00fba6f4;
                if ((abStack_94[0] & 4) != 0) {
                  FUN_004f5760(appuStack_9c,'\0');
                }
                if ((2 < (int)((int)puStack_e8 - (int)pvStack_f0 & 0xfffffffeU)) &&
                   (pvStack_f0 != (void *)0x0)) {
                  Memory_FreeIfNonNull(pvStack_f0);
                }
                FUN_005ab2d0(aiStack_114 + 2);
                goto LAB_005ac3b6;
              }
              FUN_005ab2d0(aiStack_114 + 4);
            }
          }
          FUN_005bfce0(auStack_74);
          return (undefined1 **)0x0;
        }
        aiStack_d8[0] = 0;
        aiStack_d8[1] = 0;
        aiStack_d8[2] = 0;
        pcStack_cc = "CAS/Host";
        FUN_0040b590(aiStack_d8,pWVar5);
        appuStack_b4[0] = &PTR_FUN_0100886c;
        uStack_aa = 0x13;
        uStack_ac = 0xb;
        FUN_004f59c0(appuStack_b4,0x13,9,aiStack_d8,0x10,1);
        (**(code **)(*piVar4 + 0x50))(appuStack_b4,aiStack_114 + 2);
        ppuStack_bc = &PTR_FUN_00fba6f4;
        if (((uint)appuStack_b4[0] & 4) != 0) {
          FUN_004f5760(&ppuStack_bc,'\0');
        }
        ppuStack_f4 = &puStack_e4;
        if ((2 < (int)(aiStack_d8[0] - (int)puStack_e0 & 0xfffffffeU)) &&
           (puStack_e0 != (undefined2 *)0x0)) {
          Memory_FreeIfNonNull(puStack_e0);
        }
LAB_005ac3b6:
        FUN_005bfce0(auStack_7c);
        return ppuStack_f4;
      }
    }
  }
  return (undefined1 **)0x0;
}

