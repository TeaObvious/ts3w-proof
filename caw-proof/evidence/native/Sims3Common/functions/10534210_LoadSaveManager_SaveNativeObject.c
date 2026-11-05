/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_SaveNativeObject. Export
   ordinal(s): 1896. Entry VA: 0x10534210. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000034. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LoadSaveManager_SaveNativeObject(uint param_1)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x534210  1896  LoadSaveManager_SaveNativeObject */
  if ((param_1 >> 0x18 == 0x42) || (param_1 >> 0x18 == 0x44)) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      uVar2 = (**(code **)(*piVar1 + 4))(param_1);
      return uVar2;
    }
  }
  return 0xffffffff;
}

