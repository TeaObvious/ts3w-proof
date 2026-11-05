/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156758 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_ExtractHairColorImpl [assembly=ScriptCore token=0x060003A4;
   designPreset: System.String; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_ExtractHairColorImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_84;
  uint uStack_78;
  undefined1 auStack_74 [16];
  undefined4 auStack_64 [25];
  
  uStack_84 = 0x5a76ca;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_84 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  FUN_005bfac0(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  iVar3 = 0;
  do {
    FUN_005bf470(auStack_64,*(byte **)((int)&PTR_s_Diffuse_Color_011561d4 + iVar3),&uStack_78,
                 auStack_74 + iVar3);
    iVar3 = iVar3 + 4;
  } while (iVar3 < 0x10);
  (**(code **)(*piVar1 + 0x84))(&stack0xffffff84,4);
  uVar4 = 0;
  (**(code **)(*piVar1 + 0x9c))(&uStack_84,&stack0xffffff84,0,4);
  FUN_005bfce0((undefined4 *)&stack0xffffff84);
  return uVar4;
}

