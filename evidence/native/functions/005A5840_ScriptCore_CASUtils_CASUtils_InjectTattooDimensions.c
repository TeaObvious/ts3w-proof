/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011567b8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_InjectTattooDimensions [assembly=ScriptCore token=0x0600039E;
   pPreset: System.String, dimensions: System.Single[]; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore_CASUtils__CASUtils_InjectTattooDimensions(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint unaff_EBP;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_a8;
  undefined **ppuStack_98;
  int iStack_94;
  undefined **appuStack_90 [2];
  undefined2 uStack_88;
  undefined2 uStack_86;
  undefined4 auStack_78 [2];
  undefined4 auStack_70 [28];
  
  uStack_a8 = 0x5f729d;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_a8 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return (undefined1 *)0x0;
  }
  (**(code **)(*piVar1 + 0x78))(param_1,&uStack_88);
  uVar3 = 4;
  if (3 < unaff_EBP) {
    FUN_005bfac0(auStack_70);
    FUN_005c0060(auStack_70,pWVar2);
    if (3 < unaff_EBP) {
      iVar5 = 1;
      iVar4 = 0;
      do {
        FUN_005f7070(auStack_70,iVar5,(undefined4 *)(iVar4 + iStack_94));
        uVar3 = uVar3 + 4;
        iVar4 = iVar4 + 0x10;
        iVar5 = iVar5 + 1;
      } while (uVar3 <= unaff_EBP);
    }
    ppuStack_98 = (undefined **)0xfdf90c;
    FUN_005bfd20(auStack_70,(undefined4 *)&stack0xffffff5c);
    appuStack_90[0] = &PTR_FUN_0100886c;
    uStack_86 = 0x13;
    uStack_88 = 0xb;
    FUN_004f59c0(appuStack_90,0x13,9,&stack0xffffff5c,0x10,1);
    (**(code **)(*piVar1 + 0x50))(appuStack_90,&uStack_a8);
    ppuStack_98 = &PTR_FUN_00fba6f4;
    if (((uint)appuStack_90[0] & 4) != 0) {
      FUN_004f5760(&ppuStack_98,'\0');
    }
    if ((2 < (int)((int)&DAT_011c8e54 - unaff_EBP & 0xfffffffe)) && (unaff_EBP != 0)) {
      FUN_004e44e0(unaff_EBP);
    }
    FUN_005bfce0(auStack_78);
    return &stack0xffffff60;
  }
  return (undefined1 *)0x0;
}

