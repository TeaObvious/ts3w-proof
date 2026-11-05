/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156798 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_InjectTattooColors [assembly=ScriptCore token=0x06000399; pPreset:
   System.String, colors: System.UInt32[], colorIndex: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined2 * ScriptCore_CASUtils__CASUtils_InjectTattooColors(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 uStack_a8;
  undefined **ppuStack_98;
  int iStack_94;
  undefined **appuStack_90 [2];
  undefined2 uStack_88;
  undefined2 uStack_86;
  undefined4 auStack_78 [2];
  undefined4 auStack_70 [27];
  undefined4 uStack_4;
  
  uStack_a8 = 0x5f6cdd;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_a8 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 != (LPCWSTR)0x0) {
    (**(code **)(*piVar1 + 0x6c))(param_1);
    if (&stack0xffffff60 != (undefined1 *)0x0) {
      FUN_005bfac0(auStack_70);
      FUN_005c0060(auStack_70,pWVar2);
      iVar3 = 0;
      if (0 < (int)&stack0xffffff60) {
        do {
          FUN_005f6be0(auStack_70,(&PTR_s_Layer_dColorR_01158d40)[iVar3],uStack_4,
                       *(undefined4 *)(iStack_94 + iVar3 * 4));
          iVar3 = iVar3 + 1;
        } while (iVar3 < (int)&stack0xffffff60);
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
      if ((2 < (int)&DAT_011c8e54 - (int)&stack0xffffff60) &&
         (&stack0xffffff60 != (undefined1 *)0x0)) {
        FUN_004e44e0((int)&stack0xffffff60);
      }
      FUN_005bfce0(auStack_78);
      return &uStack_88;
    }
  }
  return (undefined2 *)0x0;
}

