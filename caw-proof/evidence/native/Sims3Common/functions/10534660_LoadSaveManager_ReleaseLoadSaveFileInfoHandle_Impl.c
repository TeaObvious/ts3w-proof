/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl. Export ordinal(s): 1892. Entry VA:
   0x10534660. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000032. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  
                    /* 0x534660  1892  LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl */
  piVar2 = (int *)FUN_1055b120();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xd8))(param_1);
  if ((puVar3 != (undefined4 *)0x0) && (iVar1 = puVar3[1], puVar3[1] = iVar1 + -1, iVar1 + -1 == 0))
  {
    puVar3[1] = 1;
    puVar3 = (undefined4 *)(**(code **)*puVar3)(1);
  }
  return CONCAT31((int3)((uint)puVar3 >> 8),1);
}

