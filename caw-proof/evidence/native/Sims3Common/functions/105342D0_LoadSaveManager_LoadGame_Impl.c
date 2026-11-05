/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_LoadGame_Impl. Export ordinal(s):
   1889. Entry VA: 0x105342d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600002D. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl LoadSaveManager_LoadGame_Impl(undefined4 param_1)

{
  bool bVar1;
  int *piVar2;
  void *this;
  undefined4 *puVar3;
  
                    /* 0x5342d0  1889  LoadSaveManager_LoadGame_Impl */
  piVar2 = (int *)FUN_1055b120();
  if (piVar2 == (int *)0x0) {
    return false;
  }
  this = (void *)FUN_1006ee60();
  if (this != (void *)0x0) {
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar3 != (undefined4 *)0x0) {
      bVar1 = FUN_10074980(this,puVar3);
      return bVar1;
    }
  }
  return false;
}

