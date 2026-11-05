/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01156778 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *unaff_EDI;
  undefined1 auStack_104 [4];
  undefined1 auStack_f2 [2];
  undefined **ppuStack_f0;
  char *pcStack_ec;
  undefined **appuStack_e8 [2];
  undefined2 uStack_e0;
  undefined2 uStack_de;
  undefined4 auStack_d0 [2];
  undefined1 auStack_c8 [88];
  undefined4 auStack_70 [2];
  undefined1 auStack_68 [104];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 == (LPCWSTR)0x0) || (pWVar3 == (LPCWSTR)0x0)) {
    return 0;
  }
  DesignPreset_InitializeEmpty(auStack_c8);
  FUN_005c0060(auStack_c8,pWVar2);
  DesignPreset_InitializeEmpty(auStack_68);
  FUN_005c0060(auStack_68,pWVar3);
  FUN_005f6270("Layer%dMask",3,param_1,1,auStack_68,auStack_c8);
  uVar4 = 0;
  do {
    FUN_005f6270(*(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar4),2,param_1,1,auStack_68,
                 auStack_c8);
    uVar4 = uVar4 + 4;
  } while (uVar4 < 0x10);
  pcStack_ec = "CAS/Host";
  ppuStack_f0 = (undefined **)&DAT_011c8e56;
  FUN_005bfd20(auStack_c8,(undefined4 *)(auStack_f2 + -6));
  appuStack_e8[0] = &PTR_FUN_0100886c;
  uStack_de = 0x13;
  uStack_e0 = 0xb;
  FUN_004f59c0(appuStack_e8,0x13,9,auStack_f2 + -6,0x10,1);
  (**(code **)(*piVar1 + 0x50))(appuStack_e8,auStack_104 + 8);
  ppuStack_f0 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_e8[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_f0,'\0');
  }
  if ((2 < (int)((int)&DAT_011c8e54 - (int)unaff_EDI & 0xfffffffeU)) && (unaff_EDI != (void *)0x0))
  {
    Memory_FreeIfNonNull(unaff_EDI);
  }
  FUN_005bfce0(auStack_70);
  FUN_005bfce0(auStack_d0);
  return param_1;
}

