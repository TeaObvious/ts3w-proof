/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161e98 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_GetActiveClipInfoImpl [assembly=ScriptCore token=0x06000D72;
   clipInfoHandle: System.IntPtr, index: System.UInt32, priority: System.UInt32&;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_SACS__SACS_GetActiveClipInfoImpl(int *param_1,uint param_2,undefined4 *param_3)

{
  uint uVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_25c;
  undefined **appuStack_258 [2];
  undefined2 uStack_250;
  undefined2 uStack_24e;
  int iStack_240;
  int aiStack_238 [4];
  LPCWSTR pWStack_228;
  LPCWSTR pWStack_224;
  undefined4 *puStack_220;
  undefined1 auStack_218 [256];
  undefined4 uStack_118;
  undefined1 *puStack_114;
  undefined1 *puStack_110;
  undefined4 *puStack_10c;
  undefined1 auStack_104 [256];
  undefined4 uStack_4;
  
  uVar1 = 0;
  if (param_1 != (int *)0x0) {
    uVar1 = (param_1[1] - *param_1) / 0x114;
  }
  pWStack_228 = (LPCWSTR)auStack_218;
  puStack_220 = &uStack_118;
  auStack_218[0] = 0;
  pWStack_224 = pWStack_228;
  if (param_2 < uVar1) {
    FUN_00768940(&pWStack_228,(undefined4 *)(param_2 * 0x114 + *param_1));
  }
  else {
    puStack_114 = auStack_104;
    puStack_10c = &uStack_4;
    auStack_104[0] = 0;
    uStack_4 = 10000;
    puStack_110 = puStack_114;
    FUN_0058f880(&pWStack_228,puStack_114,puStack_114);
    uStack_118 = uStack_4;
  }
  *param_3 = uStack_118;
  FUN_004f3b50(aiStack_238,pWStack_228,0xffffffff,"Animation/GetActiveClipInfo");
  appuStack_258[0] = &PTR_FUN_0100886c;
  uStack_24e = 0x13;
  uStack_250 = 0xb;
  FUN_004f59c0(appuStack_258,0x13,9,aiStack_238,0x10,1);
  uStack_25c = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar3 = &uStack_25c;
  (**(code **)(*piVar2 + 0x50))(appuStack_258);
  if (((uint)appuStack_258[0] & 4) != 0) {
    FUN_004f5760(&stack0xfffffda0,'\0');
  }
  if ((2 < (int)(aiStack_238[0] - iStack_240 & 0xfffffffeU)) && (iStack_240 != 0)) {
    FUN_004e44e0(iStack_240);
  }
  return puVar3;
}

