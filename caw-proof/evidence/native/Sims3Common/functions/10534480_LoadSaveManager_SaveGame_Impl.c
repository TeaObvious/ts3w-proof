/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_SaveGame_Impl. Export ordinal(s):
   1895. Entry VA: 0x10534480. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600002B. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl LoadSaveManager_SaveGame_Impl(int param_1,char param_2,char param_3)

{
  int *piVar1;
  void *this;
  undefined4 *puVar2;
  
                    /* 0x534480  1895  LoadSaveManager_SaveGame_Impl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return;
  }
  this = (void *)FUN_1006ee60();
  puVar2 = (undefined4 *)0x0;
  if (this != (void *)0x0) {
    if (param_1 != 0) {
      puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
      if (puVar2 == (undefined4 *)0x0) {
        return;
      }
    }
    FUN_10074500(this,puVar2,param_2,param_3);
  }
  return;
}

