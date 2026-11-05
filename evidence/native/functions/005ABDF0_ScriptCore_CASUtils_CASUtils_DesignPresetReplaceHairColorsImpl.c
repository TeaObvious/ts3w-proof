/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156738 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_DesignPresetReplaceHairColorsImpl [assembly=ScriptCore
   token=0x06000395; designPreset: System.String, colors: System.UInt32[]; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char * ScriptCore_CASUtils__CASUtils_DesignPresetReplaceHairColorsImpl(char *param_1)

{
  bool bVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uStack_ec;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  char *pcStack_d4;
  int iStack_d0;
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
  undefined4 auStack_70 [28];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))();
  if (pWVar3 != (LPCWSTR)0x0) {
    (**(code **)(*piVar2 + 0x6c))(param_1,&uStack_dc);
    if (3 < (int)ppuStack_bc) {
      FUN_005bfac0(auStack_70);
      FUN_005c0060(auStack_70,pWVar3);
      uStack_ec = (char *)((uint)auStack_b0 & 0xffffff);
      bVar1 = true;
      iVar6 = 0;
      do {
        if (uStack_ec._3_1_ == '\0') {
          uVar4 = FUN_005bf470(auStack_70,*(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar6),
                               &uStack_74,&iStack_d0);
          if (((char)uVar4 != '\0') && (iStack_d0 != *(int *)(param_1 + iVar6))) {
            uStack_ec = (char *)CONCAT13(1,(undefined3)uStack_ec);
            goto LAB_005abea4;
          }
        }
        else {
LAB_005abea4:
          if ((bVar1) &&
             (uVar5 = FUN_005bf290(auStack_70,*(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar6)
                                   ,2,*(undefined4 *)(param_1 + iVar6),0), (char)uVar5 != '\0')) {
            bVar1 = true;
          }
          else {
            bVar1 = false;
          }
        }
        iVar6 = iVar6 + 4;
        if (0xf < iVar6) {
          if (uStack_ec._3_1_ == '\0') {
            uStack_dc = 0;
            uStack_d8 = 0;
            pcStack_d4 = "CAS/Host";
            FUN_0040b590(&stack0xffffff20,pWVar3);
            ppuStack_b4 = &PTR_FUN_0100886c;
            uStack_aa = 0x13;
            uStack_ac = 0xb;
            FUN_004f59c0(&ppuStack_b4,0x13,9,&stack0xffffff20,0x10,1);
            (**(code **)(*piVar2 + 0x50))(&ppuStack_b4,auStack_b8);
            uStack_ec = pcStack_c0;
            ppuStack_bc = &PTR_FUN_00fba6f4;
            if (((uint)ppuStack_b4 & 4) != 0) {
              FUN_004f5760(&ppuStack_bc,'\0');
            }
            uVar4 = -(int)param_1;
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
            (**(code **)(*piVar2 + 0x50))(appuStack_94,&stack0xffffff1c);
            appuStack_9c[0] = &PTR_FUN_00fba6f4;
            if (((uint)appuStack_94[0] & 4) != 0) {
              FUN_004f5760(appuStack_9c,'\0');
            }
            uVar4 = (int)puStack_cc - (int)pcStack_d4;
            param_1 = pcStack_d4;
          }
          if ((2 < (int)(uVar4 & 0xfffffffe)) && (param_1 != (char *)0x0)) {
            FUN_004e44e0((int)param_1);
          }
          FUN_005bfce0(&uStack_78);
          return uStack_ec;
        }
      } while( true );
    }
  }
  return (char *)0x0;
}

