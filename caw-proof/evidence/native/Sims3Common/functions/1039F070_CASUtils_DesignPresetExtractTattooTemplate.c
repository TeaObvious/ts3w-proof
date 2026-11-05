/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_DesignPresetExtractTattooTemplate.
   Export ordinal(s): 80. Entry VA: 0x1039f070. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600048B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_DesignPresetExtractTattooTemplate(undefined4 param_1)

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
  
                    /* 0x39f070  80  CASUtils_DesignPresetExtractTattooTemplate */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 != (LPCWSTR)0x0) && (pWVar3 != (LPCWSTR)0x0)) {
    FUN_103ba880(auStack_c8);
    FUN_103bae20(auStack_c8,pWVar2);
    FUN_103ba880(auStack_68);
    FUN_103bae20(auStack_68,pWVar3);
    FUN_103f05a0("Layer%dMask",3,param_1,1,auStack_68,auStack_c8);
    uVar4 = 0;
    do {
      FUN_103f05a0(*(undefined4 *)((int)&PTR_s_Layer_dColorR_10c27380 + uVar4),2,param_1,1,
                   auStack_68,auStack_c8);
      uVar4 = uVar4 + 4;
    } while (uVar4 < 0x10);
    pcStack_ec = "CAS/Host";
    ppuStack_f0 = (undefined **)&DAT_10ca8246;
    FUN_103baae0(auStack_c8,(undefined4 *)&stack0xffffff08);
    appuStack_e8[0] = &PTR_FUN_10aca5b4;
    uStack_de = 0x13;
    uStack_e0 = 0xb;
    FUN_10928b90(appuStack_e8,0x13,9,&stack0xffffff08,0x10,1);
    (**(code **)(*piVar1 + 0x50))(appuStack_e8,&stack0xffffff04);
    ppuStack_f0 = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_e8[0] & 4) != 0) {
      FUN_10928a90(&ppuStack_f0,'\0');
    }
    if ((2 < (int)((int)&_Dst_10ca8244 - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_10918e90(unaff_EDI);
    }
    FUN_103baaa0(auStack_70);
    FUN_103baaa0(auStack_d0);
    return param_1;
  }
  return 0;
}

