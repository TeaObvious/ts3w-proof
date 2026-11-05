/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eb80 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_GetClipInstanceIdForAges [assembly=ScriptCore token=0x06000DC3;
   clipName: System.String, ageHashX: System.UInt32, ageHashY: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_Animation__Animation_GetClipInstanceIdForAges(int param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  longlong lVar3;
  ulonglong uVar4;
  undefined8 uVar5;
  uint uVar6;
  uint auStack_10c [2];
  WCHAR aWStack_104 [130];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  Utf_EncodeWideBufferReportedLength(aWStack_104,0x100,pWVar2,0xffffffff);
  lVar3 = FUN_00579b90(param_1,param_2);
  uVar4 = FUN_0057a7c0((char *)aWStack_104,auStack_10c + -2);
  uVar6 = (uint)((ulonglong)lVar3 >> 0x20);
  uVar5 = FUN_00579bd0(0,0,(uint)lVar3,uVar6);
  FUN_00579bd0((uint)uVar4,(uint)(uVar4 >> 0x20),(uint)lVar3,uVar6);
  return uVar5;
}

