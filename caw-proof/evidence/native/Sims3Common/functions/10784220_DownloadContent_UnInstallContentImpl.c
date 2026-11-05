/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_UnInstallContentImpl. Export
   ordinal(s): 414. Entry VA: 0x10784220. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011C8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl DownloadContent_UnInstallContentImpl(undefined4 param_1)

{
  int *piVar1;
  ushort *puVar2;
  void *this;
  uint uVar3;
  int iVar4;
  
                    /* 0x784220  414  DownloadContent_UnInstallContentImpl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    puVar2 = (ushort *)(**(code **)(*piVar1 + 0x58))(param_1);
    FUN_10934a30(&stack0xffffffec,puVar2,0x10);
    this = (void *)FUN_107744c0();
    if (this != (void *)0x0) {
      uVar3 = FUN_107806d0(this,(_GUID *)&stack0xffffffec,2,'\x01','\0');
      iVar4 = FUN_1079f8e0();
      if (iVar4 != 0) {
        FUN_1079f920(iVar4);
      }
      return uVar3;
    }
  }
  return 1;
}

