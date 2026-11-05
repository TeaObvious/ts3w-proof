/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LoadSaveManager_GetCurrentGameGuid_Impl. Export
   ordinal(s): 1885. Entry VA: 0x10534320. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600002F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 LoadSaveManager_GetCurrentGameGuid_Impl(void)

{
  int iVar1;
  
                    /* 0x534320  1885  LoadSaveManager_GetCurrentGameGuid_Impl */
  iVar1 = FUN_1055b120();
  if (iVar1 != 0) {
    iVar1 = FUN_1006ee60();
    if (iVar1 != 0) {
      return *(undefined8 *)(iVar1 + 0x58);
    }
  }
  return 0;
}

