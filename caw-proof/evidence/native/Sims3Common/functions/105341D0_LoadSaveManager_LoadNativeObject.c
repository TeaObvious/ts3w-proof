/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_LoadNativeObject. Export
   ordinal(s): 1890. Entry VA: 0x105341d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000033. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LoadSaveManager_LoadNativeObject(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x5341d0  1890  LoadSaveManager_LoadNativeObject */
  if ((param_1 & 0xff000000) == 0x41000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      uVar2 = (**(code **)(*piVar1 + 8))(param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

