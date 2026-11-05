/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eb78 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  Utf_EncodeWideBufferReportedLength((LPWSTR)auStack_104,0x100,pWVar2,0xffffffff);
  uVar3 = FUN_0057a7c0((char *)auStack_104,(uint *)0x0);
  return uVar3;
}

