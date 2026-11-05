/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156760 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_ExtractEyebrowColorImpl [assembly=ScriptCore token=0x060003A5;
   designPreset: System.String; return=System.UInt32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_ExtractEyebrowColorImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  undefined4 uStack_78;
  undefined1 auStack_6c [4];
  uint uStack_68;
  undefined4 auStack_64 [25];
  
  uStack_78 = 0x5a777a;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_78 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return 0;
  }
  FUN_005bfac0(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  FUN_005bf470(auStack_64,(byte *)"Tint Color",&uStack_68,auStack_6c);
  (**(code **)(*piVar1 + 0x84))(&stack0xffffff90);
  uVar3 = 0;
  (**(code **)(*piVar1 + 0x9c))(&uStack_78,&stack0xffffff8c,0,1);
  FUN_005bfce0((undefined4 *)&stack0xffffff84);
  return uVar3;
}

