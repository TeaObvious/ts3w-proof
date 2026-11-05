/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156738 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_DesignPresetReplaceHairColorsImpl [assembly=ScriptCore
   token=0x06000395; designPreset: System.String, colors: System.UInt32[]; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char * ScriptCore_CASUtils__CASUtils_DesignPresetReplaceHairColorsImpl(char *param_1)

{
  bool bVar1;
  bool bVar2;
  int *piVar3;
  LPCWSTR pWVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  undefined4 uStack_ec;
  undefined1 auStack_e8 [4];
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  char *pcStack_d4;
  uint uStack_d0;
  undefined1 *puStack_cc;
  undefined1 *puStack_c8;
  undefined2 *puStack_c4;
  char *pcStack_c0;
  undefined **ppuStack_bc;
  undefined1 auStack_b8 [4];
  undefined **ppuStack_b4;
  undefined1 auStack_b0 [4];
  undefined2 uStack_ac;
  undefined2 uStack_aa;
  undefined **appuStack_9c [2];
  undefined **appuStack_94 [2];
  undefined2 uStack_8c;
  undefined2 uStack_8a;
  undefined4 uStack_78;
  uint uStack_74;
  undefined1 auStack_70 [112];
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar4 = (LPCWSTR)(**(code **)(*piVar3 + 0x58))();
  if (pWVar4 != (LPCWSTR)0x0) {
    (**(code **)(*piVar3 + 0x6c))(param_1,&uStack_dc);
    if (3 < (int)ppuStack_bc) {
      DesignPreset_InitializeEmpty(auStack_70);
      FUN_005c0060(auStack_70,pWVar4);
      uStack_ec = (char *)((uint)auStack_b0 & 0xffffff);
      bVar1 = true;
      iVar7 = 0;
      do {
        if (uStack_ec._3_1_ == '\0') {
          bVar2 = PresetProperty_ReadWordByName
                            (auStack_70,*(char **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar7),
                             &uStack_74,&uStack_d0);
          if ((bVar2) && (uStack_d0 != *(uint *)(param_1 + iVar7))) {
            uStack_ec = (char *)CONCAT13(1,(undefined3)uStack_ec);
            goto LAB_005abea4;
          }
        }
        else {
LAB_005abea4:
          if ((bVar1) &&
             (uVar5 = FUN_005bf290(auStack_70,*(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar7)
                                   ,2,*(undefined4 *)(param_1 + iVar7),0), (char)uVar5 != '\0')) {
            bVar1 = true;
          }
          else {
            bVar1 = false;
          }
        }
        iVar7 = iVar7 + 4;
        if (0xf < iVar7) {
          if (uStack_ec._3_1_ == '\0') {
            uStack_dc = 0;
            uStack_d8 = 0;
            pcStack_d4 = "CAS/Host";
            FUN_0040b590(auStack_e8 + 8,pWVar4);
            ppuStack_b4 = &PTR_FUN_0100886c;
            uStack_aa = 0x13;
            uStack_ac = 0xb;
            FUN_004f59c0(&ppuStack_b4,0x13,9,auStack_e8 + 8,0x10,1);
            (**(code **)(*piVar3 + 0x50))(&ppuStack_b4,auStack_b8);
            uStack_ec = pcStack_c0;
            ppuStack_bc = &PTR_FUN_00fba6f4;
            if (((uint)ppuStack_b4 & 4) != 0) {
              FUN_004f5760(&ppuStack_bc,'\0');
            }
            uVar6 = -(int)param_1;
          }
          else {
            pcStack_c0 = "CAS/Host";
            puStack_cc = &DAT_011c8e54;
            puStack_c8 = &DAT_011c8e54;
            puStack_c4 = &DAT_011c8e56;
            FUN_005bfd20(auStack_70,&puStack_cc);
            appuStack_94[0] = &PTR_FUN_0100886c;
            uStack_8a = 0x13;
            uStack_8c = 0xb;
            FUN_004f59c0(appuStack_94,0x13,9,&puStack_cc,0x10,1);
            (**(code **)(*piVar3 + 0x50))(appuStack_94,auStack_e8 + 4);
            appuStack_9c[0] = &PTR_FUN_00fba6f4;
            if (((uint)appuStack_94[0] & 4) != 0) {
              FUN_004f5760(appuStack_9c,'\0');
            }
            uVar6 = (int)puStack_cc - (int)pcStack_d4;
            param_1 = pcStack_d4;
          }
          if ((2 < (int)(uVar6 & 0xfffffffe)) && (param_1 != (char *)0x0)) {
            Memory_FreeIfNonNull(param_1);
          }
          FUN_005bfce0(&uStack_78);
          return uStack_ec;
        }
      } while( true );
    }
  }
  return (char *)0x0;
}

