/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_InstallContentImpl. Export
   ordinal(s): 395. Entry VA: 0x10784180. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011C7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

_GUID * __cdecl DownloadContent_InstallContentImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  void *this;
  int iVar3;
  _GUID *p_Var4;
  undefined1 auStack_414 [1044];
  
                    /* 0x784180  395  DownloadContent_InstallContentImpl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_10922390(auStack_414,(ushort *)pWVar2);
    FUN_109220b0(auStack_414,&stack0xfffff9ec,0x100);
    this = (void *)FUN_107744c0();
    if (this != (void *)0x0) {
      iVar3 = _wcsicmp((wchar_t *)&stack0xfffff9ec,(wchar_t *)PTR_DAT_10c4e7f4);
      if (iVar3 == 0) {
        p_Var4 = FUN_10781a20(this,pWVar2);
        return p_Var4;
      }
      p_Var4 = (_GUID *)FUN_1077ff10(this,pWVar2,(int *)0x0);
      return p_Var4;
    }
  }
  return (_GUID *)&DAT_00000001;
}

