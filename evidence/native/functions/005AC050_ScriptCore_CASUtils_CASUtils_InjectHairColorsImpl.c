/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005ac2ec) */
/* WARNING: Removing unreachable block (ram,0x005ac2f0) */
/* Verified PC 1.67 registration table at 0x01156740 (original PC 1.67 TS3W.exe).
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
  int *piVar3;
  LPCWSTR pWVar4;
  int *piVar5;
  int iVar6;
  uint uVar7;
  undefined4 uVar8;
  void *unaff_ESI;
  uint unaff_retaddr;
  undefined4 in_stack_0000004c;
  int in_stack_00000050;
  undefined4 uStack_fc;
  char *pcStack_f8;
  undefined1 **ppuStack_f4;
  int iStack_f0;
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
  int iStack_4;
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar4 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))();
  if (pWVar4 == (LPCWSTR)0x0) {
    return (undefined1 **)0x0;
  }
  if ((unaff_retaddr & 0xff000000) == 0x35000000) {
    piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar6 = (**(code **)(*piVar5 + 0xcc))();
    if (iVar6 != 0) {
      (**(code **)(*piVar3 + 0x6c))(in_stack_0000004c,&uStack_fc);
      if (3 < iStack_f0) {
        FUN_005bfac0(auStack_74);
        FUN_005c0060(auStack_74,pWVar4);
        bVar2 = false;
        bVar1 = true;
        iVar6 = 0;
        do {
          if (bVar2) {
LAB_005ac13c:
            if ((bVar1) &&
               (uVar8 = FUN_005bf290(auStack_74,
                                     *(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar6),2,
                                     *(undefined4 *)(iVar6 + in_stack_00000050),0),
               (char)uVar8 != '\0')) {
              bVar1 = true;
            }
            else {
              bVar1 = false;
            }
          }
          else {
            uVar7 = FUN_005bf470(auStack_74,*(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar6),
                                 &uStack_b8,&ppuStack_f4);
            if (((char)uVar7 != '\0') &&
               (ppuStack_f4 != *(undefined1 ***)(iVar6 + in_stack_00000050))) {
              bVar2 = true;
              goto LAB_005ac13c;
            }
          }
          iVar6 = iVar6 + 4;
        } while (iVar6 < 0x10);
        if (bVar2) {
          if ((bVar1) && (uVar7 = FUN_005bef50((int)auStack_74), (char)uVar7 != '\0')) {
            uStack_c0 = uStack_c;
            aiStack_c8[0] = iStack_4;
            ppuStack_bc = ppuStack_8;
            uVar7 = FUN_005bef60(auStack_74,unaff_ESI,aiStack_c8);
            if ((char)uVar7 != '\0') {
              uStack_fc = 0;
              pcStack_f8 = "CAS/Host";
              uVar8 = FUN_005c0310(auStack_74,(int *)&stack0xfffffefc,0,'\0');
              if ((char)uVar8 != '\0') {
                pcStack_dc = "CAS/Host";
                puStack_e8 = &DAT_011c8e54;
                puStack_e4 = &DAT_011c8e54;
                puStack_e0 = &DAT_011c8e56;
                FUN_005bfd20(auStack_74,&puStack_e8);
                FUN_005ab2a0(abStack_94,&puStack_e8);
                (**(code **)(*piVar3 + 0x50))(abStack_94,auStack_ec);
                appuStack_9c[0] = &PTR_FUN_00fba6f4;
                if ((abStack_94[0] & 4) != 0) {
                  FUN_004f5760(appuStack_9c,'\0');
                }
                if ((2 < (int)((int)puStack_e8 - iStack_f0 & 0xfffffffeU)) && (iStack_f0 != 0)) {
                  FUN_004e44e0(iStack_f0);
                }
                FUN_005ab2d0((int *)&stack0xfffffef4);
                goto LAB_005ac3b6;
              }
              FUN_005ab2d0((int *)&stack0xfffffefc);
            }
          }
          FUN_005bfce0(auStack_74);
          return (undefined1 **)0x0;
        }
        aiStack_d8[0] = 0;
        aiStack_d8[1] = 0;
        aiStack_d8[2] = 0;
        pcStack_cc = "CAS/Host";
        FUN_0040b590(aiStack_d8,pWVar4);
        appuStack_b4[0] = &PTR_FUN_0100886c;
        uStack_aa = 0x13;
        uStack_ac = 0xb;
        FUN_004f59c0(appuStack_b4,0x13,9,aiStack_d8,0x10,1);
        (**(code **)(*piVar3 + 0x50))(appuStack_b4,&stack0xfffffef4);
        ppuStack_bc = &PTR_FUN_00fba6f4;
        if (((uint)appuStack_b4[0] & 4) != 0) {
          FUN_004f5760(&ppuStack_bc,'\0');
        }
        ppuStack_f4 = &puStack_e4;
        if ((2 < (int)(aiStack_d8[0] - (int)puStack_e0 & 0xfffffffeU)) &&
           (puStack_e0 != (undefined2 *)0x0)) {
          FUN_004e44e0((int)puStack_e0);
        }
LAB_005ac3b6:
        FUN_005bfce0(auStack_7c);
        return ppuStack_f4;
      }
    }
  }
  return (undefined1 **)0x0;
}

