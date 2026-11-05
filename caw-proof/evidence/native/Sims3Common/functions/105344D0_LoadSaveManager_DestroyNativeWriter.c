/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_DestroyNativeWriter. Export
   ordinal(s): 1884. Entry VA: 0x105344d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000036. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl LoadSaveManager_DestroyNativeWriter(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  
                    /* 0x5344d0  1884  LoadSaveManager_DestroyNativeWriter */
  if ((param_1 >> 0x18 == 0x42) || (param_1 >> 0x18 == 0x44)) {
    piVar1 = (int *)FUN_1055b120();
    puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (puVar2 != (undefined4 *)0x0) {
      FUN_105c7170(puVar2);
      FUN_10918e90((int)puVar2);
    }
  }
  return;
}

