/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01181648 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.DownloadContent::DownloadContent_InstallContentImpl [assembly=ScriptCore
   token=0x060000E6; packageFile: System.String; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

_GUID * ScriptCore_DownloadContent__DownloadContent_InstallContentImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  void *this;
  int iVar3;
  _GUID *p_Var4;
  wchar_t awStack_60e [253];
  undefined1 auStack_414 [1044];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_004ee170(auStack_414,(ushort *)pWVar2);
    FUN_004ede30(auStack_414,awStack_60e + -3,0x100);
    this = DownloadContent_GetOwnerFromGlobalLink();
    if (this != (void *)0x0) {
      iVar3 = _wcsicmp(awStack_60e + -3,(wchar_t *)PTR_DAT_01181544);
      if (iVar3 == 0) {
        p_Var4 = FUN_00990350(this,pWVar2);
        return p_Var4;
      }
      p_Var4 = (_GUID *)FUN_0098e840(this,pWVar2,(int *)0x0);
      return p_Var4;
    }
  }
  return (_GUID *)0x1;
}

