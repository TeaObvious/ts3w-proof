/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156790 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_ExtractTattooColors [assembly=ScriptCore token=0x0600039A; pPreset:
   System.String, colorIndex: System.UInt32; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_CASUtils__CASUtils_ExtractTattooColors(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  undefined4 uStack_7c;
  uint uStack_78;
  undefined4 auStack_74 [4];
  undefined4 auStack_64 [25];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  iVar5 = 0;
  FUN_005bfac0(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  uStack_78 = 7;
  uVar4 = 0;
  do {
    FUN_005bf000(auStack_64,*(byte **)((int)&PTR_s_ColorREnabled_01158d50 + uVar4),&uStack_78,
                 &stack0xffffff83);
    uVar3 = FUN_005f6c50(auStack_64,*(undefined4 *)((int)&PTR_s_Layer_dColorR_01158d40 + uVar4));
    *(undefined4 *)((int)auStack_74 + uVar4) = uVar3;
    uVar4 = uVar4 + 4;
    iVar5 = iVar5 + 1;
  } while (uVar4 < 0x10);
  if (iVar5 != 0) {
    iVar6 = iVar5;
    (**(code **)(*piVar1 + 0x84))(&uStack_7c);
    (**(code **)(*piVar1 + 0x9c))(&stack0xffffff7c,&uStack_7c,0,iVar5);
    FUN_005bfce0(&uStack_7c);
    return iVar6;
  }
  FUN_005bfce0(auStack_64);
  return 0;
}

