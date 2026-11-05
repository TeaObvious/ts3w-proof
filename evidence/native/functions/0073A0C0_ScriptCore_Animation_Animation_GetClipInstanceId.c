/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb78 (original PC 1.67 TS3W.exe).
   ScriptCore.Animation::Animation_GetClipInstanceId [assembly=ScriptCore token=0x06000DC2;
   clipName: System.String; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

ulonglong ScriptCore_Animation__Animation_GetClipInstanceId(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  ulonglong uVar3;
  undefined4 auStack_104 [65];
  
  auStack_104[0] = 0x73a0cb;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  auStack_104[0] = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  FUN_004f4690((LPWSTR)auStack_104,0x100,pWVar2,0xffffffff);
  uVar3 = FUN_0057a7c0((char *)auStack_104,(uint *)0x0);
  return uVar3;
}

