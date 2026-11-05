/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156778 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_DesignPresetExtractTattooTemplate [assembly=ScriptCore
   token=0x06000397; pBaseTattooPreset: System.String, pCompositePreset: System.String, index:
   System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_CASUtils__CASUtils_DesignPresetExtractTattooTemplate(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  int unaff_EDI;
  undefined **ppuStack_f0;
  char *pcStack_ec;
  undefined **appuStack_e8 [2];
  undefined2 uStack_e0;
  undefined2 uStack_de;
  undefined4 auStack_d0 [2];
  undefined4 auStack_c8 [22];
  undefined4 auStack_70 [2];
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 != (LPCWSTR)0x0) && (pWVar3 != (LPCWSTR)0x0)) {
    FUN_005bfac0(auStack_c8);
    FUN_005c0060(auStack_c8,pWVar2);
    FUN_005bfac0(auStack_68);
    FUN_005c0060(auStack_68,pWVar3);
    FUN_005f6270("Layer%dMask",3,param_1,1,auStack_68,auStack_c8);
    uVar4 = 0;
    do {
      FUN_005f6270(*(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar4),2,param_1,1,
                   auStack_68,auStack_c8);
      uVar4 = uVar4 + 4;
    } while (uVar4 < 0x10);
    pcStack_ec = "CAS/Host";
    ppuStack_f0 = (undefined **)&DAT_011c8e56;
    FUN_005bfd20(auStack_c8,(undefined4 *)&stack0xffffff08);
    appuStack_e8[0] = &PTR_FUN_0100886c;
    uStack_de = 0x13;
    uStack_e0 = 0xb;
    FUN_004f59c0(appuStack_e8,0x13,9,&stack0xffffff08,0x10,1);
    (**(code **)(*piVar1 + 0x50))(appuStack_e8,&stack0xffffff04);
    ppuStack_f0 = &PTR_FUN_00fba6f4;
    if (((uint)appuStack_e8[0] & 4) != 0) {
      FUN_004f5760(&ppuStack_f0,'\0');
    }
    if ((2 < (int)((int)&DAT_011c8e54 - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_004e44e0(unaff_EDI);
    }
    FUN_005bfce0(auStack_70);
    FUN_005bfce0(auStack_d0);
    return param_1;
  }
  return 0;
}

